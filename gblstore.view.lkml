view: gblstore {
  sql_table_name: ALOHA_DBO.GBLSTORE ;;

  #custom dimensions
  dimension: region {
    type: string
    sql: ${region.name} ;;
    drill_fields: [district]
    group_label: "Operational Mapping"
  }

  dimension: district {
    type: string
    sql: ${areas.name} ;;
    group_label: "Operational Mapping"
  }

  #stock dimensions
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

  dimension: address {
    type: string
    sql: ${TABLE}."ADDRESS" ;;
  }

  dimension: adminpwd {
    type: string
    sql: ${TABLE}."ADMINPWD" ;;
    group_label: "Aloha Settings"
  }

  dimension: adminusername {
    type: string
    sql: ${TABLE}."ADMINUSERNAME" ;;
    group_label: "Aloha Settings"
  }

  dimension: adpbatchdescription {
    type: string
    sql: ${TABLE}."ADPBATCHDESCRIPTION" ;;
    group_label: "Aloha Settings"
  }

  dimension: adpbatchid {
    type: string
    sql: ${TABLE}."ADPBATCHID" ;;
    group_label: "Aloha Settings"
  }

  dimension: adpcompanycode {
    type: string
    sql: ${TABLE}."ADPCOMPANYCODE" ;;
    group_label: "Aloha Settings"
  }

  dimension: alohaversion {
    type: string
    sql: ${TABLE}."ALOHAVERSION" ;;
    group_label: "Aloha Settings"
  }

  dimension: atomiclockhst {
    type: string
    sql: ${TABLE}."ATOMICLOCKHST" ;;
    group_label: "Aloha Settings"
  }

  dimension: autorepollexpectedeodhour {
    type: number
    sql: ${TABLE}."AUTOREPOLLEXPECTEDEODHOUR" ;;
    group_label: "Aloha Settings"
  }

  dimension: backupisplogin {
    type: string
    sql: ${TABLE}."BACKUPISPLOGIN" ;;
    group_label: "Aloha Settings"
  }

  dimension: backupispname {
    type: string
    sql: ${TABLE}."BACKUPISPNAME" ;;
    group_label: "Aloha Settings"
  }

  dimension: backupisppassword {
    type: string
    sql: ${TABLE}."BACKUPISPPASSWORD" ;;
    group_label: "Aloha Settings"
  }

  dimension: backupispphone {
    type: string
    sql: ${TABLE}."BACKUPISPPHONE" ;;
    group_label: "Aloha Settings"
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
    hidden: yes
  }

  dimension: fkareaid {
    type: string
    sql: ${TABLE}."FKAREAID" ;;
    hidden: yes
  }

  dimension: fkconceptid {
    type: string
    sql: ${TABLE}."FKCONCEPTID" ;;
    hidden: yes
  }

  dimension: fkregionid {
    type: string
    sql: ${TABLE}."FKREGIONID" ;;
    hidden: yes
  }

  dimension: fkstoretypeid {
    type: string
    sql: ${TABLE}."FKSTORETYPEID" ;;
    hidden: yes
  }

  dimension: ftp {
    type: string
    sql: ${TABLE}."FTP" ;;
    group_label: "Aloha Settings"
  }

  dimension: iberdir {
    type: string
    sql: ${TABLE}."IBERDIR" ;;
    group_label: "Aloha Settings"
  }

  dimension: importchecksumenable {
    type: yesno
    sql: ${TABLE}."IMPORTCHECKSUMENABLE" ;;
    group_label: "Aloha Settings"
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
    group_label: "Aloha Settings"
  }

  dimension: isplogin {
    type: string
    sql: ${TABLE}."ISPLOGIN" ;;
    group_label: "Aloha Settings"
  }

  dimension: ispname {
    type: string
    sql: ${TABLE}."ISPNAME" ;;
    group_label: "Aloha Settings"
  }

  dimension: isppassword {
    type: string
    sql: ${TABLE}."ISPPASSWORD" ;;
    group_label: "Aloha Settings"
  }

  dimension: ispphone {
    type: string
    sql: ${TABLE}."ISPPHONE" ;;
    group_label: "Aloha Settings"
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
    group_label: "Aloha Settings"
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
    group_label: "Aloha Settings"
  }

  dimension: otpremiumthreshold {
    type: string
    sql: ${TABLE}."OTPREMIUMTHRESHOLD" ;;
    group_label: "Aloha Settings"
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
    group_label: "Aloha Settings"
  }

  dimension: pcapassword {
    type: string
    sql: ${TABLE}."PCAPASSWORD" ;;
    group_label: "Aloha Settings"
  }

  dimension: pcaphone {
    type: string
    sql: ${TABLE}."PCAPHONE" ;;
    group_label: "Aloha Settings"
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
    group_label: "Aloha Settings"
  }

  dimension: polling {
    type: string
    sql: ${TABLE}."POLLING" ;;
    group_label: "Aloha Settings"
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
    group_label: "Aloha Settings"
  }

  dimension: pollsuccess {
    type: string
    sql: ${TABLE}."POLLSUCCESS" ;;
    group_label: "Aloha Settings"
  }

  dimension: pollweekend {
    type: string
    sql: ${TABLE}."POLLWEEKEND" ;;
    group_label: "Aloha Settings"
  }

  dimension: possoftwarekeyid {
    type: string
    sql: ${TABLE}."POSSOFTWAREKEYID" ;;
    group_label: "Aloha Settings"
  }

  dimension: postype {
    type: string
    sql: ${TABLE}."POSTYPE" ;;
    group_label: "Aloha Settings"
  }

  dimension: pulsepollingenabled {
    type: yesno
    sql: ${TABLE}."PULSEPOLLINGENABLED" ;;
    group_label: "Aloha Settings"
  }

  dimension: pulsestoreid {
    type: string
    sql: ${TABLE}."PULSESTOREID" ;;
    group_label: "Aloha Settings"
  }

  dimension: recordstatus {
    type: string
    sql: ${TABLE}."RECORDSTATUS" ;;
    group_label: "Aloha Settings"
  }

  dimension: secondarystoreid {
    type: string
    sql: ${TABLE}."SECONDARYSTOREID" ;;
    group_label: "Aloha Settings"
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
    group_label: "Aloha Settings"
  }

  dimension: storeid {
    type: string
    sql: ${TABLE}."STOREID" ;;
    hidden: yes
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
    group_label: "Aloha Settings"
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: usebackupisp {
    type: yesno
    sql: ${TABLE}."USEBACKUPISP" ;;
    group_label: "Aloha Settings"
  }

  dimension: usernumber {
    type: string
    sql: ${TABLE}."USERNUMBER" ;;
    group_label: "Aloha Settings"
  }

  dimension: wanpolling {
    type: yesno
    sql: ${TABLE}."WANPOLLING" ;;
    group_label: "Aloha Settings"
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }
}
