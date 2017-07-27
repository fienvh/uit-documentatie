---
---

# Punten verzilveren

_Method_  
 POST

_URL_  
 {prefix}/uitpas/passholder/{uitpasNumber}/cashInPointsPromotion

waarbij {uitpasNumber} de uitpas nummer

Parameters:

 <thead><th>**Naam**</th> <th>**Type**</th> <th>**Omschrijving**</th> <th>**Verplicht**</th> |  
</thead> |pointsPromotionId |Long |identificatie verzilver optie |x |  
 |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |code |ErrorCode van de fout:  
 INVALID\_CARD (indien pashouder verwijderd werd)  
 PASSHOLDER\_NO\_ACTIVE\_CARDSYSTEMS (indien pashouder geen actieve lidmaatschappen of enkel lidmaatschappen waarvan kansenstatuur vervallen is)  
 ACTION\_NOT\_ALLOWED  
 INVALID\_PARAMETERS  
 PARSE\_INVALID\_UITPASNUMBER  
 PARSE\_INVALID\_LONG  
 UNKNOWN\_UITPASNUMBER  
 UNKNOWN\_BALIE\_CONSUMERKEY |  
 |message |Beschrijving van de fout |  
 |cashInState |Indien ACTION\_NOT\_ALLOWED zal hier de oorzaak in vermeld staan:  
 NOT\_POSSIBLE\_DISABLED\_BY\_CARD\_SYSTEM  
 NOT\_POSSIBLE\_INVALID\_CARD  
 NOT\_POSSIBLE\_DATE\_CONSTRAINT  
 NOT\_POSSIBLE\_VOLUME\_CONSTRAINT  
 NOT\_POSSIBLE\_USER\_VOLUME\_CONSTRAINT  
 NOT\_POSSIBLE\_POINTS\_CONSTRAINT  
 NOT\_POSSIBLE\_USER\_CONSTRAINT  
 NOT\_APPLICABLE\_TO\_PASSHOLDER |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

POST {prefix}/uitpas/passholder/0987654321321/cashInPointsPromotion

balieConsumerKey=31413BDF-DFC7-7A9F-10403618C2816E44&pointsPromotionId=6

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <promotionTO> 	<applicableCardSystems/> 	<balies> 		<balie> 			<name>CC De Werf </name> 			<id>31413BDF-DFC7-7A9F-10403618C2816E44</id> 			<visible>false</visible> 		</balie> 	</balies> 	<cashedIn>true</cashedIn> 	<id>480</id> 	<inSpotlight>false</inSpotlight> 	<points>1</points> 	<title>gratis koffie</title> </promotionTO> ~~~<br>~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response> 	<code>ACTION_NOT_ALLOWED</code> 	<message>PointsPromotion 473 could not be cashed in by user 22970 - NOT_POSSIBLE_POINTS_CONSTRAINT</message> 	<cashInState>NOT_POSSIBLE_POINTS_CONSTRAINT</cashInState> </response>~~~<br>