view: cfgitembystore {
  sql_table_name: ALOHA_DBO.CFGITEMBYSTORE ;;

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

  dimension: abbrevname {
    type: string
    sql: ${TABLE}."ABBREVNAME" ;;
  }

  dimension: adisprecp {
    type: string
    sql: ${TABLE}."ADISPRECP" ;;
  }

  dimension: ampri {
    type: string
    sql: ${TABLE}."AMPRI" ;;
  }

  dimension: askdesc {
    type: string
    sql: ${TABLE}."ASKDESC" ;;
  }

  dimension: askprice {
    type: string
    sql: ${TABLE}."ASKPRICE" ;;
  }

  dimension: automenupriority {
    type: string
    sql: ${TABLE}."AUTOMENUPRIORITY" ;;
  }

  dimension: bitmapfile {
    type: string
    sql: ${TABLE}."BITMAPFILE" ;;
  }

  dimension: bkblue {
    type: string
    sql: ${TABLE}."BKBLUE" ;;
  }

  dimension: bkgreen {
    type: string
    sql: ${TABLE}."BKGREEN" ;;
  }

  dimension: bkred {
    type: string
    sql: ${TABLE}."BKRED" ;;
  }

  dimension: bohname {
    type: string
    sql: ${TABLE}."BOHNAME" ;;
  }

  dimension: cashcard {
    type: string
    sql: ${TABLE}."CASHCARD" ;;
  }

  dimension: chitbold {
    type: string
    sql: ${TABLE}."CHITBOLD" ;;
  }

  dimension: chitjust {
    type: string
    sql: ${TABLE}."CHITJUST" ;;
  }

  dimension: chitname {
    type: string
    sql: ${TABLE}."CHITNAME" ;;
  }

  dimension: chitname2 {
    type: string
    sql: ${TABLE}."CHITNAME2" ;;
  }

  dimension: combineoncheck {
    type: string
    sql: ${TABLE}."COMBINEONCHECK" ;;
  }

  dimension: con1_stmod {
    type: string
    sql: ${TABLE}."CON1STMOD" ;;
  }

  dimension: concept {
    type: string
    sql: ${TABLE}."CONCEPT" ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."COST" ;;
  }

  dimension: ctxpnlid {
    type: string
    sql: ${TABLE}."CTXPNLID" ;;
  }

  dimension: defaultweight {
    type: string
    sql: ${TABLE}."DEFAULTWEIGHT" ;;
  }

  dimension: delaytime {
    type: string
    sql: ${TABLE}."DELAYTIME" ;;
  }

  dimension: dispbmp {
    type: string
    sql: ${TABLE}."DISPBMP" ;;
  }

  dimension: dntshwsm {
    type: string
    sql: ${TABLE}."DNTSHWSM" ;;
  }

  dimension: dntshwsmmd {
    type: string
    sql: ${TABLE}."DNTSHWSMMD" ;;
  }

  dimension: donotshowmodifieronvideo {
    type: string
    sql: ${TABLE}."DONOTSHOWMODIFIERONVIDEO" ;;
  }

  dimension: donotshowonvideo {
    type: string
    sql: ${TABLE}."DONOTSHOWONVIDEO" ;;
  }

  dimension: eimporterfileguid {
    type: string
    sql: ${TABLE}."EIMPORTERFILEGUID" ;;
  }

  dimension: exportid {
    type: string
    sql: ${TABLE}."EXPORTID" ;;
  }

  dimension: fkcompositetrackitemid {
    type: string
    sql: ${TABLE}."FKCOMPOSITETRACKITEMID" ;;
  }

  dimension: fkflextaxid {
    type: string
    sql: ${TABLE}."FKFLEXTAXID" ;;
  }

  dimension: fkpricelevelid {
    type: string
    sql: ${TABLE}."FKPRICELEVELID" ;;
  }

  dimension: fkrouting {
    type: string
    sql: ${TABLE}."FKROUTING" ;;
  }

  dimension: fkstoreid {
    type: number
    sql: ${TABLE}."FKSTOREID" ;;
  }

  dimension: fksurchargeid {
    type: string
    sql: ${TABLE}."FKSURCHARGEID" ;;
  }

  dimension: fktax2_id {
    type: string
    sql: ${TABLE}."FKTAX2ID" ;;
  }

  dimension: fktaxid {
    type: string
    sql: ${TABLE}."FKTAXID" ;;
  }

  dimension: fkvrouting {
    type: string
    sql: ${TABLE}."FKVROUTING" ;;
  }

  dimension: fkvtaxid {
    type: string
    sql: ${TABLE}."FKVTAXID" ;;
  }

  dimension: flextax2 {
    type: string
    sql: ${TABLE}."FLEXTAX2" ;;
  }

  dimension: fracprcovr {
    type: string
    sql: ${TABLE}."FRACPRCOVR" ;;
  }

  dimension: fraction {
    type: string
    sql: ${TABLE}."FRACTION" ;;
  }

  dimension: fractype {
    type: string
    sql: ${TABLE}."FRACTYPE" ;;
  }

  dimension: fsitem {
    type: yesno
    sql: ${TABLE}."FSITEM" ;;
  }

  dimension: fsmatrix {
    type: string
    sql: ${TABLE}."FSMATRIX" ;;
  }

  dimension: gcactivate {
    type: string
    sql: ${TABLE}."GCACTIVATE" ;;
  }

  dimension: gcaddvalue {
    type: string
    sql: ${TABLE}."GCADDVALUE" ;;
  }

  dimension: giftcard {
    type: string
    sql: ${TABLE}."GIFTCARD" ;;
  }

  dimension: giftcertificate {
    type: string
    sql: ${TABLE}."GIFTCERTIFICATE" ;;
  }

  dimension: guests {
    type: number
    sql: ${TABLE}."GUESTS" ;;
  }

  dimension: guestwght {
    type: number
    sql: ${TABLE}."GUESTWGHT" ;;
  }

  dimension: hidetxt {
    type: string
    sql: ${TABLE}."HIDETXT" ;;
  }

  dimension: highlight {
    type: string
    sql: ${TABLE}."HIGHLIGHT" ;;
  }

  dimension: inittop {
    type: string
    sql: ${TABLE}."INITTOP" ;;
  }

  dimension: iskvi {
    type: string
    sql: ${TABLE}."ISKVI" ;;
  }

  dimension: isrefill {
    type: string
    sql: ${TABLE}."ISREFILL" ;;
  }

  dimension: itemhighlight {
    type: string
    sql: ${TABLE}."ITEMHIGHLIGHT" ;;
  }

  dimension: itemid {
    type: number
    sql: ${TABLE}."ITEMID" ;;
  }

  dimension: itemmultmod {
    type: string
    sql: ${TABLE}."ITEMMULTMOD" ;;
  }

  dimension: itempercentmod {
    type: number
    sql: ${TABLE}."ITEMPERCENTMOD" ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}."LABEL" ;;
  }

  dimension: longname {
    type: string
    sql: ${TABLE}."LONGNAME" ;;
  }

  dimension: longname2 {
    type: string
    sql: ${TABLE}."LONGNAME2" ;;
  }

  dimension: mdspctxpnl {
    type: string
    sql: ${TABLE}."MDSPCTXPNL" ;;
  }

  dimension: mod1 {
    type: string
    sql: ${TABLE}."MOD1" ;;
  }

  dimension: mod10 {
    type: string
    sql: ${TABLE}."MOD10" ;;
  }

  dimension: mod2 {
    type: string
    sql: ${TABLE}."MOD2" ;;
  }

  dimension: mod3 {
    type: string
    sql: ${TABLE}."MOD3" ;;
  }

  dimension: mod4 {
    type: string
    sql: ${TABLE}."MOD4" ;;
  }

  dimension: mod5 {
    type: string
    sql: ${TABLE}."MOD5" ;;
  }

  dimension: mod6 {
    type: string
    sql: ${TABLE}."MOD6" ;;
  }

  dimension: mod7 {
    type: string
    sql: ${TABLE}."MOD7" ;;
  }

  dimension: mod8 {
    type: string
    sql: ${TABLE}."MOD8" ;;
  }

  dimension: mod9 {
    type: string
    sql: ${TABLE}."MOD9" ;;
  }

  dimension: moditemprice {
    type: string
    sql: ${TABLE}."MODITEMPRICE" ;;
  }

  dimension: modprice {
    type: number
    sql: ${TABLE}."MODPRICE" ;;
  }

  dimension: modpriceid {
    type: string
    sql: ${TABLE}."MODPRICEID" ;;
  }

  dimension: multiplier {
    type: string
    sql: ${TABLE}."MULTIPLIER" ;;
  }

  dimension: mustbwhole {
    type: string
    sql: ${TABLE}."MUSTBWHOLE" ;;
  }

  dimension: neverprintonchit {
    type: string
    sql: ${TABLE}."NEVERPRINTONCHIT" ;;
  }

  dimension: nogratuity {
    type: string
    sql: ${TABLE}."NOGRATUITY" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }

  dimension: parentaccess {
    type: string
    sql: ${TABLE}."PARENTACCESS" ;;
  }

  dimension: pizza {
    type: string
    sql: ${TABLE}."PIZZA" ;;
  }

  dimension: pizzasize {
    type: string
    sql: ${TABLE}."PIZZASIZE" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."PRICE" ;;
  }

  dimension: printifhelditem {
    type: string
    sql: ${TABLE}."PRINTIFHELDITEM" ;;
  }

  dimension: printindependently {
    type: string
    sql: ${TABLE}."PRINTINDEPENDENTLY" ;;
  }

  dimension: printoncheck {
    type: string
    sql: ${TABLE}."PRINTONCHECK" ;;
  }

  dimension: printrecipe {
    type: string
    sql: ${TABLE}."PRINTRECIPE" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: recordstatus {
    type: string
    sql: ${TABLE}."RECORDSTATUS" ;;
  }

  dimension: revitem {
    type: string
    sql: ${TABLE}."REVITEM" ;;
  }

  dimension: shortname {
    type: string
    sql: ${TABLE}."SHORTNAME" ;;
  }

  dimension: showindependently {
    type: string
    sql: ${TABLE}."SHOWINDEPENDENTLY" ;;
  }

  dimension: siteaccessflags {
    type: string
    sql: ${TABLE}."SITEACCESSFLAGS" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."SKU" ;;
  }

  dimension: sku2 {
    type: string
    sql: ${TABLE}."SKU2" ;;
  }

  dimension: sku3 {
    type: string
    sql: ${TABLE}."SKU3" ;;
  }

  dimension: sku4 {
    type: string
    sql: ${TABLE}."SKU4" ;;
  }

  dimension: sku5 {
    type: string
    sql: ${TABLE}."SKU5" ;;
  }

  dimension: slavetoitem {
    type: string
    sql: ${TABLE}."SLAVETOITEM" ;;
  }

  dimension: storeaccess {
    type: string
    sql: ${TABLE}."STOREACCESS" ;;
  }

  dimension: surchargemodifier {
    type: string
    sql: ${TABLE}."SURCHARGEMODIFIER" ;;
  }

  dimension: swtrcksm {
    type: string
    sql: ${TABLE}."SWTRCKSM" ;;
  }

  dimension: tokenover {
    type: string
    sql: ${TABLE}."TOKENOVER" ;;
  }

  dimension: tokenqty {
    type: string
    sql: ${TABLE}."TOKENQTY" ;;
  }

  dimension: topping {
    type: string
    sql: ${TABLE}."TOPPING" ;;
  }

  dimension: trackfoh {
    type: string
    sql: ${TABLE}."TRACKFOH" ;;
  }

  dimension: txtblue {
    type: string
    sql: ${TABLE}."TXTBLUE" ;;
  }

  dimension: txtgreen {
    type: string
    sql: ${TABLE}."TXTGREEN" ;;
  }

  dimension: txtred {
    type: string
    sql: ${TABLE}."TXTRED" ;;
  }

  dimension: typeid {
    type: string
    sql: ${TABLE}."TYPEID" ;;
  }

  dimension: usebkclr {
    type: string
    sql: ${TABLE}."USEBKCLR" ;;
  }

  dimension: usernumber {
    type: string
    sql: ${TABLE}."USERNUMBER" ;;
  }

  dimension: usetxtclr {
    type: string
    sql: ${TABLE}."USETXTCLR" ;;
  }

  measure: count {
    type: count
    drill_fields: [chitname, bohname, longname, shortname, abbrevname]
  }
}
