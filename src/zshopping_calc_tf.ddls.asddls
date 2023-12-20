@EndUserText.label: 'Shopping Table function'
@ClientHandling.type: #CLIENT_INDEPENDENT
@AccessControl.authorizationCheck: #NOT_REQUIRED
define table function zshopping_calc_tf
returns
{
  key itemid                : zitemid;
  key category              : zitem_cat;
  key classification        : abap.char(10);
      item                  : zitem_clas;
      itemtyp               : zitem_typ;
      brand                 : abap.char(20);
      retpolicy             : abap_boolean;
      retperiod             : abap.char( 10 );
      quantity              : abap.quan(13,3);
      units                 : abap.unit(3);
      stock_chk             : abap.int1;
      price                 : abap.curr(23,2);
      currency              : abap.cuky;
      discnt                : abap.int1;
      redu_price            : abap.curr( 23, 2 );
      final_price           : abap.curr( 23, 2 );
      createdby             : syuname;
      createdat             : timestampl;
      lastchangedby         : syuname;
      lastchangedat         : timestampl;
      local_last_changed_at : abp_locinst_lastchange_tstmpl;
}
implemented by method
  zcl_shopping_tf=>calc_shopping;