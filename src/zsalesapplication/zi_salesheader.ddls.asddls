@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface View for Sales Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_SALESHEADER
  as select from zsalesheader
  composition [0..*] of ZI_SALESITEM as _salesitem
{
  key salesorderuuid      as Salesorderuuid,
      salesorder          as Salesorder,
      salesordertype      as Salesordertype,
      description         as Description,
      salesorganization   as Salesorganization,
      soldtoparty         as Soldtoparty,
      distributionchannel as Distributionchannel,
      documentreason      as Documentreason,
      @Semantics.amount.currencyCode: 'Transactioncurrency'
      totalnetamount      as Totalnetamount,
      transactioncurrency as Transactioncurrency,
      createdbyuser       as Createdbyuser,
      @Semantics.user.createdBy: true
      createdby           as Createdby,
      @Semantics.systemDateTime.createdAt: true
      createdat           as Createdat,
      @Semantics.user.lastChangedBy: true
      lastchangedby       as Lastchangedby,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat       as Lastchangedat,
      _salesitem
}
