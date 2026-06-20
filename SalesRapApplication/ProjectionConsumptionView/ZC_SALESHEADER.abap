@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection View for Sales Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_SALESHEADER as projection on ZI_SALESHEADER as  SalesHeader
{
    key Salesorderuuid,
    Salesorder,
    Salesordertype,
    Description,
    Salesorganization,
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
