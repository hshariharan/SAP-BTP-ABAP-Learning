CLASS zcl_fibbo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fibbo IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
* DATA a1 TYPE i VALUE 0.
* DATA a2 TYPE i VALUE 1.
* DATA a3 TYPE i.
* DO 10 TIMES.
* a3 = a1 + a2 .
* a1 = a2.
* a2 = a3.
* out->write( a3 ).
* ENDDO.

   CONSTANTS max_count TYPE i VALUE 20.

  DATA numbers TYPE TABLE OF i.

  DO max_count TIMES.

   CASE sy-index.
      WHEN 1.
        APPEND 0 TO numbers.
      WHEN 2.
        APPEND 1 TO numbers.
   ENDCASE.

  ENDDO.


  ENDMETHOD.
ENDCLASS.
