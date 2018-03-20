---
---

# Na upgrade
## Waar je op moet letten na upgrade

Het upgradeproces zorgt ervoor dat je widget(s) overgezet worden naar de nieuwe versie. Die nieuwe versie widgets bevatten een aantal nieuwe features en zijn geënt op nieuwere technologieën dan de voorgaande versie. Dit betekent dat je geüpgrade versie op sommige punten zal verschillen van je oude versie.

We sommen hieronder op op welke punten je geüpgrade versie kan verschillen.

## Weergave
### Locatie
De weergave van locatie-info verschilt tussen widgets versie 2 en versie 3.

**Versie 2:**
<pre>
Locatie     Handelsbeurs Concertzaal
Gemeente    Gent
</pre>

**Versie 3:** 
<pre>
Locatie    Handelsbeurs Concertzaal, 9000 Gent
</pre>

### Facetfilters
In de vorige versie van de widgets waren de facetfilters een onderdeel van het zoekresultaten-blok. 
In de nieuwe versie bevinden de facetfilters zich in een apart blok. De facetfilters die je in de vorige versie instelde zijn dus niet verloren gegaan, maar bevinden zich in een nieuw, op zichzelf staand blok dat je apart kan configureren. 

De volgorde van de facetfilters verschilt (van links naar rechts, boven naar onder):

**Versie 2:** 
* Wat
* Waar 
* Wanneer

**Versie 3:** 
* Wanneer
* Waar
* Wat
* Extra opties

## Query ‘extra zoekparameters’
In de vorige versie van de widgets kon je een query instellen onder ‘extra zoekparameters’. Deze query werd bij de upgrade gekopieerd en vind je nu terug onder ‘extra parameters’. Let wel: deze query is geschreven in de syntax van Search API 1 en zal niet de gewenste resultaten geven in de nieuwe versie van de widgets, die gebruik maakt van Search API 3.
Een vertaaltabel om je query van API 1-syntax te vertalen naar API 3-syntax vind je [hier](http://documentatie.uitdatabank.be/content/widgets/latest/upgraden/vertaaltabel/).

Voor de tipswidgets is de query van de extra zoekparameters niet mee gekopieerd, omdat dit deze in de meeste gevallen overbodig en zelfs belemmerend werkte. Wil je toch extra zoekparameters definiëren, dan kan je dat onder _extra parameters_.

## CSS
In de vorige versie van de widget voegde je CSS-regels toe per blok. Dit maakte het beheer onoverzichtelijk en ongebruiksvriendelijk. 
In het upgradeproces werd de CSS van je widget verzameld en in één centraal blok geplaatst. Je vindt de CSS terug bovenaan, centraal in de topnavigatie.

Een deel van de oorspronkelijk geschreven CSS zal geen invloed meer hebben op geüpgrade versie, omdat de nieuwe versie widgets gebruik maakt van andere HTML-tags en klasses. De CSS kan je manueel aanpassen waar nodig. Hulp daarbij vind je in volgende [gids](http://documentatie.uitdatabank.be/content/widgets/latest/stijlen/stijlgids/).

## Caroussel-widget
De caroussel-widget wordt niet meer aangeboden in de nieuwe versie van widgets. Caroussel-widgets worden geüpgrade naar een tipswidget in lijstview. Uitgebreide gebruikersonderzoeken bewezen dat een lijstweergave zorgt voor betere doorklikresultaten.

## Zoekbox
Een zoekbox die na upgrade in een blok over de volledige breedte staat wordt nu automatisch horizontaal getoond. Indien je de zoekbox toch verticaal wilt tonen, dien je die te verplaatsen naar een blok dat niet de volledige paginabreedte inneemt.

## Default settings nakijken (optioneel)
Je geüpgrade widget bevat een aantal standaardinstellingen die niet aanwezig waren in de vorige versie. Deze nieuwe instellingen zijn gebaseerd op best practices. 
 
### UiTPAS
Het UiTPAS-logo wordt in versie 3 standaard weergegeven bij de UiTPAS-evenementen. Als je dit logo niet wenst te tonen kan je het uitvinken onder _Lijstelementen_ (voor het agendaoverzicht) en _Detailpagina_ (voor de detailpagina).

### Verbergfilter
Bovenaan elk agenda-overzicht staat een filter die een gebruiker toelaat langlopende reeksen en permanente bezienswaardigheden snel te verbergen. Je kan deze functionaliteit verwijderen onder ‘Algemeen’.

### Suggesties
De nieuwe versie neemt de suggesties over van je vorige versie. Indien die in je vorige versie ontbraken, gebruikt versie 3 een aantal standaard suggesties.

### Leeftijd
De nieuwe versie toont standaard de leeftijd-informatie, zowel op het agendaoverzicht als op de detailpagina. Indien je deze info niet wilt tonen, kan je dit afvinken onder _lijstelementen_ (voor het agendaoverzicht) en _detailpagina_ (voor de detailpagina).

### Afbeelding
De afbeelding wordt standaard links weergegeven in het agendaoverzicht in plaats van rechts (zoals in versie 2). Je kan deze setting aanpassen onder _lijstelementen_.

## Verder configureren en finetunen

Je kan je widget na de upgrade nog [verder configureren en finetunen](http://documentatie.uitdatabank.be/content/widgets/latest/configureren/).
