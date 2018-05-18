---
---

# CheckinActivity entiteit

| **Parameter** | **Type** | **Beschrijving** |
| id | String | Culturefeed activity ID |
| nodeID | String | node ID van dit activiteit object. (= CDBID van het event) |
| nodeTitle | String | titel van de node |
| private | boolean | privacy status van dit activiteit object |
| createdViaId | String | de ServiceConsumer ID van dit activiteit object |
| createdVia | String | Naam van de ServiceConsumer van dit activiteit object |
| points | int | de punten van dit activiteit object |
| contentType | String | het type content waarover deze activiteit handelt. |
| type | int | de consumptionType van dit Activiteit object. CHECKIN = 12 |
| value | String | waarde van dit Activiteit object |
| userId | String | user ID van de auteur van dit activiteit object |
| firstName | String | voornaam van de auteur van dit activiteit object |
| lastName | String | achternaam van de auteur van dit activiteit object |
| depiction | String | depiction URL van de auteur van dit activiteit object |
| nick | String | nick van de auteur van dit activiteit object |
| gender | String | geslacht van de auteur van dit activiteit object |
| creationDate | <u>W3CDate</u> | creatie datum van dit activiteit object |
| kansenStatuut | boolean | al dan niet kansenstatuut van de auteur van deze checkin op het moment van inchecken. |
| location | String | naam van gemeente waar deze checkin plaats vindt |
| organiser | String | naam van de organiser van het evenement waarop ingecheckt wordt |
| userHomeCity | String | naam van de woonplaats van de gebruiker op het moment van inchecken |
| firstName | String | voornaam van de pashouder die de checkin uitvoerde |
| secondName | String | tweede naam van de pashouder die de checkin uitvoerde |
| lastName | String | achternaam van de pashouder die de checkin uitvoerde |
| userPoints | int | totaal aantal punten van de pashouder die de checkin uitvoerde |
| userHomeCity | String | thuislocatie van de pashouder |
| userPoints | double | Huidig aantal punten van de pashouder |
| userHomeLocationLon | Geo coordinaten | Lengtegraad van de thuislocatie van de pashouder (volgens zijn gekoppeld UiTid profiel) |
| userHomeLocationLat | Geo coordinaten | Breedtegraad van de thuislocatie van de pashouder (volgens zijn gekoppeld UiTid profiel) |
| eventLocationLon | Geo coordinaten | Lengtegraad van de locatie van het evenement |
| eventLocationLat | Geo coordinaten | Breedtegraad van de locatie van het evenement |
| organiser | String | naam van de organisator van het event |
| organiserCardSystems | List<Integer | lijst van kaartsystemen waarin de organisator actief is |