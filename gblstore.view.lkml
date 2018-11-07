view: gblstore {
  sql_table_name: ALOHA_DBO.GBLSTORE ;;

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

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: adminpwd {
    type: string
    sql: ${TABLE}."ADMINPWD" ;;
  }

  dimension: adminusername {
    type: string
    sql: ${TABLE}."ADMINUSERNAME" ;;
  }

  dimension: adpbatchdescription {
    type: string
    sql: ${TABLE}."ADPBATCHDESCRIPTION" ;;
  }

  dimension: adpbatchid {
    type: string
    sql: ${TABLE}."ADPBATCHID" ;;
  }

  dimension: adpcompanycode {
    type: string
    sql: ${TABLE}."ADPCOMPANYCODE" ;;
  }

  dimension: alohaversion {
    type: string
    sql: ${TABLE}."ALOHAVERSION" ;;
  }

  dimension: atomiclockhst {
    type: string
    sql: ${TABLE}."ATOMICLOCKHST" ;;
  }

  dimension: autorepollexpectedeodhour {
    type: string
    sql: ${TABLE}."AUTOREPOLLEXPECTEDEODHOUR" ;;
  }

  dimension: backupisplogin {
    type: string
    sql: ${TABLE}."BACKUPISPLOGIN" ;;
  }

  dimension: backupispname {
    type: string
    sql: ${TABLE}."BACKUPISPNAME" ;;
  }

  dimension: backupisppassword {
    type: string
    sql: ${TABLE}."BACKUPISPPASSWORD" ;;
  }

  dimension: backupispphone {
    type: string
    sql: ${TABLE}."BACKUPISPPHONE" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: closehour {
    type: string
    sql: ${TABLE}."CLOSEHOUR" ;;
  }

  dimension: closeminute {
    type: string
    sql: ${TABLE}."CLOSEMINUTE" ;;
  }

  dimension: countryname {
    type: string
    sql: ${TABLE}."COUNTRYNAME" ;;
  }

  dimension: deletestore {
    type: string
    sql: ${TABLE}."DELETESTORE" ;;
  }

  dimension: duelpollingslave {
    type: yesno
    sql: ${TABLE}."DUELPOLLINGSLAVE" ;;
  }

  dimension: existing {
    type: string
    sql: ${TABLE}."EXISTING" ;;
  }

  dimension: fkaccountingid {
    type: string
    sql: ${TABLE}."FKACCOUNTINGID" ;;
  }

  dimension: fkareaid {
    type: string
    sql: ${TABLE}."FKAREAID" ;;
  }

  dimension: fkconceptid {
    type: string
    sql: ${TABLE}."FKCONCEPTID" ;;
  }

  dimension: fkregionid {
    type: string
    sql: ${TABLE}."FKREGIONID" ;;
  }

  dimension: fkstoretypeid {
    type: string
    sql: ${TABLE}."FKSTORETYPEID" ;;
  }

  dimension: ftp {
    type: string
    sql: ${TABLE}."FTP" ;;
  }

  dimension: iberdir {
    type: string
    sql: ${TABLE}."IBERDIR" ;;
  }

  dimension: importchecksumenable {
    type: yesno
    sql: ${TABLE}."IMPORTCHECKSUMENABLE" ;;
  }

  dimension_group: installeddate {
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
    sql: ${TABLE}."INSTALLEDDATE" ;;
  }

  dimension: isplogin {
    type: string
    sql: ${TABLE}."ISPLOGIN" ;;
  }

  dimension: ispname {
    type: string
    sql: ${TABLE}."ISPNAME" ;;
  }

  dimension: isppassword {
    type: string
    sql: ${TABLE}."ISPPASSWORD" ;;
  }

  dimension: ispphone {
    type: string
    sql: ${TABLE}."ISPPHONE" ;;
  }

  dimension_group: lastimportdate {
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
    sql: ${TABLE}."LASTIMPORTDATE" ;;
  }

  dimension: lockenable {
    type: yesno
    sql: ${TABLE}."LOCKENABLE" ;;
  }

  dimension: modifiedbyuserid {
    type: string
    sql: ${TABLE}."MODIFIEDBYUSERID" ;;
  }

  dimension_group: modifieddate {
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
    sql: ${TABLE}."MODIFIEDDATE" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: netname {
    type: string
    sql: ${TABLE}."NETNAME" ;;
  }

  dimension: open24_hourflag {
    type: yesno
    sql: ${TABLE}."OPEN24HOURFLAG" ;;
  }

  dimension_group: opendate {
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
    sql: ${TABLE}."OPENDATE" ;;
  }

  dimension: openhour {
    type: string
    sql: ${TABLE}."OPENHOUR" ;;
  }

  dimension: openminute {
    type: string
    sql: ${TABLE}."OPENMINUTE" ;;
  }

  dimension: operatingsystem {
    type: string
    sql: ${TABLE}."OPERATINGSYSTEM" ;;
  }

  dimension: otpremiumthreshold {
    type: string
    sql: ${TABLE}."OTPREMIUMTHRESHOLD" ;;
  }

  dimension: outsideline {
    type: yesno
    sql: ${TABLE}."OUTSIDELINE" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: parentaccess {
    type: string
    sql: ${TABLE}."PARENTACCESS" ;;
  }

  dimension: pcalogin {
    type: string
    sql: ${TABLE}."PCALOGIN" ;;
  }

  dimension: pcapassword {
    type: string
    sql: ${TABLE}."PCAPASSWORD" ;;
  }

  dimension: pcaphone {
    type: string
    sql: ${TABLE}."PCAPHONE" ;;
  }

  dimension_group: pollend {
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
    sql: ${TABLE}."POLLEND" ;;
  }

  dimension: polling {
    type: string
    sql: ${TABLE}."POLLING" ;;
  }

  dimension_group: pollstart {
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
    sql: ${TABLE}."POLLSTART" ;;
  }

  dimension: pollsuccess {
    type: string
    sql: ${TABLE}."POLLSUCCESS" ;;
  }

  dimension: pollweekend {
    type: string
    sql: ${TABLE}."POLLWEEKEND" ;;
  }

  dimension: possoftwarekeyid {
    type: string
    sql: ${TABLE}."POSSOFTWAREKEYID" ;;
  }

  dimension: postype {
    type: string
    sql: ${TABLE}."POSTYPE" ;;
  }

  dimension: pulsepollingenabled {
    type: yesno
    sql: ${TABLE}."PULSEPOLLINGENABLED" ;;
  }

  dimension: pulsestoreid {
    type: string
    sql: ${TABLE}."PULSESTOREID" ;;
  }

  dimension: recordstatus {
    type: string
    sql: ${TABLE}."RECORDSTATUS" ;;
  }

  dimension: secondarystoreid {
    type: string
    sql: ${TABLE}."SECONDARYSTOREID" ;;
  }

  dimension: shortstorename {
    type: string
    sql: ${TABLE}."SHORTSTORENAME" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: storeaccess {
    type: string
    sql: ${TABLE}."STOREACCESS" ;;
  }

  dimension: storeid {
    type: string
    sql: ${TABLE}."STOREID" ;;
  }

  dimension: storephone {
    type: string
    sql: ${TABLE}."STOREPHONE" ;;
  }

  dimension: tendigitdialing {
    type: yesno
    sql: ${TABLE}."TENDIGITDIALING" ;;
  }

  dimension: timezoneid {
    type: string
    sql: ${TABLE}."TIMEZONEID" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: usebackupisp {
    type: yesno
    sql: ${TABLE}."USEBACKUPISP" ;;
  }

  dimension: usernumber {
    type: string
    sql: ${TABLE}."USERNUMBER" ;;
  }

  dimension: wanpolling {
    type: yesno
    sql: ${TABLE}."WANPOLLING" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      shortstorename,
      name,
      netname,
      backupispname,
      adminusername,
      ispname,
      countryname
    ]
  }
}
