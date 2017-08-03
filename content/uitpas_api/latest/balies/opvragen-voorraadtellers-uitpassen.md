---
---

# Opvragen voorraadtellers uitpassen

Geef de voorraadtellers voor uitpassen die aan een balie zijn toegekend, gerangschikt per kaartsysteem.

_Method_<br> GET

_URL_<br> {prefix}/uitpas/balie/countCards

Parameters:

 

|| | | | |
|balieConsumerKey| String| ConsumerKey van de balie waarvoor deze request wordt uigevoerd. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| code| ErrorCode van de fout:<br> UNKNOWN\_BALIE\_CONSUMERKEY| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

GET {prefix}/uitpas/balie/countCards?balieConsumerKey=cad22a20fa67b12ac1306b49755a2f7e

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<counters>     	<counter>         	<status>SENT_TO_BALIE</status>         	<kansenstatuut>false</kansenstatuut>         	<count>0</count> 			<cardSystem> 				<id>1</id> 				<name>HELA</name> 			</cardSystem>     	</counter>     	<counter>         	<status>SENT_TO_BALIE</status>         	<kansenstatuut>true</kansenstatuut>         	<count>0</count> 			<cardSystem> 				<id>1</id> 				<name>HELA</name> 			</cardSystem>     	</counter>     	<counter>         	<status>LOCAL_STOCK</status>         	<kansenstatuut>false</kansenstatuut>         	<count>3</count> 			<cardSystem> 				<id>1</id> 				<name>HELA</name> 			</cardSystem>     	</counter>     	<counter>         	<status>LOCAL_STOCK</status>         	<kansenstatuut>true</kansenstatuut>         	<count>4</count> 			<cardSystem> 				<id>1</id> 				<name>HELA</name> 			</cardSystem>     	</counter> 	</counters> </response>
~~~
