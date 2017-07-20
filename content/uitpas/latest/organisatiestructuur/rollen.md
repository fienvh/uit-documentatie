---
---

# Rollen en taken

De organisatie architectuur van het UiTPAS systeem bevat volgende rollen met bijhorende taken.

## Pashouder

De houder van een UiTPAS. Hij/zij is gekend in het UiTPAS systeem en werd geregistreerd volgens de validatieregels. 

* **Punten sparen** - een pashouder kan “inchecken” op een locatie waar UiTPAS apparatuur aanwezig is. Door in te checken spaart de pashouder één punt.

* **Punten omruilen voor voordelen** - zogauw een pashouder beschikt over voldoende punten, kan hij deze omruilen voor voordelen.

* **Zich informeren** - pashouders kunnen via een publiekssite raadplegen waar punten kunnen gespaard worden en welke voordelen er beschikbaar zijn. Door aan te melden kunnen pashouders hun profiel, puntensaldo, voordelen en de historiek van checkins consulteren.

## MIA

Een MIA is een pashouder die geregistreerd is met kansenstatuut. Deze pashouders kunnen aanspraak maken op bepaalde kortingen (= kansentarief) voor UiTPAS evenementen.

* **Korting MIA genieten** - pashouders met een kansenstatuut ontvangen kortingen bij ticket sales voor betalend cultuur- of vrijetijdsaanbod.

## Baliemedewerker

De informatie- en onthaalmedewerker. Hij/zij kan volgende taken uitvoeren:

* **Punten toekennen** - punten kunnen toegekend worden via tal van devices aan of in de buurt van de balie.

* **Tickets tegen kansentarief verkopen** - baliemedewerkers kunnen bij ticket sales toegekende kortingen registreren in het systeem.

* **Voordelen omruilen** - baliemedewerkers kunnen voordelen schenken aan pas geregistreerde pashouders (welkomstvoordelen) en pashouders met voldoende punten.

* **Pashouders registreren** - baliemedewerkers kunnen nieuwe pashouders registreren, kaarten blokkeren en vernieuwen en pashouder informatie aanpassen.
Slechts een beperkt aantal balies kan het kansenstatuut toekennen aan kansengroep leden.

## Kaartsysteembeheerder (KSB)

Een systeem- en applicatiebeheerder die instaat voor systeemconfiguratie. Dit zijn typisch business users met een doorgedreven kennis van het UiTPAS systeem.

* **Defaults instellen** bv. super user, frequentie van herinneringsmails, …

* **Balies activeren** - balies toevoegen aan het systeem, permissies toekennen en baliemedewerkers toewijzen aan de balie.

* **Kaarten beheren** - d.i. kaart stock beheer door kaarten toe te voegen aan het systeem en te verdelen naar “PoS” balies (points of sales).

* **Welkomst- en ruilvoordelen instellen** - d.i. voordelen aanmaken en instellen onder welke voorwaarden deze worden opgenomen bv. aantal benodigde punten.

* **Mails beheren** - er worden mails gestuurd naar pashouders en kaartsysteembeheerders, bv. naar pashouders die voor een ingestelde periode niet meer incheckten, naar MIA’s wiens kansenstatuut in de nabije toekomst zal vervallen. De inhoud, frequentie, … kan deels geconfigureerd worden door de KSB.

* **CIDs beheren** - Checkin devices (zie verder) worden door baliemedewerkers en door KSBs beheerd: toewijzing van een CID aan een balie wordt door de KSB beheerd, toewijzing van een event aan een CID door een baliemedewerker.

* **Kansentarieven beheren** - d.i. instellen van de verdeelsleutels voor retributie en beheren van de financiële overzichten voor organisaties en overheden.

* **Prijsinstellingen beheren** - d.i. instellen van de verschillende prijzen, bv. FIRST_CARD, LOSS_THEFT

* **Verenigingen beheren** - aanmaken en bewerken van verenigingen

* **Check-ins beheren** - CIDs zijn autonome zuiltjes waar pashouders punten kunnen sparen (zie hieronder: applicatiecomponenten)

* **Evenementen beheren** - Evenementen worden beheerd via de UiTdatabank (zie hieronder: informatiesystemen)
