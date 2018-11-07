view: cfgitembystore {
  sql_table_name: ALOHA_DBO.CFGITEMBYSTORE ;;
  label: "Item"

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

  dimension: abbrevname {
    type: string
    sql: ${TABLE}."ABBREVNAME" ;;
    label: "Abbreviated Name"
  }

  dimension: adisprecp {
    type: string
    sql: ${TABLE}."ADISPRECP" ;;
    group_label: "Unknown"
  }

  dimension: ampri {
    type: string
    sql: ${TABLE}."AMPRI" ;;
    group_label: "Unknown"
  }

  dimension: askdesc {
    type: string
    sql: ${TABLE}."ASKDESC" ;;
    group_label: "Unknown"
  }

  dimension: askprice {
    type: string
    sql: ${TABLE}."ASKPRICE" ;;
    group_label: "Unknown"
  }

  dimension: automenupriority {
    type: string
    sql: ${TABLE}."AUTOMENUPRIORITY" ;;
    group_label: "Unknown"
  }

  dimension: bitmapfile {
    type: string
    sql: ${TABLE}."BITMAPFILE" ;;
    group_label: "Unknown"
  }

  dimension: bkblue {
    type: string
    sql: ${TABLE}."BKBLUE" ;;
    group_label: "Unknown"
  }

  dimension: bkgreen {
    type: string
    sql: ${TABLE}."BKGREEN" ;;
    group_label: "Unknown"
  }

  dimension: bkred {
    type: string
    sql: ${TABLE}."BKRED" ;;
    group_label: "Unknown"
  }

  dimension: bohname {
    type: string
    sql: ${TABLE}."BOHNAME" ;;
    group_label: "Unknown"
  }

  dimension: cashcard {
    type: string
    sql: ${TABLE}."CASHCARD" ;;
    group_label: "Unknown"
  }

  dimension: chitbold {
    type: string
    sql: ${TABLE}."CHITBOLD" ;;
    group_label: "Unknown"
  }

  dimension: chitjust {
    type: string
    sql: ${TABLE}."CHITJUST" ;;
    group_label: "Unknown"
  }

  dimension: chitname {
    type: string
    sql: ${TABLE}."CHITNAME" ;;
    group_label: "Unknown"
  }

  dimension: chitname2 {
    type: string
    sql: ${TABLE}."CHITNAME2" ;;
    group_label: "Unknown"
  }

  dimension: combineoncheck {
    type: string
    sql: ${TABLE}."COMBINEONCHECK" ;;
    group_label: "Unknown"
  }

  dimension: con1_stmod {
    type: string
    sql: ${TABLE}."CON1STMOD" ;;
    group_label: "Unknown"
  }

  dimension: concept {
    type: string
    sql: ${TABLE}."CONCEPT" ;;
    group_label: "Unknown"
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."COST" ;;
    group_label: "Unknown"
  }

  dimension: ctxpnlid {
    type: string
    sql: ${TABLE}."CTXPNLID" ;;
    group_label: "Unknown"
  }

  dimension: defaultweight {
    type: string
    sql: ${TABLE}."DEFAULTWEIGHT" ;;
    group_label: "Unknown"
  }

  dimension: delaytime {
    type: string
    sql: ${TABLE}."DELAYTIME" ;;
    group_label: "Unknown"
  }

  dimension: dispbmp {
    type: string
    sql: ${TABLE}."DISPBMP" ;;
    group_label: "Unknown"
  }

  dimension: dntshwsm {
    type: string
    sql: ${TABLE}."DNTSHWSM" ;;
    group_label: "Unknown"
  }

  dimension: dntshwsmmd {
    type: string
    sql: ${TABLE}."DNTSHWSMMD" ;;
    group_label: "Unknown"
  }

  dimension: donotshowmodifieronvideo {
    type: string
    sql: ${TABLE}."DONOTSHOWMODIFIERONVIDEO" ;;
    group_label: "Unknown"
  }

  dimension: donotshowonvideo {
    type: string
    sql: ${TABLE}."DONOTSHOWONVIDEO" ;;
    group_label: "Unknown"
  }

  dimension: eimporterfileguid {
    type: string
    sql: ${TABLE}."EIMPORTERFILEGUID" ;;
    group_label: "Unknown"
  }

  dimension: exportid {
    type: string
    sql: ${TABLE}."EXPORTID" ;;
    group_label: "Unknown"
  }

  dimension: fkcompositetrackitemid {
    type: string
    sql: ${TABLE}."FKCOMPOSITETRACKITEMID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkflextaxid {
    type: string
    sql: ${TABLE}."FKFLEXTAXID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkpricelevelid {
    type: string
    sql: ${TABLE}."FKPRICELEVELID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkrouting {
    type: string
    sql: ${TABLE}."FKROUTING" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkstoreid {
    type: number
    sql: ${TABLE}."FKSTOREID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fksurchargeid {
    type: string
    sql: ${TABLE}."FKSURCHARGEID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fktax2_id {
    type: string
    sql: ${TABLE}."FKTAX2ID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fktaxid {
    type: string
    sql: ${TABLE}."FKTAXID" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkvrouting {
    type: string
    sql: ${TABLE}."FKVROUTING" ;;
    group_label: "Foreign Keys"
  }

  dimension: fkvtaxid {
    type: string
    sql: ${TABLE}."FKVTAXID" ;;
    group_label: "Foreign Keys"
  }

  dimension: flextax2 {
    type: string
    sql: ${TABLE}."FLEXTAX2" ;;
    group_label: "Unknown"
  }

  dimension: fracprcovr {
    type: string
    sql: ${TABLE}."FRACPRCOVR" ;;
    group_label: "Unknown"
  }

  dimension: fraction {
    type: string
    sql: ${TABLE}."FRACTION" ;;
    group_label: "Unknown"
  }

  dimension: fractype {
    type: string
    sql: ${TABLE}."FRACTYPE" ;;
    group_label: "Unknown"
  }

  dimension: fsitem {
    type: yesno
    sql: ${TABLE}."FSITEM" ;;
    group_label: "Unknown"
  }

  dimension: fsmatrix {
    type: string
    sql: ${TABLE}."FSMATRIX" ;;
    group_label: "Unknown"
  }

  dimension: gcactivate {
    type: string
    sql: ${TABLE}."GCACTIVATE" ;;
    group_label: "Unknown"
  }

  dimension: gcaddvalue {
    type: string
    sql: ${TABLE}."GCADDVALUE" ;;
    group_label: "Unknown"
  }

  dimension: giftcard {
    type: string
    sql: ${TABLE}."GIFTCARD" ;;
    label: "Gift Card"
  }

  dimension: giftcertificate {
    type: string
    sql: ${TABLE}."GIFTCERTIFICATE" ;;
    label: "Gift Certificate"
  }

  dimension: guests {
    type: number
    sql: ${TABLE}."GUESTS" ;;
    group_label: "Unknown"
  }

  dimension: guestwght {
    type: number
    sql: ${TABLE}."GUESTWGHT" ;;
    group_label: "Unknown"
  }

  dimension: hidetxt {
    type: string
    sql: ${TABLE}."HIDETXT" ;;
    group_label: "Unknown"
  }

  dimension: highlight {
    type: string
    sql: ${TABLE}."HIGHLIGHT" ;;
    group_label: "Unknown"
  }

  dimension: inittop {
    type: string
    sql: ${TABLE}."INITTOP" ;;
    group_label: "Unknown"
  }

  dimension: iskvi {
    type: string
    sql: ${TABLE}."ISKVI" ;;
    group_label: "Unknown"
  }

  dimension: isrefill {
    type: string
    sql: ${TABLE}."ISREFILL" ;;
    group_label: "Unknown"
  }

  dimension: itemhighlight {
    type: string
    sql: ${TABLE}."ITEMHIGHLIGHT" ;;
    group_label: "Unknown"
  }

  dimension: itemid {
    type: number
    sql: ${TABLE}."ITEMID" ;;
    primary_key: yes
    label: "Aloha ID"
  }

  dimension: itemmultmod {
    type: string
    sql: ${TABLE}."ITEMMULTMOD" ;;
    group_label: "Unknown"
  }

  dimension: itempercentmod {
    type: number
    sql: ${TABLE}."ITEMPERCENTMOD" ;;
    group_label: "Unknown"
  }

  dimension: label {
    type: string
    sql: ${TABLE}."LABEL" ;;
    group_label: "Unknown"
  }

  dimension: longname {
    type: string
    sql: ${TABLE}."LONGNAME" ;;
    label: "Long Name"
  }

  dimension: longname2 {
    type: string
    sql: ${TABLE}."LONGNAME2" ;;
    group_label: "Unknown"
  }

  dimension: mdspctxpnl {
    type: string
    sql: ${TABLE}."MDSPCTXPNL" ;;
    group_label: "Unknown"
  }

  dimension: mod1 {
    type: string
    sql: ${TABLE}."MOD1" ;;
    group_label: "Unknown"
  }

  dimension: mod10 {
    type: string
    sql: ${TABLE}."MOD10" ;;
    group_label: "Unknown"
  }

  dimension: mod2 {
    type: string
    sql: ${TABLE}."MOD2" ;;
    group_label: "Unknown"
  }

  dimension: mod3 {
    type: string
    sql: ${TABLE}."MOD3" ;;
    group_label: "Unknown"
  }

  dimension: mod4 {
    type: string
    sql: ${TABLE}."MOD4" ;;
    group_label: "Unknown"
  }

  dimension: mod5 {
    type: string
    sql: ${TABLE}."MOD5" ;;
    group_label: "Unknown"
  }

  dimension: mod6 {
    type: string
    sql: ${TABLE}."MOD6" ;;
    group_label: "Unknown"
  }

  dimension: mod7 {
    type: string
    sql: ${TABLE}."MOD7" ;;
    group_label: "Unknown"
  }

  dimension: mod8 {
    type: string
    sql: ${TABLE}."MOD8" ;;
    group_label: "Unknown"
  }

  dimension: mod9 {
    type: string
    sql: ${TABLE}."MOD9" ;;
    group_label: "Unknown"
  }

  dimension: moditemprice {
    type: string
    sql: ${TABLE}."MODITEMPRICE" ;;
    group_label: "Unknown"
  }

  dimension: modprice {
    type: number
    sql: ${TABLE}."MODPRICE" ;;
    group_label: "Unknown"
  }

  dimension: modpriceid {
    type: string
    sql: ${TABLE}."MODPRICEID" ;;
    group_label: "Unknown"
  }

  dimension: multiplier {
    type: string
    sql: ${TABLE}."MULTIPLIER" ;;
    group_label: "Unknown"
  }

  dimension: mustbwhole {
    type: string
    sql: ${TABLE}."MUSTBWHOLE" ;;
    group_label: "Unknown"
  }

  dimension: neverprintonchit {
    type: string
    sql: ${TABLE}."NEVERPRINTONCHIT" ;;
    group_label: "Unknown"
  }

  dimension: nogratuity {
    type: string
    sql: ${TABLE}."NOGRATUITY" ;;
    group_label: "Unknown"
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
    group_label: "Unknown"
  }

  dimension: parentaccess {
    type: string
    sql: ${TABLE}."PARENTACCESS" ;;
    group_label: "Unknown"
  }

  dimension: pizza {
    type: string
    sql: ${TABLE}."PIZZA" ;;
    group_label: "Unknown"
  }

  dimension: pizzasize {
    type: string
    sql: ${TABLE}."PIZZASIZE" ;;
    group_label: "Unknown"
  }

  dimension: price {
    type: number
    sql: ${TABLE}."PRICE" ;;
    group_label: "Unknown"
  }

  dimension: printifhelditem {
    type: string
    sql: ${TABLE}."PRINTIFHELDITEM" ;;
    group_label: "Unknown"
  }

  dimension: printindependently {
    type: string
    sql: ${TABLE}."PRINTINDEPENDENTLY" ;;
    group_label: "Unknown"
  }

  dimension: printoncheck {
    type: string
    sql: ${TABLE}."PRINTONCHECK" ;;
    group_label: "Unknown"
  }

  dimension: printrecipe {
    type: string
    sql: ${TABLE}."PRINTRECIPE" ;;
    group_label: "Unknown"
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
    group_label: "Unknown"
  }

  dimension: recordstatus {
    type: string
    sql: ${TABLE}."RECORDSTATUS" ;;
    group_label: "Unknown"
  }

  dimension: revitem {
    type: string
    sql: ${TABLE}."REVITEM" ;;
    group_label: "Unknown"
  }

  dimension: shortname {
    type: string
    sql: ${TABLE}."SHORTNAME" ;;
    label: "Short Name"
  }

  dimension: showindependently {
    type: string
    sql: ${TABLE}."SHOWINDEPENDENTLY" ;;
    group_label: "Unknown"
  }

  dimension: siteaccessflags {
    type: string
    sql: ${TABLE}."SITEACCESSFLAGS" ;;
    group_label: "Unknown"
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."SKU" ;;
  }

  dimension: sku2 {
    type: string
    sql: ${TABLE}."SKU2" ;;
    group_label: "Unknown"
  }

  dimension: sku3 {
    type: string
    sql: ${TABLE}."SKU3" ;;
    group_label: "Unknown"
  }

  dimension: sku4 {
    type: string
    sql: ${TABLE}."SKU4" ;;
    group_label: "Unknown"
  }

  dimension: sku5 {
    type: string
    sql: ${TABLE}."SKU5" ;;
    group_label: "Unknown"
  }

  dimension: slavetoitem {
    type: string
    sql: ${TABLE}."SLAVETOITEM" ;;
    group_label: "Unknown"
  }

  dimension: storeaccess {
    type: string
    sql: ${TABLE}."STOREACCESS" ;;
    group_label: "Unknown"
  }

  dimension: surchargemodifier {
    type: string
    sql: ${TABLE}."SURCHARGEMODIFIER" ;;
    group_label: "Unknown"
  }

  dimension: swtrcksm {
    type: string
    sql: ${TABLE}."SWTRCKSM" ;;
    group_label: "Unknown"
  }

  dimension: tokenover {
    type: string
    sql: ${TABLE}."TOKENOVER" ;;
    group_label: "Unknown"
  }

  dimension: tokenqty {
    type: string
    sql: ${TABLE}."TOKENQTY" ;;
    group_label: "Unknown"
  }

  dimension: topping {
    type: string
    sql: ${TABLE}."TOPPING" ;;
    group_label: "Unknown"
  }

  dimension: trackfoh {
    type: string
    sql: ${TABLE}."TRACKFOH" ;;
    group_label: "Unknown"
  }

  dimension: txtblue {
    type: string
    sql: ${TABLE}."TXTBLUE" ;;
    group_label: "Unknown"
  }

  dimension: txtgreen {
    type: string
    sql: ${TABLE}."TXTGREEN" ;;
    group_label: "Unknown"
  }

  dimension: txtred {
    type: string
    sql: ${TABLE}."TXTRED" ;;
    group_label: "Unknown"
  }

  dimension: typeid {
    type: string
    sql: ${TABLE}."TYPEID" ;;
    group_label: "Unknown"
  }

  dimension: usebkclr {
    type: string
    sql: ${TABLE}."USEBKCLR" ;;
    group_label: "Unknown"
  }

  dimension: usernumber {
    type: string
    sql: ${TABLE}."USERNUMBER" ;;
    group_label: "Unknown"
  }

  dimension: usetxtclr {
    type: string
    sql: ${TABLE}."USETXTCLR" ;;
    group_label: "Unknown"
  }
}
