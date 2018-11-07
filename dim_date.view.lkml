view: dim_date {
  sql_table_name: PC_DAILEY_TEST.PUBLIC.DIM_DATE ;;
  label: "Date"

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: date_sk {
    type: number
    sql: ${TABLE}."DATE_SK" ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}."DAY_NAME" ;;
  }

  dimension: fiscal_day {
    type: number
    sql: ${TABLE}."FISCAL_DAY" ;;
  }

  dimension: fiscal_month {
    type: number
    sql: ${TABLE}."FISCAL_MONTH" ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}."FISCAL_QUARTER" ;;
  }

  dimension: fiscal_week {
    type: number
    sql: ${TABLE}."FISCAL_WEEK" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FISCAL_YEAR" ;;
  }

  dimension: relative_date {
    type: string
    sql: ${TABLE}."RELATIVE_DATE" ;;
  }

  dimension: to_date {
    type: string
    sql: ${TABLE}."TO_DATE" ;;
  }
}
