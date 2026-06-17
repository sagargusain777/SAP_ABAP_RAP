@EndUserText.label : 'Sales Header Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zcdt_salesheader {

  key client       : abap.clnt not null;
  @EndUserText.label : 'Sales Order Number'
  key salesorderid : abap.char(10) not null;
  @EndUserText.label : 'Customer Number'
  customerid       : abap.char(10);
  @EndUserText.label : 'Customer Name'
  customername     : abap.char(50);
  @EndUserText.label : 'Order Date'
  orderdate        : abap.dats;
  @EndUserText.label : 'Delivery Date'
  deliverydate     : abap.dats;
  @EndUserText.label : 'Currency'
  currency         : abap.cuky;
  @EndUserText.label : 'Total Amount'
  @Semantics.amount.currencyCode : 'zcdt_salesheader.currency'
  totalamount      : abap.curr(10,2);
  @EndUserText.label : 'Status'
  status           : abap.char(10);
  createdby        : abp_creation_user;
  createdat        : abp_creation_tstmpl;
  lastchangedby    : abp_lastchange_user;
  lastchangedat    : abp_lastchange_tstmpl;

}