CLASS zcl_insertdatatables DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
  METHODS insertdata.
  METHODS deletedata.
ENDCLASS.



CLASS zcl_insertdatatables IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  "deletedata(  ).
  insertdata( ).

  out->write(
  EXPORTING
  data = 'Processing is Completed' ).

  ENDMETHOD.

  METHOD deletedata.
  DELETE FROM zsalesheader.
  DELETE FROM zsalesitem.
  ENDMETHOD.
  METHOD insertdata.

  DATA: lt_salesheader TYPE TABLE OF zsalesheader,
        lt_salesitem TYPE TABLE OF zsalesitem.

APPEND VALUE #(
    client              = '100'
    salesorderuuid      = '00112233445566778899AABBCCDDEEFF'
    salesorder          = '5000000001'
    salesordertype      = 'OR'
    description         = 'Laptop Order'
    salesorganization   = '1000'
    soldtoparty         = '0000001001'
    distributionchannel = '10'
    documentreason      = 'New Customer'
    totalnetamount      = '22000.00'
    transactioncurrency = 'INR'
    createdbyuser       = 'SAGAR'
    createdby           = 'SAGAR'
    createdat           = '20260619090000.0000000'
    lastchangedby       = 'SAGAR'
    lastchangedat       = '20260619090000.0000000'
) TO lt_salesheader.

APPEND VALUE #(
    client              = '100'
    salesorderuuid      = '112233445566778899AABBCCDDEEFF00'
    salesorder          = '5000000002'
    salesordertype      = 'OR'
    description         = 'Office Equipment Order'
    salesorganization   = '1000'
    soldtoparty         = '0000001002'
    distributionchannel = '10'
    documentreason      = 'Repeat Customer'
    totalnetamount      = '18000.00'
    transactioncurrency = 'INR'
    createdbyuser       = 'SAGAR'
    createdby           = 'SAGAR'
    createdat           = '20260619090000.0000000'
    lastchangedby       = 'SAGAR'
    lastchangedat       = '20260619090000.0000000'
) TO lt_salesheader.

APPEND VALUE #(
    client              = '100'
    salesorderuuid      = '2233445566778899AABBCCDDEEFF0011'
    salesorder          = '5000000003'
    salesordertype      = 'OR'
    description         = 'Mobile Accessories Order'
    salesorganization   = '1000'
    soldtoparty         = '0000001003'
    distributionchannel = '10'
    documentreason      = 'Online Order'
    totalnetamount      = '12000.00'
    transactioncurrency = 'INR'
    createdbyuser       = 'SAGAR'
    createdby           = 'SAGAR'
    createdat           = '20260619090000.0000000'
    lastchangedby       = 'SAGAR'
    lastchangedat       = '20260619090000.0000000'
) TO lt_salesheader.


APPEND VALUE #(
 salesitemuuid         = 'AAAABBBBCCCCDDDDEEEEFFFF00001111'
 salesorderuuid        = '00112233445566778899AABBCCDDEEFF'
 salesorderitem        = '000010'
 salesordeitemcategory = 'TAN'
 salesorderitemtext    = 'Laptop'
 material              = 'MAT0000001'
 plant                 = '1000'
 orderquantity         = '1'
 orderquantityunit     = 'EA'
 netamount             = '18000.00'
 transactioncurrency   = 'INR'
 creationbyuser        = 'SAGAR'
) TO lt_salesitem.

APPEND VALUE #(
 salesitemuuid         = 'AAAABBBBCCCCDDDDEEEEFFFF00002222'
 salesorderuuid        = '00112233445566778899AABBCCDDEEFF'
 salesorderitem        = '000020'
 salesordeitemcategory = 'TAN'
 salesorderitemtext    = 'Laptop Bag'
 material              = 'MAT0000002'
 plant                 = '1000'
 orderquantity         = '2'
 orderquantityunit     = 'EA'
 netamount             = '4000.00'
 transactioncurrency   = 'INR'
 creationbyuser        = 'SAGAR'
) TO lt_salesitem.

INSERT zsalesheader FROM TABLE @lt_salesheader.
INSERT zsalesitem FROM TABLE @lt_salesitem.





  ENDMETHOD.

ENDCLASS.