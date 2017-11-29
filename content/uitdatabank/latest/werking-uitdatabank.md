---
---

# Werking van de UiTdatabank

Deze 4 soorten gebruikers werken in UiTdatabank:

* **invoerders** van cultuur- en vrijetijdsaanbod
* **decentrale beheerders**: medewerkers van steden en gemeenten, of experten uit de sector
* **centrale beheerders**: eigenaars van het systeem
* **IT-leveranciers**: functionaliteit toevoegen aan het systeem

Deze gebruikers voeren hun taken uit aan de hand van onderstaande acties:

## Aanbod invoeren
Elke aangemelde invoerder kan activiteiten en locaties invoeren in UiTdatabank om deze bekend te maken bij het grote publiek.

Op één scherm kan een invoerder een activiteit of locatie invoeren, in vijf stappen. Invoer wordt omkaderd met een persoonlijke homepagina en een overzichtspagina met alle details van het aanbod.

Tijdens het invoeren wordt de gebruiker gestimuleerd om bestaande organisaties en locaties te hergebruiken.


## Aanbod bewerken
UiTdatabank hanteert een model van ownership om aanbod aan te passen of te verrijken: enkel de originele eigenaar kan zijn aanbod-item bewerken. Decentrale beheerders kunnen een subset van het aanbod bewerken. Centrale beheerders kunnen alle aanbod-items bewerken.

Een invoerder kan het aanbod waarvan hij/zij eigenaar is bewerken: informatie wijzigen, informatie toevoegen, informatie verwijderen, aanbod verwijderen.

Een decentrale beheerder kan aanbod bewerken waarvoor hij de specifieke permissie heeft: informatie wijzigen, toevoegen, informatie verwijderen, aanbod verwijderen. Op basis van een een specifieke query wordt ingesteld op welk aanbod hij deze bewerkrechten heeft (bijvoorbeeld enkel aanbod waarvan de locatie binnen ‘3000 Leuven’ ligt, of enkel het aanbod met het eventtype ‘Concert’)

## Aanbod exporteren
Elke aangemelde invoerder kan een zoekopdracht exporteren, typisch voor rapportering of offline publicaties. Deze functionaliteit wordt voornamelijk gebruikt door decentrale beheerders.
UiTdatabank biedt decentrale beheerders de mogelijkheid om aanbod te zoeken en te exporteren. Gebruikers kunnen uitgebreide zoekopdrachten samenstellen en bewaren voor later gebruik. Deze zoekresultaten worden automatisch verwerkt in een tips-sjabloon, downloadbaar als pdf en bezorgd via mail. In dit tipsrapport staat alle informatie inclusief eventuele taaliconen, het UiTPAS-kansentarief én UiTPAS-omruilvoordelen indien van toepassing. Het PDF-sjabloon laat bovendien toe je eigen titel, ondertitel, link naar meer tips en verantwoordelijke uitgever toe te voegen.

Het is daarnaast ook mogelijk om de zoekopdracht te exporteren in csv of json uitwisselingsformaat.


## Aanbod labelen
UiTdatabank bevat publieke en private labels. Elke aangemelde gebruiker kan publieke labels aan aanbod toevoegen. Decentrale beheerders gebruiken private labels om selecties van activiteiten te maken die ze vervolgens kunnen publiceren via hun kanalen.

## Aanbod vertalen
Elke aangemelde gebruiker kan een vertaling aan zijn aanbod toevoegen in het Frans, Duits of Engels. (Sommige) decentrale beheerders vertalen aanbod, typisch voor toeristische doeleinden, zodat de activiteiten verschijnen op anderstalige publicatiekanalen.

## Aanbod modereren
Decentrale beheerders modereren aanbod om goed aanbod te promoten of foutief aanbod weg te filteren.

UiTdatabank maakt gebruik van verschillende publicatiestatussen (workflow status) die de ‘levensfase’ van een document weerspiegelen. Aanbod heeft steeds één van deze workflow statussen:

* DRAFT
* READY_FOR_VALIDATION
* APPROVED
* REJECTED
* DELETED

### Items in DRAFT

Bij het aanmaken van een nieuwe activiteit of locatie, krijgt dit item de workflowstatus DRAFT. De invoerder kan een aanbod in deze status verrijken en bewerken, zonder dat het aanbod op online publicatiekanalen verschijnt.

### Items in READY_FOR_VALIDATION

Onderaan het invoerscherm heeft de invoerder de opties ‘publiceren’ of ‘Later publiceren’. Bij het kiezen voor ‘publiceren’ wijzigt de workflowstatus van het aanbod van DRAFT naar READY_FOR_VALIDATION en wordt het aanbod meteen online gepubliceerd. 

Bij het kiezen voor ‘Later publiceren’ wijzigt de workflowstatus van het aanbod eveneens van DRAFT naar READY_FOR_VALIDATION, maar kan de invoerder een datum instellen vanaf wanneer het aanbod op online publicatiekanalen mag verschijnen (dit is ‘onder embargo’ publiceren).

### Items met de status APPROVED of REJECTED

Enkel (decentrale) beheerders kunnen de workflowstatus van een aanbod wijzigen van READY_FOR_VALIDATION naar APPROVED of REJECTED.

Decentrale beheerders met een specifieke permissie om aanbod te modereren, krijgen toegang tot een overzichtspagina waarin al het aanbod verschijnt met de status READY_FOR_VALIDATION.

Dit overzicht is doorgaans gelimiteerd tot een specifieke subset van activiteiten waarvoor zij de verantwoordelijkheid hebben:  medewerkers van elke Vlaamse stad of gemeente krijgen het aanbod van hun eigen grondgebied ter validatie.

Decentrale beheerders hebben de mogelijkheid om via de knoppen ‘goedkeuren’ en ‘afkeuren’ de workflowstatus van een aanbod te wijzigen naar respectievelijk ‘APPROVED’ en ‘REJECTED’. Aanbod met de workflowstatus ‘REJECTED’ verschijnt niet langer op online publicatiekanalen.
