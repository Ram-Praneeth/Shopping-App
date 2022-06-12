CLASS zcl_shopping_tf DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .

    CLASS-METHODS : calc_shopping FOR TABLE FUNCTION zshopping_calc_tf.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_shopping_tf IMPLEMENTATION.


  METHOD calc_shopping BY DATABASE FUNCTION FOR HDB LANGUAGE SQLSCRIPT
          OPTIONS READ-ONLY USING zshopping_base.

    lt_data = select itemuid,catergory,classification,item,
                  brand,retpolicy,
                  CASE
                  when retpolicy <> 'X'
                   THEN  0
                   ELSE retperiod
                  END AS retperiod,
                  quantity,units,price,currency,discnt,
                  (  price * ( discnt /100 ) ) as red_amt
                 from zshopping_base;

      return Select itemuid,catergory,classification,item,
                  brand,retpolicy,
                  case
                  when retpolicy <> 'X'
                   then  0
                   else retperiod
                  end as retperiod,
                  quantity,units,price,currency,discnt,
                  case when discnt = 0
                  then price
                  else
                   ( price - red_amt ) end  as final_price
                 from :lt_data;

  endmethod.

ENDCLASS.
