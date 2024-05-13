CLASS zcl_data_22 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_data_22 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

* Data Objects with Built-in Types
**********************************************************************

    " comment/uncomment the following declarations and check the output
    DATA variable TYPE string.
    DATA ivariable TYPE i.
    DATA dvariable TYPE d.
    DATA cvariable TYPE c LENGTH 10.
    DATA nvariable TYPE n LENGTH 10.
    DATA pvariable TYPE p LENGTH 8 DECIMALS 2.
    DATA date TYPE d VALUE '12021452'.
    DATA result TYPE string.
    DATA a1 TYPE string VALUE 'Hey' .
    DATA a2 TYPE string VALUE 'Hari'.
* Output
**********************************************************************

    out->write(  'Result with Initial Value)' ).
    out->write(   variable ).
    out->write(  '---------' ).

    variable = '19891109'.

    out->write(  'Result with Value 19891109' ).
    out->write(   variable ).
    out->write(  '---------' ).
    ivariable = 22.
    out->write( ivariable ).
    dvariable = SY-DATUM.
    out->write( dvariable ).
    cvariable = 'developers'.
    out->write( cvariable ).
    nvariable = 43.
    out->write( nvariable ).
    clear ivariable.
    out->write( ivariable ).
    out->write(  date ).
*    result = a1 && a2 .
    out->write( a1 && a2 ).

  ENDMETHOD.
ENDCLASS.
