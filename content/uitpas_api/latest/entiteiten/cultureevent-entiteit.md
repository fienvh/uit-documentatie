---
---

# CultureEvent entiteit

| **Parameter** | **Type** | **Beschrijving** |
| cdbid | String | id van het event |
| title | String | Titel van het event |
| locationId | String | id van de locatie waar het event plaatsvindt |
| locationName | String | naam van de locatie waar het event plaatsvindt |
| checkinAllowed | boolean | true in een gegeven pashouder mag inchecken op het event |
| checkinConstraint | PeriodConstraint | beperking op checkin |
| checkinConstraintReason | ErrorCode | indien checkinAllowed false is, staat hier de reden waarom de pashouder niet mag inchecken<br>MAXIMUM_REACHED: maximum aantal checkins bereikt@@INVALID_DATE_TIME: huidige datum niet binnen checkin periode@@INVALID_CARD: de gebruikte uitpas is verwijderd@@INVALID_CARD_STATUS: de gebruikte uitpas is geblokkeerd@@KANSENSTATUUT_EXPIRED: de gebruikte uitpas is verlopen@@ACTION_FAILED: een algemene fout is opgetreden |
| buyConstraintReason | ErrorCode | reden waarom een gegeven pashouder geen tickets voor het event meer mag kopen<br>INVALID_CARD: ongeldige uitpas<br>INVALID_CARD_STATUS: de uitpas is geblokkeerd<br>INVALID_CARD: de uitpas is geen kansenpas<br>KANSENSTATUUT_EXPIRED: de kansenpas is verlopen<br>MAXIMUM_REACHED: er zijn reeds het maximum aantal beschikbare tickets verkocht<br>INVALID_DATE_CONSTRAINTS: verkoop van tickets vandaag niet toegelaten |
| price | double | prijs van het event |
| tariff | double | prijs die een gegeven pashouder voor het event moet betalen |
| title | String | titel van het event |
| numberOfPoints | int | aantal punten dat verdiend kan worden door in te checken op dit evenement |
| organiserId | String | id van de organisator van het event |
| organiserName | String | Naam van de organisator van het event |
| calendar | Calendar | Kalender beschrijving van wanneer het evenement plaats vindt. (zie calendar in [http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL)) |
| calendarsummary | String | Tekstuele kalender beschrijving. (zie ook calendarsummary in [http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL)) |
| performers | List<Performer> | Lijst van performers van het evenement (zie Performers in [http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL)) |
| ticketSales | List<TicketSale> | Lijst van mogelijke ticket verkoop voor het event |
| checkinStartDate | W3C Date | tijdstip voor start van de huidige of volgende checkin periode. Indien het evenement verlopen is, is dit veld niet beschikbaar. |
| checkinEndDate | W3C Date | tijdstip voor het einde van de huidige of volgende checkin periode. Indien het evenement verlopen is, is dit veld niet beschikbaar. |