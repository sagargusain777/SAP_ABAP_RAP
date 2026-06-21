@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Sales Header'
@Search.searchable: true
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_SALESHEADER as projection on ZI_SALESHEADER as  SalesHeader
{
    key Salesorderuuid,
    @Search.defaultSearchElement: true
    Salesorder,
    Salesordertype,
    Description,
    @Search.defaultSearchElement: true
    Salesorganization,
 //   @Search.defaultSearchElement: true
    Soldtoparty,
    Distributionchannel,
    Documentreason,
    @Semantics.amount.currencyCode: 'TransactionCurrency'
    Totalnetamount,
    Transactioncurrency,
    Createdbyuser,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
   _salesitem : redirected to composition child ZC_SALESITEM
}
