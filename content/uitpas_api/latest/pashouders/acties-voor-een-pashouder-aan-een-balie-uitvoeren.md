---
---

# Acties voor een pashouder aan een balie uitvoeren

_Method_<br> POST

_URL_<br> {prefix}/uitpas/passholder/eventActions

Parameters:

 

|| | | | |
|uitpasNumber| String| uitpas nummer 13 cijfers| x| |
|cdbid| String| id van een event waarvoor je een ticket wil kopen| actionCheckin| boolean| zet op “true” wanneer de pashouder incheckt op het opgegeven event. checkin wordt enkel uitgevoerd wanneer ook cdbid wordt meegegeven en checkin momenteel toegelaten is. default waarde is “false”| actionBuyTicket| boolean| zet op “true” wanneer de pashouder een ticket koopt voor het opgegeven event. een ticket wordt enkel gekocht wanneer ook cdbid wordt meegegeven. default waarde is “false”| pointsPromotionIds| String| ids van de verzilveracties die de pashouder wil verzilveren. Gescheiden door een komma.| welcomeAdvantageIds| String| ids van de welkomstvoordelen die de pashouder wil verzilveren. Gescheiden door een komma.| balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| ticketSaleCouponId| long| Ticket sale coupon Id die gebruikt moet worden bij de ticketsale| passholder| pashouder object| |
|actions| Lijst van action objecten||

Action:

 

|actionType| Type van de action:<br> CHECKIN,<br> BUYTICKET,<br> CASHIN\_POINTSPROMOTION,<br> CASHIN\_WELCOMEADVANTAGE| |
|welcomeAdvantageResponse| Response object in geval van CASHIN\_WELCOMEADVANTAGE| |
|pointsPromotionResponse| Response object in geval van CASHIN\_POINTSPROMOTION| |
|buyTicketResponse| Response object in geval van BUYTICKET| |
|checkinResponse| Response object in geval van CHECKIN||

WelcomeAdvantageResponse

 

|code| code van response:<br> ACTION\_SUCCEEDED<br> UNKNOWN\_CARD<br> INVALID\_CARD<br> UNKNOWN\_WELCOME\_ADVANTAGE\_ID<br> WELCOMEADVANTAGE\_ALREADY\_CASHED\_IN| |
|promotion| Promotion object van het opgenomen welkomstvoordeel||

PointsPromotionResponse

 

|code| code van response:<br> ACTION\_SUCCEEDED<br> UNKNOWN\_CARD<br> UNKNOWN\_POINTS\_PROMOTION\_ID<br> UNKNOWN\_BALIE\_ID<br> ACTION\_NOT\_ALLOWED| |
|promotion| Promotion object van het opgenomen verzilvervoordeel| |
|cashInState| Ingevuld indien ACTION\_NOT\_ALLOWED:<br> NOT\_POSSIBLE\_DISABLED\_BY\_CARD\_SYSTEM<br> NOT\_POSSIBLE\_INVALID\_CARD,<br> NOT\_POSSIBLE\_DATE\_CONSTRAINT,<br> NOT\_POSSIBLE\_VOLUME\_CONSTRAINT,<br> NOT\_POSSIBLE\_USER\_VOLUME\_CONSTRAINT,<br> NOT\_POSSIBLE\_POINTS\_CONSTRAINT,<br> NOT\_POSSIBLE\_USER\_CONSTRAINT,<br> NOT\_APPLICABLE\_TO\_PASSHOLDER,<br> NOT\_POSSIBLE\_NO\_ACTIVE\_CARD\_SYSTEM,<br> NOT\_POSSIBLE\_KANSENSTATUUT\_EXPIRED;||

BuyTicketResponse

 

|code| code van response:<br> ACTION\_SUCCEEDED<br> TICKETSALE\_NOT\_ALLOWED\_FREE\_EVENT<br> INVALID\_CARD\_STATUS<br> INVALID\_CARD<br> PASSHOLDER\_NO\_ACTIVE\_CARDSYSTEMS<br> MAXIMUM\_REACHED<br> INVALID\_DATE\_CONSTRAINTS<br> TICKET\_SALE\_COUPON\_NOT\_GRANTED| |
|price| prijs betaalde door de pashouder| |
|id| ID van de ticket sale||

CheckinResponse

 

|code| code van response:<br> ACTION\_SUCCEEDED<br> CHECKIN\_CURRENTLY\_NOT\_ALLOWED| |
|points| nieuwe puntentotaal van de pashouder||

<u>Bij fouten</u><br> HTTP 400 met een response body in XML formaat:

 

|code| ErrorCode van de fout:<br> UNKNOWN\_BALIE\_CONSUMERKEY<br> PARSE\_INVALID\_UITPASNUMBER<br> UNKNOWN\_EVENT\_CDBID<br> UNKNOWN\_UITPASNUMBER| |
|message| Beschrijving van de fout||

_Voorbeeld request_

POST {prefix}/uitpas/passholder/eventActions

uitpasNumber= 0930061965313<br> balieConsumerKey=31413BDF-DFC7-7A9F-10403618C2816E44<br> welcomeAdvantageIds=1,2<br> pointsPromotionIds=3,4,5

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <response>    <passHolder>         <cardSystemSpecific>             <cardSystem>                 <id>1</id>                 <name>HELA</name>             </cardSystem>             <currentCard>                 <kansenpas>true</kansenpas>                 <status>ACTIVE</status>                 <uitpasNumber>                     <uitpasNumber>0930012345615</uitpasNumber>                 </uitpasNumber>             </currentCard>             <emailPreference>ALL_MAILS</emailPreference>             <kansenStatuut>true</kansenStatuut>             <kansenStatuutEndDate>2013-12-31T23:59:59+01:00</kansenStatuutEndDate>             <kansenStatuutExpired>false</kansenStatuutExpired>             <kansenStatuutInGracePeriod>false</kansenStatuutInGracePeriod>             <lastActivationMailNumber>0</lastActivationMailNumber>             <smsPreference>NO_SMS</smsPreference>             <status>ACTIVE</status>         </cardSystemSpecific>         <city>AALST</city>         <dateOfBirth>1980-12-15T00:00:00+01:00</dateOfBirth>         <email>willy.wouters@mailinator.com</email>         <firstName>Willy</firstName>         <secondName>Willy</secondName>         <gender>MALE</gender>         <gsm>gsm-nr</gsm>         <inszNumber>78021542697</inszNumber>         <memberships/>         <name>Wouters</name>         <nationality>Belg</nationality>         <number>1</number>         <numberOfCheckins>5</numberOfCheckins>         <placeOfBirth>Aalst</placeOfBirth>         <points>9.000</points>         <postalCode>9300</postalCode>         <registrationBalieConsumerKey>cad22a20fa67b12ac1306b49755a2f7e</registrationBalieConsumerKey>         <street>Wolvenveld</street>         <telephone>0444/44.44.44</telephone>         <uitIdUser>             <ns2:id>031db251-9475-475e-bd0c-66dff0fa0577</ns2:id>             <ns3:nick>willywouters</ns3:nick>         </uitIdUser>         <verified>false</verified>     </passHolder>      <actions>         <action>             <actionType>CASHIN_POINTSPROMOTION</actionType>             <pointsPromotionsResponse>                 <code>ACTION_NOT_ALLOWED</code>                 <cashInState>NOT_POSSIBLE_POINTS_CONSTRAINT</cashInState>                 <promotion>                     <applicableCardSystems/>                     <balies/>                     <cashedIn>false</cashedIn>                     <id>460</id>                     <inSpotlight>false</inSpotlight>                     <points>2</points>                     <title>Test ups1384 beheer</title>                 </promotion>             </pointsPromotionsResponse>         </action>         <action>             <actionType>CASHIN_POINTSPROMOTION</actionType>             <pointsPromotionsResponse>                 <code>UNKNOWN_POINTS_PROMOTION_ID</code>                <message>PointsPromotion with id [5] not found.</message>             </pointsPromotionsResponse>         </action>         <action>             <actionType>BUYTICKET</actionType>             <buyTicketResponse>                 <code>ACTION_SUCCEEDED</code>  		    	<price>1.5</price>             </buyTicketResponse>         </action>         <action>             <actionType>CHECKIN</actionType>             <checkingResponse>                 <code>CHECKIN_CURRENTLY_NOT_ALLOWED</code>             </checkinResponse>         </action>     </actions> </response>
~~~
