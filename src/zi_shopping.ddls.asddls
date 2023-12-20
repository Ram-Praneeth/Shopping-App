@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shopping Interface view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_SHOPPING
  as select from zshopping_calc_tf
{
  key itemid                as ItemID,
  key category              as Category,
  key classification        as Classification,
      item                  as Item,
      itemtyp               as ItemTyp,
      brand                 as Brand,
      retpolicy             as Retpolicy,
      retperiod             as Retperiod,
      @Semantics.quantity.unitOfMeasure: 'units'
      quantity              as Quantity,
      units                 as Units,
      stock_chk             as StockChk,
      @Semantics.amount.currencyCode: 'currency'
      price                 as Price,
      currency              as Currency,
      discnt                as Discount,
      @Semantics.amount.currencyCode: 'currency'
      redu_price            as ReducedPrice,
      @Semantics.amount.currencyCode: 'currency'
      final_price           as FinalPrice,
      @Semantics.user.createdBy: true
      createdby             as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      createdat             as CreatedAt,
      @Semantics.user.lastChangedBy: true
      lastchangedby         as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat         as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt
}
