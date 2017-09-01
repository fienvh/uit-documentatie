---
---

# Punten sparen

![hh-punt-sparen](/img/hh-punt-sparen.png "hh-punt-sparen")
Pashouders kunnen punten sparen door in te checken op een event. Inchecken kan 5 uur op voorhand en 5 uur na afloop. Indien geen startuur gekend is kan er doorlopend worden ingecheckt tijdens de dag(en) dat het event plaatsvindt. Dit wordt door CultuurNet Vlaanderen ingesteld.

Een checkin heeft volgende eigenschappen:
* Pashouder - welke pashouder checkt in
* Evenement - op welk evenement
* Kansenstatuut - beschikt de pashouder over het kansenstatuut
* Balie - aan welke balie checkt de pashouder in
* Privacy - mag de checkin gepubliceerd worden
* Tijdstip - het tijdstip van de checkin
Een checkin constraint bepaalt of inchecken voor de pashouder mogelijk is. Default checkin constraints worden ingesteld door CultuurNet Vlaanderen per calendartype van het event (zie tabel hieronder). Deze waarde kan per event aangepast worden door de KSB. De default checkin constraint waarden zijn:


| calendar type  |  checkin constraint |
|---|---|
|  1 timestamp | 1/dag  |
|   meerdere timestamps|  1/dag |
|  periode |   |1/week
|  permanent |  1/week |


> Aandachtspunt: checkin constraints zijn globaal, niet systeemspecifiek. Als een KSB de constraint van een event aanpast, zal deze voor dit event worden aangepast in alle kaartsystemen.

> Aandachtspunt: de instellingen van een event kunnen niet meer worden aangepast wanneer het event is afgelopen.
