@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Item Type CDS View Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ITEMTYP
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name : 'ZITEM_TYP' )
{
      @ObjectModel.text.element: ['Description']
  key cast(left( value_low, 4 ) as zitem_typ ) as ItemType,
      text                                     as Description
}
where
      language       = $session.system_language
  and value_position is not initial
