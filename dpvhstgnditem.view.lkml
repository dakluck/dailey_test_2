view: dpvhstgnditem {
  view_label: "Related"
  label: "Retail Sales"
  sql_table_name: ALOHA_DBO.DPVHSTGNDITEM ;;

#custom dimensions
  dimension: date_sk {
    type: number
    sql: concat(${dateofbusiness_year},concat(lpad(${dateofbusiness_month_num},2,0),lpad(${dateofbusiness_day_of_month},2,0))) ;;
    hidden: no
  }

  dimension: unique_transaction {
    type: number
    sql: case when ${modcode} <> 1 then concat(${checknumber},concat(${fkstoreid},${date_sk})) else null end;;
    hidden: yes
  }

  dimension: data_last_updated_date {
    type: date
    sql: max(${_fivetran_synced_date}) ;;
    group_label: "Data Validation"
  }

  dimension: net_sales_column {
    type: number
    sql: case when ${discpric} is null then ${price} else ${discpric} end - ${incltax} ;;
    hidden: yes
  }

  dimension: discounts_column {
    type: number
    sql: case when ${discpric} is null then null else ${price}-${discpric} end ;;
    hidden: yes
  }

  #custom measures

  measure: gross_sales {
    type: sum
    sql: ${price};;
    filters: {
      field: modcode
      value: "not 1"
    }
    value_format_name: usd_0
    group_label: "Sales"
  }

  measure: discounts {
    type: sum
    sql: ${discounts_column};;
    filters: {
      field: modcode
      value: "not 1"
    }
    value_format_name: usd_0
    group_label: "Sales"
  }

  measure: inclusive_tax {
    type: sum
    sql: ${incltax} ;;
  filters: {
    field: modcode
    value: "not 1"
  }
  label: "Inclusive Tax"
  value_format_name: usd_0
  group_label: "Sales"
}

  measure: net_sales {
    type: sum
    sql: ${net_sales_column};;
    filters: {
      field: modcode
      value: "not 1"
    }
    value_format_name: usd_0
    group_label: "Sales"
  }

    measure: net_tickets {
      type: count_distinct
      sql: ${unique_transaction} ;;
      group_label: "Tickets"
    }

  measure: avg_ticket {
    type: number
    sql: ${net_sales}/${net_tickets} ;;
    value_format_name: usd
    group_label: "Tickets"
  }

  measure: units_sold {
    type: sum
    sql: ${quantity} ;;
    filters: {
      field: modcode
      value: "not 1"
    }
    group_label: "Units"
  }

  measure: avg_unit_price {
    type: number
    sql: ${units_sold}/${net_sales} ;;
    value_format_name: usd
    group_label: "Units"
  }

  measure: units_per_ticket {
    type: number
    sql: ${units_sold}/${net_tickets} ;;
    group_label: "Units"
  }



#stock dimensions below this line
  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
    hidden: yes
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
    hidden: yes
  }

  dimension: bohcontrolname {
    type: string
    sql: ${TABLE}."BOHCONTROLNAME" ;;
    group_label: "Unknown"
  }

  dimension: bohcontrolnameparent {
    type: string
    sql: ${TABLE}."BOHCONTROLNAMEPARENT" ;;
    group_label: "Unknown"
  }

  dimension: checknumber {
    type: string
    sql: ${TABLE}."CHECKNUMBER" ;;
    label: "Non Distinct Check Number"
  }

  dimension: conceptitemorder {
    type: string
    sql: ${TABLE}."CONCEPTITEMORDER" ;;
    group_label: "Unknown"
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
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}."DATEOFBUSINESS" ;;
    group_label: "Unknown"
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
    group_label: "Unknown"
  }

  dimension: discpric {
    type: number
    sql: ${TABLE}."DISCPRIC" ;;
    group_label: "Unknown"
  }

  dimension: eimporterfileguid {
    type: string
    sql: ${TABLE}."EIMPORTERFILEGUID" ;;
    group_label: "Unknown"
  }

  dimension: entryid {
    type: string
    sql: ${TABLE}."ENTRYID" ;;
    group_label: "Unknown"
  }

  dimension: excltax {
    type: number
    sql: ${TABLE}."EXCLTAX" ;;
    group_label: "Unknown"
  }

  dimension: familystyleportion {
    type: string
    sql: ${TABLE}."FAMILYSTYLEPORTION" ;;
    group_label: "Unknown"
  }

  dimension: fkcategoryid {
    type: string
    sql: ${TABLE}."FKCATEGORYID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkdaypartid {
    type: string
    sql: ${TABLE}."FKDAYPARTID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkemployeenumber {
    type: string
    sql: ${TABLE}."FKEMPLOYEENUMBER" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkitemid {
    type: string
    sql: ${TABLE}."FKITEMID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkoccasionid {
    type: string
    sql: ${TABLE}."FKOCCASIONID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkordermodeid {
    type: string
    sql: ${TABLE}."FKORDERMODEID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkrevenueid {
    type: string
    sql: ${TABLE}."FKREVENUEID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkstoreid {
    type: string
    sql: ${TABLE}."FKSTOREID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fktaxid {
    type: string
    sql: ${TABLE}."FKTAXID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkterminalid {
    type: string
    sql: ${TABLE}."FKTERMINALID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fohuniquetableid {
    type: string
    sql: ${TABLE}."FOHUNIQUETABLEID" ;;
    group_label: "Foreign Keys"
  }

  dimension: groupquickcomboid {
    type: string
    sql: ${TABLE}."GROUPQUICKCOMBOID" ;;
    group_label: "Foreign Keys"
  }

  dimension: hour {
    type: string
    sql: ${TABLE}."HOUR" ;;
    group_label: "Unknown"
  }

  dimension: houritemadded {
    type: string
    sql: ${TABLE}."HOURITEMADDED" ;;
    group_label: "Unknown"
  }

  dimension: importchecksum {
    type: string
    sql: ${TABLE}."IMPORTCHECKSUM" ;;
    group_label: "Unknown"
  }

  dimension: importid {
    type: string
    sql: ${TABLE}."IMPORTID" ;;
    group_label: "Unknown"
  }

  dimension: incltax {
    type: number
    sql: ${TABLE}."INCLTAX" ;;
    hidden: yes
  }

  dimension: itemcoursenumber {
    type: string
    sql: ${TABLE}."ITEMCOURSENUMBER" ;;
    group_label: "Unknown"
  }

  dimension: menupanel {
    type: string
    sql: ${TABLE}."MENUPANEL" ;;
    group_label: "Unknown"
  }

  dimension: minute {
    type: string
    sql: ${TABLE}."MINUTE" ;;
    group_label: "Unknown"
  }

  dimension: minuteitemadded {
    type: string
    sql: ${TABLE}."MINUTEITEMADDED" ;;
    group_label: "Unknown"
  }

  dimension: modcode {
    type: number
    sql: ${TABLE}."MODCODE" ;;
    group_label: "Unknown"
  }

  dimension: modifierfunctiontypes {
    type: string
    sql: ${TABLE}."MODIFIERFUNCTIONTYPES" ;;
    group_label: "Unknown"
  }

  dimension: orgprice {
    type: number
    sql: ${TABLE}."ORGPRICE" ;;
    group_label: "Unknown"
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."ORIGIN" ;;
    group_label: "Unknown"
  }

  dimension: parententryid {
    type: string
    sql: ${TABLE}."PARENTENTRYID" ;;
    group_label: "Unknown"
  }

  dimension: parentid {
    type: string
    sql: ${TABLE}."PARENTID" ;;
    group_label: "Unknown"
  }

  dimension: parentmodifierid {
    type: string
    sql: ${TABLE}."PARENTMODIFIERID" ;;
    group_label: "Unknown"
  }

  dimension: periodid {
    type: string
    sql: ${TABLE}."PERIODID" ;;
    group_label: "Unknown"
  }

  dimension: price {
    type: number
    sql: ${TABLE}."PRICE" ;;
    group_label: "Unknown"
  }

  dimension: qsquickcomboid {
    type: string
    sql: ${TABLE}."QSQUICKCOMBOID" ;;
    group_label: "Unknown"
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."QUANTITY" ;;
    group_label: "Unknown"
  }

  dimension: quantityunit {
    type: string
    sql: ${TABLE}."QUANTITYUNIT" ;;
    group_label: "Unknown"
  }

  dimension: revenuecenteritemorder {
    type: string
    sql: ${TABLE}."REVENUECENTERITEMORDER" ;;
    group_label: "Unknown"
  }

  dimension: seatnumber {
    type: string
    sql: ${TABLE}."SEATNUMBER" ;;
    group_label: "Unknown"
  }

  dimension: secondarytaxid {
    type: string
    sql: ${TABLE}."SECONDARYTAXID" ;;
    group_label: "Unknown"
  }

  dimension: seconditemadded {
    type: string
    sql: ${TABLE}."SECONDITEMADDED" ;;
    group_label: "Unknown"
  }

  dimension: substituteitemid {
    type: string
    sql: ${TABLE}."SUBSTITUTEITEMID" ;;
    group_label: "Unknown"
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
    group_label: "Unknown"
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
    group_label: "Unknown"
  }

  dimension: uniqueid {
    type: string
    sql: ${TABLE}."UNIQUEID" ;;
    primary_key: yes
    hidden: yes
  }
}
