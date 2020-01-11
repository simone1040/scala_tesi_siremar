package controllers

import models.PrenotazioniManager
import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.functions.sum
import org.apache.spark.sql.types.{IntegerType, StringType, StructField, StructType}
import utils.{SparkContext}

class Dataframe extends Object with SparkContext {
  private var dataframe : DataFrame = null

  def createPrenotationDataframe() : Boolean = {
    var toRet : Boolean = false
    //Prendo le prenotazioni dal database
    var dataframe_prenotation : DataFrame = PrenotazioniManager.getInstance().getPrenotazioniData()
    //DEVO FILTRARE IL DATAFRAME DELLE PRENOTAZIONI IN MODO DA AVERE SOLO QUELLE PER CUI HO I DATI DELLE METRATURA DEI GARAGE
    val interested_ship  : DataFrame = PrenotazioniManager.getInstance().getMaxCaricoNave().select("ship_id")
    if(dataframe_prenotation.count() > 0 && interested_ship.count() > 0){
        dataframe  = this.compute_mq_occupati(dataframe_prenotation,interested_ship)
        //dataframe.write.parquet(Configuration.getInstance().get_prenotation_parquet_file())
        toRet = true
    }
    toRet
  }

  def compute_mq_occupati(dataFrame_prenotation: DataFrame,dataFrame_interested_ship : DataFrame) : DataFrame = {
    //Prendo per ogni categoria, quanti mq occupa
    val category_mq_occupati : DataFrame = PrenotazioniManager.getInstance().get_all_bording_category_mq_occupati()
    //FILTRO LE PRENOTAZIONI IN BASE ALLE NAVI CHE HO, DEFAULT È INNER
    var dataframe = dataFrame_prenotation.join(dataFrame_interested_ship,"ship_id")
    dataframe = dataframe.join(category_mq_occupati,"boardingcard_category_id")
    dataframe = dataframe.groupBy("booking_ticket_departure_timestamp","ticket_trip_code","ticket_departure_route_code","ticket_arrival_route_code","ship_code","departure_port_name","arrival_port_name","boardingcard_category_s18")
      .agg(sum("mq_occupati") as "tot_mq_occupati")
    dataframe
  }

  def compute_dataframe_from_route_cappelli(dataframe_route_cappelli: DataFrame,dataframe_application : DataFrame) = {
      val df : DataFrame = this.get_empty_final_dataframe()
      dataframe_route_cappelli.foreach(
        row => {
          print(row)
        }
      )
  }

  def get_empty_final_dataframe() : DataFrame = {
    val schema = StructType(
      List(
        StructField("booking_ticket_departure_timestamp", StringType, true),
        StructField("ship_code", StringType, true),
        StructField("departure_port_name", StringType, true),
        StructField("arrival_port_name", StringType, true),
        StructField("metri_garage_navi_spazio_totale", IntegerType, true),
        StructField("tot_mq_occupati", IntegerType, true)
      )
    )
    val df = spark.createDataFrame(schema)
    df
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
