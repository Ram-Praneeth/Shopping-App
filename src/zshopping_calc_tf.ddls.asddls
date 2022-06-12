@EndUserText.label: 'Shopping Table function'
@ClientHandling.type: #CLIENT_INDEPENDENT
@AccessControl.authorizationCheck: #NOT_REQUIRED
define table function zshopping_calc_tf
returns {
  itemuid           : abap.char(10);
  catergory         : abap.char(15);
  classification    : abap.char(10);
  item                  : abap.char(100);
  brand                 : abap.char(20);
  retpolicy             : abap_boolean;
  retperiod             : abap.int1;
  quantity              : abap.quan(13,3);
  units                 : abap.unit(3);
  price                 : abap.curr(23,2);
  currency              : abap.cuky;
  discnt                : abap.int1;
  final_price           : abap.curr( 23, 2 );
//  createdby             : syuname;
//  createdat             : timestampl;
//  lastchangedby         : syuname;
//  lastchangedat         : timestampl;
//  local_last_changed_at : abp_locinst_lastchange_tstmpl;
  
}
implemented by method zcl_shopping_tf=>calc_shopping;