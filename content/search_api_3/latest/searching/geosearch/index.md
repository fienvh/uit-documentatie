---
---

# Geographic search

You can search offers by their geo-information:

* Using pre-indexed geographical shapes [search by shape](../../searching/geosearch/shape)
* Using coordinates, in combination with a distance [search by geo-distance](../../searching/geosearch/distance)

Alternatively, you can search offers by their address-information

* All offers that have (a location with) a specific postalCode [Address](../../searching/Address)
* All offers that are located in a specific country [Address](../../searching/Address)

It is important to note the difference between both location-based searches. An offer can have a postalCode that refers to one specific (sub)municipality (eg "3010", for Kessel-Lo, Leuven), but the coördinates calculated for this place are located in a neighbouring (sub)municipality (eg "Heverlee" in Leuven).

When searching for all offers located in the shape of submunicipality 'Kessel-Lo' (`nis-24062C`), the offer mentioned above will not return as a result, as it is indexed in the shape of submunicipality 'Heverlee' (`nis-24062-Z`), although it has the postalCode for Kessel-Lo ("3010")
