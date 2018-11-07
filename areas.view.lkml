view: areas {
  sql_table_name: ALOHA_DBO.AREAS ;;

  dimension: areaid {
    primary_key: yes
    type: string
    sql: ${TABLE}."AREAID" ;;
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

  measure: count {
    type: count
    drill_fields: [areaid, name]
  }
}
