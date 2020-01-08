package controllers

import models.PrenotazioniManager
import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.functions.sum
import utils.{Configuration, SparkContext}

class Dataframe extends Object with SparkContext {
  private var dataframe : DataFrame = null

  def createPrenotationDataframe() : Boolean = {
    var toRet : Boolean = false
    var dataframe_prenotation : DataFrame = PrenotazioniManager.getInstance().getPrenotazioniData()
    //DEVO FILTRARE IL DATAFRAME DELLE PRENOTAZIONI IN MODO DA AVERE SOLO QUELLE PER CUI HO I DATI DELLE METRATURA DEI GARAGE
    val interested_ship  : DataFrame = PrenotazioniManager.getInstance().getMaxCaricoNave().select("ship_id")
    if(dataframe_prenotation.count() > 0 && interested_ship.count() > 0){
      //FILTRO LE PRENOTAZIONI IN BASE ALLE NAVI CHE HO, DEFAULT È INNER
      dataframe = dataframe_prenotation.join(interested_ship,"ship_id")
      dataframe  = this.compute_mq_occupati(dataframe_prenotation)
      dataframe.write.parquet(Configuration.getInstance().get_prenotation_parquet_file())
      toRet = true
    }
    toRet
  }

  def compute_mq_occupati(dataFrame: DataFrame) : DataFrame = {
    val category_mq_occupati : DataFrame = PrenotazioniManager.getInstance().get_all_bording_category_mq_occupati()
    var merged_dataset : DataFrame = dataFrame.join(category_mq_occupati,"boardingcard_category_id")
    merged_dataset = merged_dataset.groupBy("booking_ticket_departure_timestamp","ticket_trip_code","ticket_departure_route_code","ticket_arrival_route_code","ship_code","departure_port_name","arrival_port_name","boardingcard_category_s18")
      .agg(sum("mq_occupati") as "tot_mq_occupati")
    merged_dataset
  }

  def loadDataframe(pathfile : String) : Unit = {
    try{
      dataframe = spark.read.parquet(pathfile)
    }
    catch {
      case x : Exception =>{
        print("Dataframe non esistente\n")
      }
    }
    print("Dataset caricato correttamente !\n")
  }

  def get_dataframe() : DataFrame = {
    dataframe
  }

  def checkDataset(filepath : String) : Boolean = {
    try{
      spark.read.parquet(filepath)
      true
    }
    catch {
      case x : Exception =>{
        print("Dataframe non esistente\n")
        false
      }
    }
  }
}

object Dataframe {
  private val _istance : Dataframe = new Dataframe()
  def getInstance() = _istance
}
