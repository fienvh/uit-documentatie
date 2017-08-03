---
---

# Ophalen welkomstvoordelen voor pashouder

_Method_<br> GET

_URL_<br> {prefix}/uitpas/passholder/{uitpasNumber}/welcomeadvantages

waarbij {uitpasNumber} de uitpas nummer

Parameters:

 

|| | | |
|balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt (enkel nodig voor de permission check). Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| |
|cashingPeriodBegin| W3CDate| Verzilver periode vanaf| |
|cashingPeriodEnd| W3CDate| Verzilver periode tot| |
|cashInBalieConsumerKey| String| Consumer key van de balie waarop de welkomstvoordelen verzilderd kunnen worden| |
|owningCardSystemId| Long| identificatie owning kaartsysteem| |
|applicableCardSystemId| Long| identificatie van toepassings kaartsysteem| |
|cashedIn| Boolean| Geef enkel welkomstvoordelen terug die reeds verzilverd zijn (true) of nog niet verzilverd zijn (false). Indien deze parameter niet meegegeven wordt, worden zowel verzilverde als niet verzilverde welkomstvoordelen teruggegeven.||

_Authenticatie_<br> _UserAccessToken van de Balie medewerker die de actie uitvoert of van de eigenaar van de uitpas zelf_

_Required permission_<br> In geval van balie medewerker: geen extra permissie nodig<br> In geval van uitpas eigenaar: Enkel data van de UiTid user die ingelogd is, kan opgehaald worden. De service consumer heeft **PERMISSION\_PASSHOLDER - ACTION\_READ** nodig

**Response**

<u>Bij succes</u><br> HTTP 200 OK met een response body in XML formaat, met daarin de pashouder opneembare welkomstvoordelen. Dit wil zeggen dat indien de pashouder geen actief lidmaatschap bij een kaartsysteem heeft, hij een lege lijst zal terugkrijgen bij deze request.

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> PARSE\_INVALID\_UITPASNUMBER<br> UNKNOWN\_UITPASNUMBER| |
|message| Beschrijving van de fout||

_Voorbeeld request_

GET {prefix}/uitpas/passholder/0987654321113/welcomeadvantages

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <promotions>     <promotion>         <applicableCardSystems>             <cardsystem>                 <id>1</id>                 <name>UiTPAS Regio Aalst</name>             </cardsystem>         </applicableCardSystems>         <balies>             <balie>                 <name>Stedelijk Zwembad Aalst</name>                 <id>A56CEC7E-F377-A942-296E3BCDF4884E07</id>                 <visible>false</visible>             </balie>         </balies>         <cashedIn>false</cashedIn>         <id>4</id>         <inSpotlight>false</inSpotlight>         <owningCardSystem>             <id>1</id>             <name>UiTPAS Regio Aalst</name>         </owningCardSystem>         <points>0</points>         <title>1 € voor zwembeurt in zwembad Aalst</title>     </promotion> </promotions>
~~~
