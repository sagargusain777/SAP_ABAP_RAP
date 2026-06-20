@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Sales Item'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SALESITEM
  as select from zsalesitem
  association to parent ZI_SALESHEADER as _salesheader on $projection.Salesorderuuid = _salesheader.Salesorderuuid
{
  key salesitemuuid         as Salesitemuuid,
      salesorderuuid        as Salesorderuuid,
      salesorderitem        as Salesorderitem,
      salesordeitemcategory as Salesordeitemcategory,
      salesorderitemtext    as Salesorderitemtext,
      material              as Material,
      plant                 as Plant,
      @Semantics.quantity.unitOfMeasure: 'Orderquantityunit'
      orderquantity         as Orderquantity,
      orderquantityunit     as Orderquantityunit,
      @Semantics.amount.currencyCode: 'Transactioncurrency'
      netamount             as Netamount,
      transactioncurrency   as Transactioncurrency,
      creationbyuser        as Creationbyuser,
      @Semantics.user.createdBy: true
      createdby             as Createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat             as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby         as Lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat         as Lastchangedat,
      _salesheader
}
