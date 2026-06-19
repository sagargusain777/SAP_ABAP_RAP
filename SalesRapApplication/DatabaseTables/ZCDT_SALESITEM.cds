@EndUserText.label : 'Sales Item Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zsalesitem {

  key client            : abap.clnt not null;
  key salesitemuuid     : sysuuid_x16 not null;
  salesorderuuid        : sysuuid_x16;
  salesorderitem        : posnr_va;
  salesordeitemcategory : pstyv;
  salesorderitemtext    : arktx;
  material              : matnr;
  plant                 : werks_d;
  @Semantics.quantity.unitOfMeasure : 'zsalesitem.orderquantityunit'
  orderquantity         : kwmeng;
  orderquantityunit     : vrkme;
  @Semantics.amount.currencyCode : 'zsalesitem.transactioncurrency'
  netamount             : abap.curr(10,2);
  transactioncurrency   : waerk;
  creationbyuser        : abap.char(50);
  createdby             : abp_creation_user;
  createdat             : abp_creation_tstmpl;
  lastchangedby         : abp_lastchange_user;
  lastchangedat         : abp_lastchange_tstmpl;

}