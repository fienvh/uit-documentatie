---
---

# Verzilveren welkomstvoordeel

_Method_  
 POST

_URL_  
 {prefix}/uitpas/passholder/{uitpasNumber}/cashInWelcomeAdvantage

waarbij {uitpasNumber} de uitpas nummer

Parameters:

 <thead><th>**Naam**</th> <th>**Type**</th> <th>**Omschrijving**</th> <th>**Verplicht**</th> |  
</thead> |welcomeAdvantageId |Long |identificatie welkomstvoordeel |x |  
 |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |code |ErrorCode van de fout:  
 PARSE\_INVALID\_LONG  
 UNKNOWN\_BALIE\_CONSUMERKEY  
 UNKNOWN\_WELCOME\_ADVANTAGE\_ID  
 INVALID\_CARD\_STATUS  
 WELCOMEADVANTAGE\_ALREADY\_CASHED\_IN  
 ACTION\_NOT\_ALLOWED  
 BALIE\_NOT\_AUTHORIZED |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

POST {prefix}/uitpas/passholder/0987654321113/cashInWelcomeAdvantage

welcomeAdvantageId=5

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <promotionTO> 	<applicableCardSystems> 		<cardsystem> 			<id>1</id> 			<name>UiTPAS Regio Aalst</name> 		</cardsystem> 	</applicableCardSystems> 	<balies> 		<balie> 			<name>CC De Werf </name> 			<id>31413BDF-DFC7-7A9F-10403618C2816E44</id> 			<visible>false</visible> 		</balie> 	</balies> 	<cashedIn>true</cashedIn> 	<cashingDate>2015-06-26T14:45:08.554+02:00</cashingDate> 	<id>5</id> 	<inSpotlight>false</inSpotlight> 	<owningCardSystem> 		<id>1</id> 		<name>UiTPAS Regio Aalst</name> 	</owningCardSystem> 	<points>0</points> 	<title>Theatercheque € 2,5 in cc De Werf</title> </promotionTO>~~~<br>