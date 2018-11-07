view: dpvhstgnditem {
  label: "Retail Sales"
  sql_table_name: ALOHA_DBO.DPVHSTGNDITEM ;;

#custom dimensions
  dimension: date_sk {
    type: number
    sql: concat(${dateofbusiness_year},concat(lpad(${dateofbusiness_month},2,0),lpad(${dateofbusiness_day_of_month},2,0))) ;;
    hidden: yes
  }

  dimension: unique_transaction {
    type: number
    sql: case when ${modcode} <> 1 then concat(${checknumber},concat(${fkstoreid},${date_sk})) else null end;;
    hidden: yes
  }

  dimension: data_last_updated_date {
    type: date_time
    sql: max(${_fivetran_synced_date}) ;;
    group_label: "Data Validation"
  }

  dimension: net_sales_column {
    type: number
    sql: case when ${discpric} is null then ${price} else ${discpric} end - ${incltax} ;;
    hidden: yes
  }

  #custom measures
  measure: net_sales {
    type: sum
    sql: ${net_sales_column};;
    filters: {
      field: modcode
      value: "not 1"
    }
    value_format_name: usd_0
    group_label: "Net Sales"
  }
    measure: net_tickets {
      type: count_distinct
      sql: ${unique_transaction} ;;
      group_label: "Net Tickets"
    }

  measure: avg_ticket {
    type: number
    sql: ${net_sales}/${net_tickets} ;;
    value_format_name: usd
    group_label: "Net Tickets"
  }

#stock dimensions below this line
  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: bohcontrolname {
    type: string
    sql: ${TABLE}."BOHCONTROLNAME" ;;
  }

  dimension: bohcontrolnameparent {
    type: string
    sql: ${TABLE}."BOHCONTROLNAMEPARENT" ;;
  }

  dimension: checknumber {
    type: string
    sql: ${TABLE}."CHECKNUMBER" ;;
  }

  dimension: conceptitemorder {
    type: string
    sql: ${TABLE}."CONCEPTITEMORDER" ;;
  }

  dimension_group: dateofbusiness {
    type: time
    timeframes: [
      raw,
      time,
      date,
      day_of_month,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATEOFBUSINESS" ;;
  }

  dimension_group: datetimestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATETIMESTAMP" ;;
  }

  dimension: discpric {
    type: number
    sql: ${TABLE}."DISCPRIC" ;;
  }

  dimension: eimporterfileguid {
    type: string
    sql: ${TABLE}."EIMPORTERFILEGUID" ;;
  }

  dimension: entryid {
    type: string
    sql: ${TABLE}."ENTRYID" ;;
  }

  dimension: excltax {
    type: number
    sql: ${TABLE}."EXCLTAX" ;;
  }

  dimension: familystyleportion {
    type: string
    sql: ${TABLE}."FAMILYSTYLEPORTION" ;;
  }

  dimension: fkcategoryid {
    type: string
    sql: ${TABLE}."FKCATEGORYID" ;;
  }

  dimension: fkdaypartid {
    type: string
    sql: ${TABLE}."FKDAYPARTID" ;;
  }

  dimension: fkemployeenumber {
    type: string
    sql: ${TABLE}."FKEMPLOYEENUMBER" ;;
  }

  dimension: fkitemid {
    type: string
    sql: ${TABLE}."FKITEMID" ;;
  }

  dimension: fkoccasionid {
    type: string
    sql: ${TABLE}."FKOCCASIONID" ;;
  }

  dimension: fkordermodeid {
    type: string
    sql: ${TABLE}."FKORDERMODEID" ;;
  }

  dimension: fkrevenueid {
    type: string
    sql: ${TABLE}."FKREVENUEID" ;;
  }

  dimension: fkstoreid {
    type: string
    sql: ${TABLE}."FKSTOREID" ;;
  }

  dimension: fktaxid {
    type: string
    sql: ${TABLE}."FKTAXID" ;;
  }

  dimension: fkterminalid {
    type: string
    sql: ${TABLE}."FKTERMINALID" ;;
  }

  dimension: fohuniquetableid {
    type: string
    sql: ${TABLE}."FOHUNIQUETABLEID" ;;
  }

  dimension: groupquickcomboid {
    type: string
    sql: ${TABLE}."GROUPQUICKCOMBOID" ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}."HOUR" ;;
  }

  dimension: houritemadded {
    type: string
    sql: ${TABLE}."HOURITEMADDED" ;;
  }

  dimension: importchecksum {
    type: string
    sql: ${TABLE}."IMPORTCHECKSUM" ;;
  }

  dimension: importid {
    type: string
    sql: ${TABLE}."IMPORTID" ;;
  }

  dimension: incltax {
    type: number
    sql: ${TABLE}."INCLTAX" ;;
  }

  dimension: itemcoursenumber {
    type: string
    sql: ${TABLE}."ITEMCOURSENUMBER" ;;
  }

  dimension: menupanel {
    type: string
    sql: ${TABLE}."MENUPANEL" ;;
  }

  dimension: minute {
    type: string
    sql: ${TABLE}."MINUTE" ;;
  }

  dimension: minuteitemadded {
    type: string
    sql: ${TABLE}."MINUTEITEMADDED" ;;
  }

  dimension: modcode {
    type: number
    sql: ${TABLE}."MODCODE" ;;
  }

  dimension: modifierfunctiontypes {
    type: string
    sql: ${TABLE}."MODIFIERFUNCTIONTYPES" ;;
  }

  dimension: orgprice {
    type: number
    sql: ${TABLE}."ORGPRICE" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."ORIGIN" ;;
  }

  dimension: parententryid {
    type: string
    sql: ${TABLE}."PARENTENTRYID" ;;
  }

  dimension: parentid {
    type: string
    sql: ${TABLE}."PARENTID" ;;
  }

  dimension: parentmodifierid {
    type: string
    sql: ${TABLE}."PARENTMODIFIERID" ;;
  }

  dimension: periodid {
    type: string
    sql: ${TABLE}."PERIODID" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."PRICE" ;;
  }

  dimension: qsquickcomboid {
    type: string
    sql: ${TABLE}."QSQUICKCOMBOID" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."QUANTITY" ;;
  }

  dimension: quantityunit {
    type: string
    sql: ${TABLE}."QUANTITYUNIT" ;;
  }

  dimension: revenuecenteritemorder {
    type: string
    sql: ${TABLE}."REVENUECENTERITEMORDER" ;;
  }

  dimension: seatnumber {
    type: string
    sql: ${TABLE}."SEATNUMBER" ;;
  }

  dimension: secondarytaxid {
    type: string
    sql: ${TABLE}."SECONDARYTAXID" ;;
  }

  dimension: seconditemadded {
    type: string
    sql: ${TABLE}."SECONDITEMADDED" ;;
  }

  dimension: substituteitemid {
    type: string
    sql: ${TABLE}."SUBSTITUTEITEMID" ;;
  }

  dimension_group: systemdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."SYSTEMDATE" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: uniqueid {
    type: string
    sql: ${TABLE}."UNIQUEID" ;;
    primary_key: yes
  }

  measure: count {
    type: count
    drill_fields: [bohcontrolname]
  }
}
