view: region {
  sql_table_name: ALOHA_DBO.REGION ;;

  dimension: regionid {
    primary_key: yes
    type: string
    sql: ${TABLE}."REGIONID" ;;
  }

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

  dimension: emailaddress {
    type: string
    sql: ${TABLE}."EMAILADDRESS" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: parentaccess {
    type: string
    sql: ${TABLE}."PARENTACCESS" ;;
  }

  dimension: recordstatus {
    type: string
    sql: ${TABLE}."RECORDSTATUS" ;;
  }

  dimension: storeaccess {
    type: string
    sql: ${TABLE}."STOREACCESS" ;;
  }

  dimension: usernumber {
    type: string
    sql: ${TABLE}."USERNUMBER" ;;
  }

  measure: count {
    type: count
    drill_fields: [regionid, name]
  }
}
