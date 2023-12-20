@AbapCatalog.sqlViewName: 'ZSHOPPING_BASEV'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shopping view'
define view zshopping_base
  as select from zshopping
{
  key itemid,
  key category,
  key classification,
      item,
      itemtyp,
      brand,
      quantity,
      units,
      stock_chk,
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
