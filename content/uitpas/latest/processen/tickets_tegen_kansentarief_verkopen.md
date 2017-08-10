---
---

# Tickets tegen kansentarief verkopen

## 1. Check buy constraint

### Default kansentarief

Gaat na of de pashouder met kansenstatuut (nog) recht heeft op het kansentarief. Er zijn 2 soorten beperkingen op ticket sales:

- Absoluut: eerste ‘x’ pashouders kunnen een ticket aan kansentarief kopen.
- Het aantal maal dat een pashouder een ticket aan kansentarief kan kopen voor een event. Een buy constraint kan op twee niveaus ingesteld worden:
	- Event niveau  
	Default waarde of zoals ingesteld door de KSB. Deze waarde bepaalt hoe vaak een pashouder een ticket aan kansenkorting mag kopen voor een event.
	- Organiser niveau  
	Default bestaat deze constraint niet. Kan worden ingesteld door de KSB op de balie in het dashboard

Defaultwaarden worden ingesteld door CultuurNet Vlaanderen per calendartype van het event (zie tabel hieronder). Deze waarde kan per event aangepast worden door de KSB. De default waarden zijn:

|  Calender type |   Buy Constraint|
|---|---|
|  1 timestamp |  1absoluut |
|   meerdere timestamps|  1 absoluut |
|   periode|   1 absoluut|
|   permanent|   1/week|

Aandachtspunt: buy constraints zijn globaal, niet systeemspecifiek. Als een KSB de constraint van een event aanpast, zal deze voor dit event aangepast worden in alle kaartsystemen.

### Korting met coupon
Ga na of de pashouder recht heeft op korting via een coupon

## 2. Instantieer retributie
Het verschil tussen totaalprijs en kortingsprijs wordt geretribueerd over verschillende betalers volgens de verdeelsleutel die het event toegekend heeft gekregen.
