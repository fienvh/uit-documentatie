---
---

# TicketSale entiteit (bij zoekopdracht)

| **Parameter** | **Type** | **Beschrijving** |
| id | Long | identificatie van de ticketverkoop |
| creationDate | W3C Date | datum van creatie van de ticketverkoop |
| createdVia | String | de ServiceConsumer ID van de balie voor de ticketverkoop |
| price | double | prijs voor het event |
| tariff | double | prijs betaald voor het ticket |
| nodeId | String | identificatie van het event waarvoor het ticket werd verkocht (=cdbid) |
| nodeTitle | String | titel van het event |
| userHomeCity | String | naam van de woonplaats van de pashouder op het moment van ticketverkoop |
| firstName | String | voornaam van de pashouder |
| lastName | String | achternaam van de pashouder |
| userId | String | userId van de pashouder |
| organiser | String | naam van de organiser van het evenement |
| dateOfBirth | W3CDate | geboortedatum van de pashouder |
| uitpasNumber | String | huidige uitpasnummer van de pashouder |
| status | String | huidige status van de uitpas van de pashouder |
| ticketSaleCoupon | TicketSaleCoupon | gegevens indien een ticketsalecoupon werd gebruikt |
| isGroupPass | boolean | true indien de verkoop gebeurde met een groepspas |