CLASS zcl_variable DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_variable IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA num1 TYPE i VALUE -8.
    DATA num2 TYPE i VALUE 6.

    DATA result TYPE p LENGTH 8 DECIMALS 2.
    result = num1 / num2.
*    DATA(result) = num1 / num2.
*    DATA(output) = |{ num1 } / { num2 } = result |.

    out->write( result ).
  ENDMETHOD.
ENDCLASS.
