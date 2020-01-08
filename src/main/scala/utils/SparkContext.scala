package utils

import org.apache.spark.sql.SparkSession

trait SparkContext {
  private val master = "local[*]"
  private val appName = "Tesi Siremar"
  val spark : SparkSession = SparkSession.builder().master(master).appName(appName).getOrCreate()
  spark.sparkContext.setLogLevel("WARN")
  Class.forName("com.mysql.jdbc.Driver")
}
