---
---

# CultureEvent entiteit



|| | | |
|cdbid| String| id van het event| |
|title| String| Titel van het event| |
|locationId| String| id van de locatie waar het event plaatsvindt| |
|locationName| String| naam van de locatie waar het event plaatsvindt| |
|checkinAllowed| boolean| true in een gegeven pashouder mag inchecken op het event| |
|checkinConstraint| PeriodConstraint| beperking op checkin| |
|checkinConstraintReason| ErrorCode| indien checkinAllowed false is, staat hier de reden waarom de pashouder niet mag inchecken<br> MAXIMUM\_REACHED: maximum aantal checkins bereikt INVALID\_DATE\_TIME: huidige datum niet binnen checkin periode INVALID\_CARD: de gebruikte uitpas is verwijderd INVALID\_CARD\_STATUS: de gebruikte uitpas is geblokkeerd KANSENSTATUUT\_EXPIRED: de gebruikte uitpas is verlopen ACTION\_FAILED: een algemene fout is opgetreden| |
|buyConstraintReason| ErrorCode| reden waarom een gegeven pashouder geen tickets voor het event meer mag kopen<br> INVALID\_CARD: ongeldige uitpas<br> INVALID\_CARD\_STATUS: de uitpas is geblokkeerd<br> INVALID\_CARD: de uitpas is geen kansenpas<br> KANSENSTATUUT\_EXPIRED: de kansenpas is verlopen<br> MAXIMUM\_REACHED: er zijn reeds het maximum aantal beschikbare tickets verkocht<br> INVALID\_DATE\_CONSTRAINTS: verkoop van tickets vandaag niet toegelaten| |
|price| double| prijs van het event| |
|tariff| double| prijs die een gegeven pashouder voor het event moet betalen| |
|title| String| titel van het event| |
|numberOfPoints| int| aantal punten dat verdiend kan worden door in te checken op dit evenement| |
|organiserId| String| id van de organisator van het event| |
|organiserName| String| Naam van de organisator van het event| |
|calendar| Calendar| Kalender beschrijving van wanneer het evenement plaats vindt. (zie calendar in <http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL>)| |
|calendarsummary| String| Tekstuele kalender beschrijving. (zie ook calendarsummary in <http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL>)| |
|performers| List<Performer>| Lijst van performers van het evenement (zie Performers in <http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL>)| |
|ticketSales| List<TicketSale>| Lijst van mogelijke ticket verkoop voor het event| |
|checkinStartDate| W3C Date| tijdstip voor start van de huidige of volgende checkin periode. Indien het evenement verlopen is, is dit veld niet beschikbaar.| |
|checkinEndDate| W3C Date| tijdstip voor het einde van de huidige of volgende checkin periode. Indien het evenement verlopen is, is dit veld niet beschikbaar.||

