---
---

# Inchecken op basis van checkin code

_Method_<br> POST

_URL_<br> {prefix}/uitpas/enduser/checkin

Parameters: (application/x-www-form-urlencoded)

 

|uitpasNumber| uitpas nummer van de pashouder die een punt wil sparen| |
|checkinCode| de QR code string||

_Authenticatie_<br> _Consumer request_

_Required permission_<br> De consumer die de actie uitvoert moet "punt sparen met QR code" rechten hebben.

**Response**

 

|code| Statuscode van de request:<br> Mogelijke codes:<br> ACTION\_SUCCEEDED<br> CHECKIN\_CODE\_EXPIRED<br> CHECKIN\_CODE\_INVALID<br> GROUPPAS\_NOT\_ALLOWED<br> PARSE\_INVALID\_UITPASNUMBER<br> UNKNOWN\_UITPASNUMBER<br> INVALID\_CARD\_STATUS\_BLOCKED<br> INVALID\_CARD\_STATUS\_DELETED<br> INVALID\_CARD\_STATUS| |
|points| Totaal aantal punten van de pashouder inclusief eventueel gespaarde punten (savedPoints)| |
|savedPoints| Met deze request gespaarde punten (enkel in geval ACTION\_SUCCEEDED)| |
|event| event object dat gekoppeld is aan de checkinCode (niet beschikbaar in geval CHECKIN\_CODE\_INVALID)| |
|pointsPromotions| JSON array van Points promotions (zie hieronder)||

Points promotion JSON object:

 

|id| id van het omruilvoordeel| |
|title| titel van het omruilvoordeel| |
|points| aantal benodigde punten| |
|description1| description2| pictures| JSON Array van string met daarin de URL naar de afbeeldingen van het omruilvoordeel| |
|maxAvailableUnits| inSpotlight| boolean||

Event JSON object:

 

|id| id van het event| |
|title| titel van het event| |
|organiser| organiser object||

Organiser JSON object:

 

|id| id van de organiser| |
|name| naam van de organiser||

_Voorbeeld request_

POST {prefix}/uitpas/enduser/checkin checkinCode=12345678&uitpasNumber=0930056878802

_Voorbeeld response_


~~~xml
 {   "code": "ACTION_SUCCEEDED"   "points": 5,   "event": {     "id": "fd1f4d98-8ee3-44f6-ae61-8d64e3b5e40c",     "title": "Cultuurnet Vlaanderen",     "organiser": {       "id": "47B6FA21-ACB1-EA8F-2C231182C7DD0A19",       "name": "CultuurNet Vlaanderen"     }   },   "pointsPromotions": [    {       "id": 1,       "title": "Voordeel1",       "points": 10,       "description1": "description 1",       "description2": "description 2",       "pictures": "[]",       "maxAvailableUnits": 10,       "inSpotlight": false     },    {       "id": 1,       "title": "Voordeel2",       "points": 10,       "description1": "description 1",       "description2": "description 2",       "pictures": "[]",       "maxAvailableUnits": 10,       "inSpotlight": true     }] }
~~~
