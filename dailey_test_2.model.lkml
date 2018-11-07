connection: "snowflake_pc_fivetran_db"

# include all the views
include: "*.view"

datagroup: dailey_test_2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dailey_test_2_default_datagroup

explore: dpvhstgnditem {
  join: dim_date {
    relationship: many_to_one
    sql_on: ${dim_date.date_sk} = ${dpvhstgnditem.date_sk};;
  }
  join: gblstore {
    relationship: many_to_one
    sql_on: ${gblstore.storeid} = ${dpvhstgnditem.fkstoreid} ;;
  }
  join: region {
    #this is the operational region
    relationship: one_to_one
    sql_on: ${region.regionid} = ${gblstore.fkregionid} ;;
    fields: []
  }
  join: areas {
    #this is the operaational district
    relationship: one_to_one
    sql_on: ${areas.areaid} = ${gblstore.fkareaid} ;;
    fields: []
  }
  join: cfgitembystore {
    #this is the operaational district
    relationship: many_to_one
    sql_on: ${cfgitembystore.itemid} = ${dpvhstgnditem.fkitemid} and ${cfgitembystore.fkstoreid} = ${gblstore.storeid};;
  }
  group_label: "Retail"
}
