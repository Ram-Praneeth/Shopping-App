@AbapCatalog.sqlViewName: 'ZSHOPPING_BASEV'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shopping view'
define view zshopping_base
  as select from zshopping
{
      //key client,
  key itemuid,
  key catergory,
  key classification,
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
      discnt
}
