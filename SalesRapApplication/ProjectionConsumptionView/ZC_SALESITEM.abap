@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Sales Item'
@Search.searchable: true
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_SALESITEM as projection on ZI_SALESITEM as SalesItem
{
    key Salesitemuuid,
    Salesorderuuid,
    Salesorderitem,
    Salesordeitemcategory,
    Salesorderitemtext,
    Material,
    Plant,
    @Semantics.quantity.unitOfMeasure: 'Orderquantityunit'
    Orderquantity,
    Orderquantityunit,
    @Semantics.amount.currencyCode: 'Transactioncurrency'
    Netamount,
    Transactioncurrency,
    Creationbyuser,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
   _salesheader : redirected to parent ZC_SALESHEADER
}
