@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shopping Interface view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SHOPPING
  as select from zshopping_calc_tf
{
  itemuid,
  catergory,
  classification,
  item,
  brand,
  retpolicy,
  retperiod,
  @Semantics.quantity.unitOfMeasure: 'units'
  quantity,
  units,
  @Semantics.amount.currencyCode: 'currency'
  price,
  currency,
  discnt,
  @Semantics.amount.currencyCode: 'currency'
  redu_price,
  @Semantics.amount.currencyCode: 'currency'
  final_price
}
