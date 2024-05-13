CLASS zcl_emls DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_emls IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA update_tab TYPE TABLE FOR UPDATE /DMO/R_AgencyTP.

  update_tab = VALUE #( ( AgencyID = '025893' Name = 'Hari' ) ).

  MODIFY ENTITIES OF /DMO/R_AgencyTP
  ENTITY /DMO/R_AgencyTP
  UPDATE FIELDS ( name )
  WITH update_tab.


  ENDMETHOD.
ENDCLASS.
