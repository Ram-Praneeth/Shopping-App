@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shopping view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}   
define view entity zshopping_base
  as select from zshopping
{
  key itemid,
  key category,
  key classification,
      item,
      itemtyp,
      brand,
      @Semantics.quantity.unitOfMeasure: 'units'
      quantity,
      units,
      stock_chk,
      @Semantics.amount.currencyCode: 'currency'
      price,
      currency,
      discnt,
      retpolicy,
      retperiod,
      createdby,
      createdat,
      lastchangedby,
      lastchangedat,
      local_last_changed_at
}
