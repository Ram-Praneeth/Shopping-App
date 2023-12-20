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

    lt_data = select itemid,category,classification,item,itemtyp,brand,
                  CASE
                    when category = 'AUTOMOBILE' then ''
                    ELSE retpolicy
                   END as retpolicy,
                  CASE
                   when retpolicy <> 'X'THEN  0
                   ELSE retperiod
                  END AS retperiod,
                  quantity,units,stock_chk,price,currency,discnt,
                  (  price * ( discnt /100 ) ) as red_amt
                 from zshopping_base;

      return select itemid,category,classification,item,itemtyp,brand,retpolicy,
                    concat(concat(retperiod,' '),'days') as retperiod,
                    quantity,units,stock_chk,price,currency,discnt,
                    quantity * red_amt as redu_price,
                    case
                      when discnt = 0 then price
                      else quantity * ( price - red_amt )
                    end as final_price
                    from :lt_data;
  endmethod.

ENDCLASS.
