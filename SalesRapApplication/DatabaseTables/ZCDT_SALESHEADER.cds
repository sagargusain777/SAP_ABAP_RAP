@EndUserText.label : 'Sales Header Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zsalesheader {

  key client          : abap.clnt not null;
  key salesorderuuid  : sysuuid_x16 not null;
  salesorder          : vbeln_va;
  salesordertype      : auart;
  description         : abap.char(50);
  salesorganization   : vkorg;
  soldtoparty         : kunag;
  distributionchannel : vtweg;
  documentreason      : abap.char(90);
  @Semantics.amount.currencyCode : 'zsalesheader.transactioncurrency'
  totalnetamount      : abap.curr(10,2);
  transactioncurrency : waerk;
  createdbyuser       : abap.char(40);
  createdby           : abp_creation_user;
  createdat           : abp_creation_tstmpl;
  lastchangedby       : abp_lastchange_user;
  lastchangedat       : abp_lastchange_tstmpl;

}