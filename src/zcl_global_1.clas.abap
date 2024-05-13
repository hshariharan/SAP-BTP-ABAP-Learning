CLASS zcl_global_1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_global_1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  DATA connection TYPE REF to lcl_.
*  DATA connection2 TYPE REF to lcl_.
*  connection = new #(  ).
*  connection->carrier_id = 'LH'.
*  connection->connection_id = '400'.
*  connection2 = connection.
    DATA carrier_id TYPE /dmo/carrier_id.
    DATA connection_id TYPE /dmo/connection_id.

    DATA connection TYPE REF TO lcl_.
    DATA connections TYPE TABLE OF REF TO lcl_.

    connection = NEW #(  ).

    connection->set_attributes(
    EXPORTING
    i_carrier_id = 'LH'
    i_connection_id = '0400' ).

    APPEND connection TO connections.

    connection = NEW #(  ).

    connection->set_attributes(
    i_carrier_id = 'AA'
    i_connection_id = '0017' ).

    LOOP AT connections INTO connection.

      connection->get_attributes(
      IMPORTING
      e_carrier_id = carrier_id
      e_connection_id = connection_id ).

      out->write( |Flight connection { carrier_id } { connection_id }| ).

    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
