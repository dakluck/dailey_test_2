view: promotion {
  sql_table_name: ALOHA_DBO.PROMOTION ;;

  dimension: fkpromotionid {
    primary_key: yes
    type: string
    sql: ${TABLE}."FKPROMOTIONID" ;;
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

  dimension: activeonfoh {
    type: string
    sql: ${TABLE}."ACTIVEONFOH" ;;
  }

  dimension: allowpriorcompcheck {
    type: string
    sql: ${TABLE}."ALLOWPRIORCOMPCHECK" ;;
  }

  dimension: allowpriorcomptable {
    type: string
    sql: ${TABLE}."ALLOWPRIORCOMPTABLE" ;;
  }

  dimension: allowpriorpromocheck {
    type: string
    sql: ${TABLE}."ALLOWPRIORPROMOCHECK" ;;
  }

  dimension: allowpriorpromotable {
    type: string
    sql: ${TABLE}."ALLOWPRIORPROMOTABLE" ;;
  }

  dimension: allowsubsequentcompcheck {
    type: string
    sql: ${TABLE}."ALLOWSUBSEQUENTCOMPCHECK" ;;
  }

  dimension: allowsubsequentcomptable {
    type: string
    sql: ${TABLE}."ALLOWSUBSEQUENTCOMPTABLE" ;;
  }

  dimension: allowsubsequentpromocheck {
    type: string
    sql: ${TABLE}."ALLOWSUBSEQUENTPROMOCHECK" ;;
  }

  dimension: allowsubsequentpromotable {
    type: string
    sql: ${TABLE}."ALLOWSUBSEQUENTPROMOTABLE" ;;
  }

  dimension: applygrat {
    type: string
    sql: ${TABLE}."APPLYGRAT" ;;
  }

  dimension: area {
    type: string
    sql: ${TABLE}."AREA" ;;
  }

  dimension: auditcnt {
    type: string
    sql: ${TABLE}."AUDITCNT" ;;
  }

  dimension: auditvar {
    type: string
    sql: ${TABLE}."AUDITVAR" ;;
  }

  dimension: autoitems {
    type: string
    sql: ${TABLE}."AUTOITEMS" ;;
  }

  dimension: basediscat {
    type: string
    sql: ${TABLE}."BASEDISCAT" ;;
  }

  dimension: basedisprc {
    type: number
    sql: ${TABLE}."BASEDISPRC" ;;
  }

  dimension: bogoaa {
    type: string
    sql: ${TABLE}."BOGOAA" ;;
  }

  dimension: bogoaaotim {
    type: yesno
    sql: ${TABLE}."BOGOAAOTIM" ;;
  }

  dimension: bogodiscat {
    type: string
    sql: ${TABLE}."BOGODISCAT" ;;
  }

  dimension: bogodisrst {
    type: string
    sql: ${TABLE}."BOGODISRST" ;;
  }

  dimension: bogofixpri {
    type: number
    sql: ${TABLE}."BOGOFIXPRI" ;;
  }

  dimension: bogoitems {
    type: string
    sql: ${TABLE}."BOGOITEMS" ;;
  }

  dimension: bogomethod {
    type: string
    sql: ${TABLE}."BOGOMETHOD" ;;
  }

  dimension: bogomods {
    type: string
    sql: ${TABLE}."BOGOMODS" ;;
  }

  dimension: bogonumitm {
    type: string
    sql: ${TABLE}."BOGONUMITM" ;;
  }

  dimension: bogopercnt {
    type: number
    sql: ${TABLE}."BOGOPERCNT" ;;
  }

  dimension: bogoqaa {
    type: string
    sql: ${TABLE}."BOGOQAA" ;;
  }

  dimension: buttonpos {
    type: string
    sql: ${TABLE}."BUTTONPOS" ;;
  }

  dimension: cmptname01 {
    type: string
    sql: ${TABLE}."CMPTNAME01" ;;
  }

  dimension: cmptname02 {
    type: string
    sql: ${TABLE}."CMPTNAME02" ;;
  }

  dimension: cmptname03 {
    type: string
    sql: ${TABLE}."CMPTNAME03" ;;
  }

  dimension: cmptname04 {
    type: string
    sql: ${TABLE}."CMPTNAME04" ;;
  }

  dimension: cmptname05 {
    type: string
    sql: ${TABLE}."CMPTNAME05" ;;
  }

  dimension: cmptname06 {
    type: string
    sql: ${TABLE}."CMPTNAME06" ;;
  }

  dimension: cmptname07 {
    type: string
    sql: ${TABLE}."CMPTNAME07" ;;
  }

  dimension: cmptname08 {
    type: string
    sql: ${TABLE}."CMPTNAME08" ;;
  }

  dimension: cmptname09 {
    type: string
    sql: ${TABLE}."CMPTNAME09" ;;
  }

  dimension: cmptname10 {
    type: string
    sql: ${TABLE}."CMPTNAME10" ;;
  }

  dimension: combocat01 {
    type: string
    sql: ${TABLE}."COMBOCAT01" ;;
  }

  dimension: combocat02 {
    type: string
    sql: ${TABLE}."COMBOCAT02" ;;
  }

  dimension: combocat03 {
    type: string
    sql: ${TABLE}."COMBOCAT03" ;;
  }

  dimension: combocat04 {
    type: string
    sql: ${TABLE}."COMBOCAT04" ;;
  }

  dimension: combocat05 {
    type: string
    sql: ${TABLE}."COMBOCAT05" ;;
  }

  dimension: combocat06 {
    type: string
    sql: ${TABLE}."COMBOCAT06" ;;
  }

  dimension: combocat07 {
    type: string
    sql: ${TABLE}."COMBOCAT07" ;;
  }

  dimension: combocat08 {
    type: string
    sql: ${TABLE}."COMBOCAT08" ;;
  }

  dimension: combocat09 {
    type: string
    sql: ${TABLE}."COMBOCAT09" ;;
  }

  dimension: combocat10 {
    type: string
    sql: ${TABLE}."COMBOCAT10" ;;
  }

  dimension: combomax01 {
    type: string
    sql: ${TABLE}."COMBOMAX01" ;;
  }

  dimension: combomax02 {
    type: string
    sql: ${TABLE}."COMBOMAX02" ;;
  }

  dimension: combomax03 {
    type: string
    sql: ${TABLE}."COMBOMAX03" ;;
  }

  dimension: combomax04 {
    type: string
    sql: ${TABLE}."COMBOMAX04" ;;
  }

  dimension: combomax05 {
    type: string
    sql: ${TABLE}."COMBOMAX05" ;;
  }

  dimension: combomax06 {
    type: string
    sql: ${TABLE}."COMBOMAX06" ;;
  }

  dimension: combomax07 {
    type: string
    sql: ${TABLE}."COMBOMAX07" ;;
  }

  dimension: combomax08 {
    type: string
    sql: ${TABLE}."COMBOMAX08" ;;
  }

  dimension: combomax09 {
    type: string
    sql: ${TABLE}."COMBOMAX09" ;;
  }

  dimension: combomax10 {
    type: string
    sql: ${TABLE}."COMBOMAX10" ;;
  }

  dimension: combomin01 {
    type: string
    sql: ${TABLE}."COMBOMIN01" ;;
  }

  dimension: combomin02 {
    type: string
    sql: ${TABLE}."COMBOMIN02" ;;
  }

  dimension: combomin03 {
    type: string
    sql: ${TABLE}."COMBOMIN03" ;;
  }

  dimension: combomin04 {
    type: string
    sql: ${TABLE}."COMBOMIN04" ;;
  }

  dimension: combomin05 {
    type: string
    sql: ${TABLE}."COMBOMIN05" ;;
  }

  dimension: combomin06 {
    type: string
    sql: ${TABLE}."COMBOMIN06" ;;
  }

  dimension: combomin07 {
    type: string
    sql: ${TABLE}."COMBOMIN07" ;;
  }

  dimension: combomin08 {
    type: string
    sql: ${TABLE}."COMBOMIN08" ;;
  }

  dimension: combomin09 {
    type: string
    sql: ${TABLE}."COMBOMIN09" ;;
  }

  dimension: combomin10 {
    type: string
    sql: ${TABLE}."COMBOMIN10" ;;
  }

  dimension: combomin11 {
    type: string
    sql: ${TABLE}."COMBOMIN11" ;;
  }

  dimension: combomin12 {
    type: string
    sql: ${TABLE}."COMBOMIN12" ;;
  }

  dimension: combomods {
    type: string
    sql: ${TABLE}."COMBOMODS" ;;
  }

  dimension: comboname {
    type: string
    sql: ${TABLE}."COMBONAME" ;;
  }

  dimension: comboprice {
    type: number
    sql: ${TABLE}."COMBOPRICE" ;;
  }

  dimension: combotax2 {
    type: string
    sql: ${TABLE}."COMBOTAX2" ;;
  }

  dimension: combotaxid {
    type: string
    sql: ${TABLE}."COMBOTAXID" ;;
  }

  dimension: cpaa {
    type: yesno
    sql: ${TABLE}."CPAA" ;;
  }

  dimension: cpamount {
    type: number
    sql: ${TABLE}."CPAMOUNT" ;;
  }

  dimension: cpdistamt {
    type: string
    sql: ${TABLE}."CPDISTAMT" ;;
  }

  dimension: cpitms {
    type: string
    sql: ${TABLE}."CPITMS" ;;
  }

  dimension: cplimit {
    type: string
    sql: ${TABLE}."CPLIMIT" ;;
  }

  dimension: cpmods {
    type: string
    sql: ${TABLE}."CPMODS" ;;
  }

  dimension: cpmustcnt {
    type: string
    sql: ${TABLE}."CPMUSTCNT" ;;
  }

  dimension: cpmustitms {
    type: string
    sql: ${TABLE}."CPMUSTITMS" ;;
  }

  dimension: cppercent {
    type: string
    sql: ${TABLE}."CPPERCENT" ;;
  }

  dimension: cpselitms {
    type: string
    sql: ${TABLE}."CPSELITMS" ;;
  }

  dimension: efreqpromo {
    type: string
    sql: ${TABLE}."EFREQPROMO" ;;
  }

  dimension: eimporterfileguid {
    type: string
    sql: ${TABLE}."EIMPORTERFILEGUID" ;;
  }

  dimension_group: enddate {
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
    sql: ${TABLE}."ENDDATE" ;;
  }

  dimension: exportid {
    type: string
    sql: ${TABLE}."EXPORTID" ;;
  }

  dimension: firstavailableposition {
    type: string
    sql: ${TABLE}."FIRSTAVAILABLEPOSITION" ;;
  }

  dimension: fkstoreid {
    type: string
    sql: ${TABLE}."FKSTOREID" ;;
  }

  dimension: fktax2_id {
    type: string
    sql: ${TABLE}."FKTAX2ID" ;;
  }

  dimension: fktaxid {
    type: string
    sql: ${TABLE}."FKTAXID" ;;
  }

  dimension: foodcostpercent {
    type: number
    sql: ${TABLE}."FOODCOSTPERCENT" ;;
  }

  dimension: gstnpyincl {
    type: string
    sql: ${TABLE}."GSTNPYINCL" ;;
  }

  dimension: guestpaystax {
    type: string
    sql: ${TABLE}."GUESTPAYSTAX" ;;
  }

  dimension: highcode {
    type: string
    sql: ${TABLE}."HIGHCODE" ;;
  }

  dimension: idlength {
    type: string
    sql: ${TABLE}."IDLENGTH" ;;
  }

  dimension: idnumeric {
    type: string
    sql: ${TABLE}."IDNUMERIC" ;;
  }

  dimension: idrequired {
    type: string
    sql: ${TABLE}."IDREQUIRED" ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}."KIND" ;;
  }

  dimension: lowcode {
    type: string
    sql: ${TABLE}."LOWCODE" ;;
  }

  dimension: managerneeded {
    type: string
    sql: ${TABLE}."MANAGERNEEDED" ;;
  }

  dimension: maximum {
    type: number
    sql: ${TABLE}."MAXIMUM" ;;
  }

  dimension: memreqd {
    type: string
    sql: ${TABLE}."MEMREQD" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: noshowinlist {
    type: string
    sql: ${TABLE}."NOSHOWINLIST" ;;
  }

  dimension: notdisc {
    type: yesno
    sql: ${TABLE}."NOTDISC" ;;
  }

  dimension: npautoappy {
    type: string
    sql: ${TABLE}."NPAUTOAPPY" ;;
  }

  dimension: npfreemods {
    type: string
    sql: ${TABLE}."NPFREEMODS" ;;
  }

  dimension: npitem01 {
    type: string
    sql: ${TABLE}."NPITEM01" ;;
  }

  dimension: npitem02 {
    type: string
    sql: ${TABLE}."NPITEM02" ;;
  }

  dimension: npitem03 {
    type: string
    sql: ${TABLE}."NPITEM03" ;;
  }

  dimension: npitem04 {
    type: string
    sql: ${TABLE}."NPITEM04" ;;
  }

  dimension: npitem05 {
    type: string
    sql: ${TABLE}."NPITEM05" ;;
  }

  dimension: npitem06 {
    type: string
    sql: ${TABLE}."NPITEM06" ;;
  }

  dimension: npitem07 {
    type: string
    sql: ${TABLE}."NPITEM07" ;;
  }

  dimension: npitem08 {
    type: string
    sql: ${TABLE}."NPITEM08" ;;
  }

  dimension: npitem09 {
    type: string
    sql: ${TABLE}."NPITEM09" ;;
  }

  dimension: npitem10 {
    type: string
    sql: ${TABLE}."NPITEM10" ;;
  }

  dimension: nplimit {
    type: string
    sql: ${TABLE}."NPLIMIT" ;;
  }

  dimension: npmustcnt {
    type: string
    sql: ${TABLE}."NPMUSTCNT" ;;
  }

  dimension: npmustitms {
    type: string
    sql: ${TABLE}."NPMUSTITMS" ;;
  }

  dimension: npprice01 {
    type: number
    sql: ${TABLE}."NPPRICE01" ;;
  }

  dimension: npprice02 {
    type: number
    sql: ${TABLE}."NPPRICE02" ;;
  }

  dimension: npprice03 {
    type: number
    sql: ${TABLE}."NPPRICE03" ;;
  }

  dimension: npprice04 {
    type: number
    sql: ${TABLE}."NPPRICE04" ;;
  }

  dimension: npprice05 {
    type: number
    sql: ${TABLE}."NPPRICE05" ;;
  }

  dimension: npprice06 {
    type: number
    sql: ${TABLE}."NPPRICE06" ;;
  }

  dimension: npprice07 {
    type: number
    sql: ${TABLE}."NPPRICE07" ;;
  }

  dimension: npprice08 {
    type: number
    sql: ${TABLE}."NPPRICE08" ;;
  }

  dimension: npprice09 {
    type: number
    sql: ${TABLE}."NPPRICE09" ;;
  }

  dimension: npprice10 {
    type: number
    sql: ${TABLE}."NPPRICE10" ;;
  }

  dimension: numberpercheck {
    type: string
    sql: ${TABLE}."NUMBERPERCHECK" ;;
  }

  dimension: numberpertable {
    type: string
    sql: ${TABLE}."NUMBERPERTABLE" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: parentaccess {
    type: string
    sql: ${TABLE}."PARENTACCESS" ;;
  }

  dimension: printcheck {
    type: string
    sql: ${TABLE}."PRINTCHECK" ;;
  }

  dimension: promotionid {
    type: string
    # hidden: yes
    sql: ${TABLE}."PROMOTIONID" ;;
  }

  dimension: recordstatus {
    type: string
    sql: ${TABLE}."RECORDSTATUS" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: reportas {
    type: string
    sql: ${TABLE}."REPORTAS" ;;
  }

  dimension: rxamount {
    type: number
    sql: ${TABLE}."RXAMOUNT" ;;
  }

  dimension: rxautoappy {
    type: string
    sql: ${TABLE}."RXAUTOAPPY" ;;
  }

  dimension: rxitems {
    type: string
    sql: ${TABLE}."RXITEMS" ;;
  }

  dimension: rxmintotal {
    type: number
    sql: ${TABLE}."RXMINTOTAL" ;;
  }

  dimension: rxpercent {
    type: string
    sql: ${TABLE}."RXPERCENT" ;;
  }

  dimension: rxqualify {
    type: string
    sql: ${TABLE}."RXQUALIFY" ;;
  }

  dimension: rxqualitms {
    type: string
    sql: ${TABLE}."RXQUALITMS" ;;
  }

  dimension_group: startdate {
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
    sql: ${TABLE}."STARTDATE" ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}."STORE" ;;
  }

  dimension: storeaccess {
    type: string
    sql: ${TABLE}."STOREACCESS" ;;
  }

  dimension: surchargepromoamount {
    type: string
    sql: ${TABLE}."SURCHARGEPROMOAMOUNT" ;;
  }

  dimension: tax2_promoamount {
    type: string
    sql: ${TABLE}."TAX2PROMOAMOUNT" ;;
  }

  dimension: taxable2 {
    type: string
    sql: ${TABLE}."TAXABLE2" ;;
  }

  dimension: taxfoodcost {
    type: string
    sql: ${TABLE}."TAXFOODCOST" ;;
  }

  dimension: taxid {
    type: string
    sql: ${TABLE}."TAXID" ;;
  }

  dimension: taxpromoamount {
    type: string
    sql: ${TABLE}."TAXPROMOAMOUNT" ;;
  }

  dimension: thruefreq {
    type: string
    sql: ${TABLE}."THRUEFREQ" ;;
  }

  dimension: tippable {
    type: string
    sql: ${TABLE}."TIPPABLE" ;;
  }

  dimension: tokenguest {
    type: string
    sql: ${TABLE}."TOKENGUEST" ;;
  }

  dimension: tokenover {
    type: string
    sql: ${TABLE}."TOKENOVER" ;;
  }

  dimension: tokenpause {
    type: string
    sql: ${TABLE}."TOKENPAUSE" ;;
  }

  dimension: tokenqty {
    type: string
    sql: ${TABLE}."TOKENQTY" ;;
  }

  dimension: usecompitems {
    type: string
    sql: ${TABLE}."USECOMPITEMS" ;;
  }

  dimension: usepromoitems {
    type: string
    sql: ${TABLE}."USEPROMOITEMS" ;;
  }

  dimension: user1 {
    type: string
    sql: ${TABLE}."USER1" ;;
  }

  dimension: user2 {
    type: string
    sql: ${TABLE}."USER2" ;;
  }

  dimension: user3 {
    type: string
    sql: ${TABLE}."USER3" ;;
  }

  dimension: user4 {
    type: string
    sql: ${TABLE}."USER4" ;;
  }

  dimension: user5 {
    type: string
    sql: ${TABLE}."USER5" ;;
  }

  dimension: usernumber {
    type: string
    sql: ${TABLE}."USERNUMBER" ;;
  }

  dimension: vtaxfoodcost {
    type: string
    sql: ${TABLE}."VTAXFOODCOST" ;;
  }

  dimension: vtaxfoodcostpercent {
    type: number
    sql: ${TABLE}."VTAXFOODCOSTPERCENT" ;;
  }

  dimension: vtaxpromoamount {
    type: string
    sql: ${TABLE}."VTAXPROMOAMOUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      fkpromotionid,
      comboname,
      name,
      promotion.comboname,
      promotion.name,
      promotion.fkpromotionid,
      promotion.count
    ]
  }
}
