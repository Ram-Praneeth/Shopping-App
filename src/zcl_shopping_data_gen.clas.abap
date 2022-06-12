CLASS zcl_shopping_data_gen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .

    class-DATA : gt_shop TYPE STANDARD TABLE OF zshopping WITH DEFAULT KEY.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_shopping_data_gen IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  DATA gt_temp1 TYPE STANDARD TABLE OF zshopping.

     gt_shop = VALUE #(

     ( client = sy-mandt itemuid = '1000000001' catergory = 'ELECTRONICS' classification = 'GAMING' brand = 'SONY' item = 'Sony PS5'
       retpolicy = 'X' retperiod = 30 quantity = 1 units = 'PC' price = 500 currency = 'EUR' discnt = 10
       createdby = sy-uname  createdat = sy-uzeit lastchangedby = sy-uname   lastchangedat = sy-uzeit local_last_changed_at = sy-uzeit )


     ( client = sy-mandt itemuid = '1000000002' catergory = 'AUTOMOBILE' classification = 'VEHICLE' brand = 'HYUNDAI' item = 'HYUNDAI CRETA S PLUS KNIGHT'
       retpolicy = '' retperiod = 0   quantity = 1 units = 'PC' price = 1650000 currency = 'INR' discnt = 0
       createdby = sy-uname  createdat = sy-uzeit lastchangedby = sy-uname   lastchangedat = sy-uzeit local_last_changed_at = sy-uzeit )


     ( client = sy-mandt itemuid = '1000000003' catergory = 'APPAREL' classification = 'CLOTHING' brand = 'WROGN' item = 'WROGN BLUE JEANS - 34'
       retpolicy = 'X' retperiod = 10   quantity = 1 units = 'PC' price = 1950 currency = 'INR' discnt = 5
       createdby = sy-uname  createdat = sy-uzeit lastchangedby = sy-uname   lastchangedat = sy-uzeit local_last_changed_at = sy-uzeit )

     ).


    IF gt_shop IS NOT INITIAL.

*    data(gr_obj) = new zcl_shopping_data_gen(  ).

      MODIFY zshopping FROM TABLE @gt_shop.
      COMMIT WORK.

    ENDIF.

    IF sy-subrc EQ 0.
      out->write(
        EXPORTING
          data   =  gt_shop
          name   = 'Shopping data'
*      RECEIVING
*        output =
      ).

    ENDIF.
  ENDMETHOD.

ENDCLASS.
