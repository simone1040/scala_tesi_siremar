package models

import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.functions._
import utils.GestoreConnection

class PrenotazioniManager {

  def getPrenotazioniData() : DataFrame = {
    val table = "SELECT `booking_ticket_departure_timestamp`,`ship_code`,`ship_id`, `tab_port_departure`.`port_name` AS `departure_port_name`, `tab_port_arrival`.`port_name` AS `arrival_port_name`, " +
      "tab_boardingcard_category.boardingcard_category_id,tab_boardingcard_category.boardingcard_category_name,tab_ticket.ticket_trip_code,tab_ticket.ticket_departure_route_code,tab_ticket.ticket_arrival_route_code " +
      "FROM `tab_booking_ticket` " +
      "LEFT JOIN `tab_ship` ON `tab_ship`.`ship_code` = `tab_booking_ticket`.`booking_ticket_ship_code`" +
      "LEFT JOIN `tab_itinerary` ON `tab_itinerary`.`itinerary_code` = `tab_booking_ticket`.`booking_ticket_itinerary_code`" +
      "LEFT JOIN `tab_port` AS `tab_port_departure` ON `tab_port_departure`.`port_code` = `tab_booking_ticket`.`booking_ticket_departure_port_code`" +
      "LEFT JOIN `tab_port` AS `tab_port_arrival` ON `tab_port_arrival`.`port_code` = `tab_booking_ticket`.`booking_ticket_arrival_port_code`" +
      "LEFT JOIN `tab_booking_vehicle` ON `tab_booking_vehicle`.`booking_vehicle_booking_boardingcard_id` = `tab_booking_ticket`.`booking_ticket_id`" +
      "LEFT JOIN `tab_booking_accessory` ON `tab_booking_accessory`.`booking_accessory_booking_boardingcard_id` = `tab_booking_ticket`.`booking_ticket_id`" +
      "INNER JOIN `tab_boardingcard_category` ON `tab_boardingcard_category`.`boardingcard_category_code` = `tab_booking_vehicle`.`booking_vehicle_category_code` OR `tab_boardingcard_category`.`boardingcard_category_code` = `tab_booking_accessory`.`booking_accessory_category_code`" +
      "INNER JOIN `tab_ticket` ON `tab_ticket`.`ticket_number` = `tab_booking_ticket`.`booking_ticket_number` " +
      "WHERE booking_ticket_status = 'F'"
    var mysqlDF: DataFrame = null
    try{
      mysqlDF = GestoreConnection.getInstance().do_query(table)
    }
    catch{
      case x : Exception =>{
        println("Exception:",x.getMessage)
      }
    }
    mysqlDF
  }

  def getMaxCaricoNave() : DataFrame = {
    val table = "SELECT tab_metri_garage_navi.*,ship_name " +
      "FROM tab_metri_garage_navi " +
      "INNER JOIN tab_ship on tab_metri_garage_navi.ship_id = tab_ship.ship_id order by ship_id"
    var mysqlDF: DataFrame = null
    try{
      mysqlDF = GestoreConnection.getInstance().do_query(table)
    }
    catch{
      case x : Exception =>{
        println("Exception in getMaxCaricoNave --> ",x.getMessage)
      }
    }
    mysqlDF
  }


  def get_all_bording_category_mq_occupati() : DataFrame = {
    val table = "SELECT boardingcard_category_id,(boardingcard_category_lunghezza * boardingcard_category_larghezza + boardingcard_category_delta_larghezza) AS mq_occupati,boardingcard_category_s18 " +
      "FROM tab_boardingcard_category"
    var mysqlDF: DataFrame = null
    try{
      mysqlDF = GestoreConnection.getInstance().do_query(table)
    }
    catch{
      case x : Exception =>{
        println("Exception in get_VA_rfid_collection_code --> ",x.getMessage)
      }
    }
    mysqlDF
  }

}

object PrenotazioniManager{
  private val _istance : PrenotazioniManager = new PrenotazioniManager()
  def getInstance() = _istance
}
