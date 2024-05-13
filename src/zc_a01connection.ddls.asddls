@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_A01CONNECTION'
define root view entity ZC_A01CONNECTION
  provider contract transactional_query
  as projection on ZR_A01CONNECTION
{
  key UUID,
  CarrID,
  ConnID,
  AirportFrom,
  CityFrom,
  CountryFrom,
  AirportTo,
  CityTo,
  CountryTo,
  LocalLastChangedAt
  
}
