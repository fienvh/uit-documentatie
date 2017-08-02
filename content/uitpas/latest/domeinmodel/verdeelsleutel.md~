---
---

# Verdeelsleutel

UiTPAS werkt volgens een derdebetalerssysteem.

Mogelijke betalers zijn:
- Pashouder
- Organisator van het event
- Lokale overheid van de pashouder (per gemeente)
- Vlaamse overheid

Een pashouder kan om verschillende redenen recht hebben op korting op een bepaald event:
- er is een verdeelsleutel geldig op het event en de pashouder maakt aanspraak op deze verdeelsleutel. Dit wordt de DEFAULT korting genoemd.
- de pashouder beschikt over een coupon en deze coupon is geldig voor het event. Voor beschrijving van de coupons, zie Coupon.

De retributie van de gedorven inkomsten wordt ingesteld in een verdeelsleutel. De verdeelsleutels worden aangemaakt door de KSB in het administrator dashboard.

Er bestaan twee soorten verdeelsleutels:
- Niet-automatische verdeelsleutels worden bij invoer van het event in de UiTdatabank aan het event gehangen.
- Automatische sleutels kunnen door hun eigenschappen automatisch op een event worden gemapt. De invoerder dient in het laatste geval niet tussen te komen.

## Niet-automatische verdeelsleutels

Een niet-automatische verdeelsleutel is een sleutel die niet op basis van condities aan een event kan toegekend worden. Dit zal een menselijke beslissing zijn.  De invoerder van het event in de UiTdatabank selecteert via een keuzemenu welke verdeelsleutel van toepassing is op het event. Om kaartsystemen de mogelijkheid te bieden een andere verdeelsleutel te hanteren voor pashouders uit de eigen regio / gemeente vs. pashouders uit andere regio’s / gemeentes bestaat er binnen de sleutel een verdeling per
* pashouder uit dezelfde gemeente als de gemeente waar de balie zich bevindt
* pashouder uit een andere gemeente dan de gemeente waar de balie zich bevindt

Een niet-automatische verdeelsleutel wordt als volgt opgesteld:

| Indien pashouder van zelfde gemeente als inrichter | Indien pashouder van een andere gemeente als inrichter |
|----------------------------------------------------|--------------------------------------------------------|
| Bijdrage pashouder                                 | Bijdrage pashouder                                     |
| Bijdrage lokale overheid                           | Bijdrage lokale overheid                               |
| Bijdrage inrichter                                 | Bijdrage inrichter                                     |
| Bijdrage Vlaamse overheid                          | Bijdrage Vlaamse overheid                              |

> Bijvoorbeeld voor een voorstelling in CC De Werf in Aalst:
Pashouder uit Aalst
Pashouder betaalt €1,5;
Lokale overheid betaalt 50% van de totale ticketprijs,
Inrichter betaalt de rest.
Pashouder uit Lede
Pashouder betaalt €1,5,
Lokale overheid betaalt 70% van de totale ticketprijs
Inrichter betaalt de rest.

## Automatische verdeelsleutels
Een automatische verdeelsleutel kan automatisch aan een event worden toegekend op basis van volgende conditionele parameters. De KSB stelt de condities in:
* Prijs van het event - operator (<, >, =) - waarde
* Kansarm - operator (in) - waarde (Fixed: In mijn kaartsysteem, In minstens 1 kaartsysteem)
* Gemeente pashouder - operator (in, niet in) - Waarde (Fixed: Gemeente organisator)
* De verdeling van de kosten over de betalers met steeds Vast bedrag / Percentage van totaalprijs / Percentage van restbedrag als optie.

Toekennen verdeelsleutel aan balie - Een verdeelsleutel kan maar gebruikt worden als hij aan een balie is toegekend. Een verdeelsleutel wordt in het administrator dashboard toegekend aan een balie van het type “inrichter”.  Meerdere inrichters kunnen dezelfde sleutel toegekend krijgen. Balies kunnen sleutels toegekend krijgen vanuit verschillende kaartsystemen.  Events georganiseerd door deze balie zullen mogelijk deze verdeelsleutel toegekend krijgen. Een verdeelsleutel kan door de KSB worden aangeduid als “Globaal”. Dan is hij automatisch toegekend aan alle balies van het kaartsysteem.

Baliemedewerkers zien in de UiTPAS balie applicatie op basis van de toegekende verdeelsleutel meteen het juiste bedrag dat moet worden aangerekend als een pashouder zich aan de kassa aandient. De retributie wordt automatisch berekend en hieromtrent wordt maandelijks gerapporteerd.

> Noteer:
* In tegenstelling tot checkins gebeuren ticket sales regelmatig onafhankelijk van de start van het event. Ze kunnen op voorhand maar ook na afloop van het event geregistreerd worden.
* Het UiTPAS systeem is geen ticketing applicatie. Indien nodig moet de baliemedewerker de registratie van het kansentarief ook in zijn ticketing applicatie doen.
* Hoewel niet strikt afgedwongen, worden verdeelsleutels voornamelijk gebruikt om korting aan mensen met kansentarief toe te kennen.
