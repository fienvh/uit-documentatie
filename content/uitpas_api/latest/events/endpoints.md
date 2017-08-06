---
---

# Endpoints

|  | Endpoint | Method | Beschrijving | Authenticatie |
| --- | --- | --- | --- | --- |
| 1 | /uitpas/cultureevent/{eventCdbid}/buy/{uitpasNumber} | POST | Registratie van verkoop ticket | Balie Medewerker |
| 2 | /uitpas/cultureevent/{eventCdbid}/cancel/{uitpasNumber} | POST | Annulatie van verkoop ticket | Balie Medewerker |
| 3 | /uitpas/cultureevent/searchCheckins | GET | Checkins doorzoeken | Balie Medewerker |
| 4 | /uitpas/cultureevent/search | GET | Uitpas aanbod doorzoeken | ConsumerRequest |
| 5 | /uitpas/cultureevent/searchTicketsales | GET | Verkoop tickets doorzoeken | Balie Medewerker |
| 6 | /uitpas/cultureevent/cancel/{ticketSaleId} | POST | Annulatie van verkoop ticket | Balie Medewerker |
| 7 | /uitpas/cultureevent/{eventCdbid}/buyonline/{uitpasNumber} | POST | Online registratie van verkoop ticket | ConsumerRequest |
| 8 | /uitpas/cultureevent/cancelonline/{ticketSaleId} | POST | Online annulatie van verkoop ticket | ConsumerRequest |