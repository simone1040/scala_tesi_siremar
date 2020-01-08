package utils

import org.apache.spark.sql.{DataFrame, SparkSession}

class GestoreConnection extends Object with SparkContext {
  def do_query(sql : String): DataFrame = {
    spark.read
        .format("jdbc")
        .option("url",Configuration.getInstance().getConnectionUrl())
        .option("query",sql)
        .option("user",Configuration.getInstance().getDbUser())
        .option("header", "true")
        .option("password",Configuration.getInstance().getDbPassword())
        .load()
  }

  def get_Session() : SparkSession = {
      return spark
  }
}


object GestoreConnection {
  private val _istance : GestoreConnection = new GestoreConnection()
  def getInstance() = _istance
}
