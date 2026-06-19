CLASS zcl_sagar_amdp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    INTERFACES if_oo_adt_classrun.

    CLASS-METHODS add_num
      AMDP OPTIONS READ-ONLY CDS SESSION CLIENT DEPENDENT
      IMPORTING
        VALUE(a)      TYPE i
        VALUE(b)      TYPE i
      EXPORTING
        VALUE(result) TYPE i .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sagar_amdp IMPLEMENTATION.
  METHOD add_num BY DATABASE PROCEDURE FOR HDB LANGUAGE SQLSCRIPT "Indicates the AMDP Method
  OPTIONS READ-ONLY.
    result := :a + :b ;
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

    zcl_sagar_amdp=>add_num(
    EXPORTING
        a = 10
        b = 15
    IMPORTING
        result = DATA(lv_result)

    ).

    out->write(
    EXPORTING
    data = | The result is { lv_result }|
    ).


    ENDMETHOD.

ENDCLASS.
