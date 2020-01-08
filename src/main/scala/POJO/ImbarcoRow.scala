package POJO
import java.sql.Timestamp

import org.apache.spark.sql.Row

class ImbarcoRow(row: Row) {
  private var tot_boardingcard_web_route_code : String = if (row.isNullAt(0)) "" else row.getString(0)
  private var route_cappelli_ship_code : String = if (row.isNullAt(1)) "" else row.getString(1)
  private var route_cappelli_departure_port_code : String = if (row.isNullAt(2)) "" else row.getString(2)
  private var route_cappelli_arrival_port_code : String = if (row.isNullAt(3)) "" else row.getString(3)
  private var route_cappelli_departure_timestamp : Timestamp = if (row.isNullAt(4)) null else row.getTimestamp(4)
  private var tot_boardingcard_web_detail_tot_boardingcard_web_id : Int = if (row.isNullAt(5)) 0 else row.getInt(5)
  private var tot_boardingcard_web_detail_collection_rfid_code : Int = if (row.isNullAt(6)) 0 else row.getInt(6)
  private var tot_boardingcard_web_detail_collection_quantity : Int = if (row.isNullAt(7)) 0 else row.getInt(7)


  def get_tot_boardingcard_web_route_code() : String = {
    tot_boardingcard_web_route_code
  }

  def get_route_cappelli_ship_code() : String = {
    route_cappelli_ship_code
  }


  def get_route_cappelli_departure_port_code() : String = {
    route_cappelli_departure_port_code
  }


  def get_route_cappelli_arrival_port_code() : String = {
    route_cappelli_arrival_port_code
  }

  def get_route_cappelli_departure_timestamp() : Timestamp = {
    route_cappelli_departure_timestamp
  }

  def get_tot_boardingcard_web_detail_tot_boardingcard_web_id() : Int = {
    tot_boardingcard_web_detail_tot_boardingcard_web_id
  }

  def get_tot_boardingcard_web_detail_collection_rfid_code() : Int = {
    tot_boardingcard_web_detail_collection_rfid_code
  }

  def get_tot_boardingcard_web_detail_collection_quantity() : Int = {
    tot_boardingcard_web_detail_collection_quantity
  }


}
