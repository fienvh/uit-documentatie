---
---

# Points of Sale opzoeken

Points of sale zijn balies met specifieke rechten om pashouders te registeren.

_Method_<br> GET

_URL_<br> {prefix}/uitpas/balie/pos

Parameters:

 

|| | | | |
|city| String| Gemeente van de POS. (mag niet in combinatie met userId gebruikt worden)| x| |
|userId| String| UID van de pashouder. Het resultaat zal een lijst van POS zijn met als gemeente de woonplaats van deze pashouder.| type| String| Zoekt POS met dit type.| start| int| start index zoekresultaten| max| int| maximum aantal zoekresultaten in de lijst| visible| boolean| Filter op zichtbare / onzichtbare balies| cardSystemId| long| zoek enkel balies die gekoppeld zijn aan dit kaartsysteem| x||

_Authenticatie_<br> _Consumer Request van de Service Consumer die deze actie uitvoert_<br> _of_<br> _UserAccessToken van de gebruker (parameter userId) waarvoor de POS opgezocht worden_

**Response**

<u>Bij succes</u><br> HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> INVALID\_PARAMETERS<br> PARSE\_INVALID\_CITY\_NAME<br> UNKNOWN\_PASSHOLDER\_UID| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

GET {prefix}/uitpas/balie/pos?city=Aalst&cardSystemId=1

_Voorbeeld response_


~~~xml
 <response> 	<balies> 		<balie>             <name>CC De Werf </name>             <id>31413BDF-DFC7-7A9F-10403618C2816E44</id>             <type/>             <street/>             <number/>             <box/>             <postalCode>9300</postalCode>             <city>Aalst</city>             <telephoneNumber/>             <contactPerson/>             <email/>             <visible>true</visible>         </balie> 	</balies> <total>1</total> </response>
~~~
