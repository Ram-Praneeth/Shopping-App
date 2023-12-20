@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Shopping Consumption View'
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZC_SHOPPING
  as projection on ZI_SHOPPING
{
      @EndUserText: { label: 'Item Id',
                      quickInfo: 'Item Identification' }
      @Search.defaultSearchElement: true                      
  key ItemID,
      @EndUserText: { label: 'Category',
                      quickInfo: 'Category' }
      @Search.defaultSearchElement: true                      
  key Category,
      @EndUserText: { label: 'Classification',
                      quickInfo: 'Classification' }
      @Search.defaultSearchElement: true                      
  key Classification,
      @EndUserText: { label: 'Item Name',
                      quickInfo: 'Name of the Item' }
      @Search.defaultSearchElement: true                      
      Item,
      @EndUserText: { label: 'Item Type',
                      quickInfo: 'Item Type' }
      @Search.defaultSearchElement: true                      
      ItemTyp,
      @EndUserText: { label: 'Brand',
                      quickInfo: 'Brand' }
      @Search.defaultSearchElement: true                      
      Brand,
      @EndUserText: { label: 'Retention Policy',
                      quickInfo: 'Retention Policy' }
      Retpolicy,
      @EndUserText: { label: 'Retention Period',
                      quickInfo: 'Retention Period' }
      Retperiod,
      @Semantics.quantity.unitOfMeasure: 'Units'
      @EndUserText: { label: 'Quantity',
                      quickInfo: 'Quantity' }
      Quantity,
      @EndUserText: { label: 'Units',
                      quickInfo: 'Units' }
      Units,
      @EndUserText: { label: 'Stock left',
                      quickInfo: 'Stock left' }
      StockChk,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText: { label: 'Item Price',
                      quickInfo: 'Item Price' }
      Price,
      @EndUserText: { label: 'Currency',
                      quickInfo: 'Currency' }
      Currency,
      @EndUserText: { label: 'Discount',
                      quickInfo: 'Discount' }
      Discount,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText: { label: 'Price Reduction',
                      quickInfo: 'ReducedPrice' }
      ReducedPrice,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText: { label: 'Final Price',
                      quickInfo: 'Final Price' }
      FinalPrice,
      @EndUserText: { label: 'Created By',
                      quickInfo: 'Identifying the User who created the Purchasing Record.' }
      CreatedBy,
      @EndUserText: { label: 'Created By',
                      quickInfo: 'Identifying when the User created the Purchasing Record.' }
      CreatedAt,
      @EndUserText: { label: 'Changed By',
                      quickInfo: 'Identifying who made the most recent change in Purchasing Record.' }
      LastChangedBy,
      @EndUserText: { label: 'Changed By',
                      quickInfo: 'Identifying when the most recent change in Purchasing Record done.' }
      LastChangedAt,
      LocalLastChangedAt
}
