@EndUserText.label : 'Sales Item Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zcdt_salesitem {

  key client   : abap.clnt not null;
  salesorderid : abap.char(10) not null;
  itemnumber   : abap.numc(10);
  productid    : abap.char(10);
  product_desc : abap.char(50);
  @Semantics.quantity.unitOfMeasure : 'zcdt_salesitem.unit'
  quantity     : abap.quan(10,2);
  unit         : abap.unit(2);
  @Semantics.amount.currencyCode : 'zcdt_salesitem.currency'
  unitprice    : abap.curr(10,2);
  @Semantics.amount.currencyCode : 'zcdt_salesitem.currency'
  itemamount   : abap.curr(10,2);
  currency     : abap.cuky;
  status       : abap.char(5);

}