package utils

import org.apache.spark.sql.types.{StringType, IntegerType,StructField, StructType, TimestampType}

class Configuration private{
    private val db_host : String = "127.0.0.1"
    private val db_name : String = "tesi_siremar_smartTicketing"
    private val db_user : String = "root"
    private val db_password : String = "pillola96ct"
    private val DFS_ROOT : String = "hdfs://localhost:9000/"
    private val PRENOTATION_PARQUET_FILE : String = "tesi_siremar/siremar_prenotation.parquet" // dati dalle prenotazioni
    private val GARAGE_SPACE_PARQUET_FILE : String = "tesi_siremar/capienza_garage.parquet"
    private val PATH_TO_ASSETS : String = "./assets/"

    def get_path_assets_file(filename : String) : String = {
      PATH_TO_ASSETS+filename
    }

    def get_garage_space_parquet_file() : String = {
      DFS_ROOT + GARAGE_SPACE_PARQUET_FILE
    }

    def get_prenotation_parquet_file() : String = {
      DFS_ROOT + PRENOTATION_PARQUET_FILE
    }

    def getDbHost() : String = {
      db_host
    }

    def getDbName() : String = {
      db_name
  }

    def getDbUser() : String = {
      db_user
  }

    def getDbPassword() : String = {
      db_password
  }

  def getConnectionUrl() : String = {
    "jdbc:mysql://" + db_host + ":3306/" + db_name
  }

  def getTable(tab : String) : String = {
    db_name + "." + tab
  }
}

object Configuration {
  private val _istance = new Configuration
  def getInstance() = _istance
}
