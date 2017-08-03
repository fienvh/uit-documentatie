---
---

# Ophalen van lijst van verenigingen

_Method_<br> GET

_URL_<br> {prefix}/uitpas/association/list

_Parameter_

 

|balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| |
|cardSystemId| List<long>| Een lijst van ids van een of meerdere kaartsystemen. Deze parameter is niet verplicht. Standaard worden alle kaartsystemen terug gegeven. Indien de parameter wel wordt opgegeven, worden enkel de kaartsystemen teruggegeven die in de lijst voorkomen.| |
|readPermission| Boolean| Indien true worden verenigingen waarop de balie leesrechten heeft opgehaald.| |
|registerPermission| Boolean| Indien true worden verenigingen waarop de balie registratie-rechten heeft opgehaald.||

_Authenticatie_<br> _UserAccessToken van de Balie medewerker die de actie uitvoert_

_Required permission_<br> Balie: **PERMISSION\_ASSOCIATION - ACTION\_READ**

**Response**

<u>Bij succes</u><br> HTTP 200 OK

_Voorbeeld request_<br> POST {prefix}/uitpas/passholder/association/list

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>     <associations>         <association>             <id>1</id>             <name>Chiro Jongens</name>             <cardSystems>             	<cardSystem>                 	<id>1</id>                 	<name>UiTPAS Regio Aalst</name>               	</cardSystem>             </cardSystems>             <enddateCalculation>BASED_ON_REGISTRATION_DATE</enddateCalculation>             <enddateCalculationValidityTime>2</enddateCalculationValidityTime>             <permissionRead>true</permissionRead>             <permissionRegister>true</permissionRegister>         </association>         <association>             <id>2</id>             <name>Chiro Meisjes</name>             <cardSystems>             	<cardSystem>                 	<id>1</id>                 	<name>UiTPAS Regio Aalst</name>               	</cardSystem>             </cardSystems>             <enddateCalculation>FREE</enddateCalculation>             <enddateCalculationFreeDate>2015-12-31T23:59:59+01:00</enddateCalculationFreeDate>             <permissionRead>true</permissionRead>             <permissionRegister>false</permissionRegister>         </association>     </associations>     <total>2</total> </response>
~~~
