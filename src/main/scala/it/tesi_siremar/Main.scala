package it.tesi_siremar
import controllers.Dataframe
import utils.Configuration

object Main{

  def main(args: Array[String]): Unit = {
    val usage =
      """
        |Error in usage:
        |-pre --> computazione dei mq occupati in base ai dati rilevati dalle prenotazioni
      """.stripMargin
    if(args.length != 1 ){
      print(usage)
      sys.exit(0)
    }
    else{
      if(args(0) == "-pre"){
        if(Dataframe.getInstance().checkDataset(Configuration.getInstance().get_prenotation_parquet_file())){
          Dataframe.getInstance().loadDataframe(Configuration.getInstance().get_prenotation_parquet_file())
        }
        else{
          val res : Boolean = Dataframe.getInstance().createPrenotationDataframe()
          if(res){
            print("Dataset Creato correttamente")
          }
          else{
            print(("Errore nella creazione del dataset"))
          }
        }
      }
      else{
        print(usage)
      }
    }
  }
}
