view: category {
  sql_table_name: ALOHA_DBO.CATEGORY ;;

  dimension: categoryid {
    primary_key: yes
    type: string
    sql: ${TABLE}."CATEGORYID" ;;
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

  dimension: arsalescat {
    type: string
    sql: ${TABLE}."ARSALESCAT" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: eimporterfileguid {
    type: string
    sql: ${TABLE}."EIMPORTERFILEGUID" ;;
  }

  dimension: fkstoreid {
    type: string
    sql: ${TABLE}."FKSTOREID" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: parent {
    type: string
    sql: ${TABLE}."PARENT" ;;
  }

  dimension: parentaccess {
    type: string
    sql: ${TABLE}."PARENTACCESS" ;;
  }

  dimension: pmssalescat {
    type: string
    sql: ${TABLE}."PMSSALESCAT" ;;
  }

  dimension: recordstatus {
    type: string
    sql: ${TABLE}."RECORDSTATUS" ;;
  }

  dimension: retail {
    type: string
    sql: ${TABLE}."RETAIL" ;;
  }

  dimension: sales {
    type: string
    sql: ${TABLE}."SALES" ;;
  }

  dimension: storeaccess {
    type: string
    sql: ${TABLE}."STOREACCESS" ;;
  }

  dimension: suggestive {
    type: string
    sql: ${TABLE}."SUGGESTIVE" ;;
  }

  dimension: tipshare {
    type: string
    sql: ${TABLE}."TIPSHARE" ;;
  }

  dimension: usernumber {
    type: string
    sql: ${TABLE}."USERNUMBER" ;;
  }

  measure: count {
    type: count
    drill_fields: [categoryid, name]
  }
}
