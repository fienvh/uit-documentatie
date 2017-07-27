---
---

# Bestaande pashouder registreren bij een nieuw kaartsysteem

_Method_  
 POST

_URL_  
 {prefix} /uitpas/passholder/{uid}/register

Parameters:

 |**Naam** |**Type** |**Omschrijving** |**Verplicht** |  
 |cardSystemId |Long |Id van het nieuwe kaartsysteem, waarvan de pashouder lid van wilt worden (er moet OFWEL een chipnummer OFWEL een cardSystemId meegegeven worden, niet allebei, en ook geen van beide) |x |  
 |uitpasNumber |String |uitpasNumber van de nieuwe kaart van het nieuwe kaartsysteem waarvan de pashouder lid van wilt worden (er moet OFWEL een uitpasNumber OFWEL een cardSystemId meegegeven worden, niet allebei, en ook geen van beide) |x |  
 |kansenStatuutEndDate |W3C Date |einddatum van het kansenstatuut indien het een pashouder met kansenstatuut betreft. Mag niet na het einde (31/12) van het volgende jaar. |Verplicht indien kansenStatuut=true |  
 |voucherNumber |String |Eventuele voucher number die korting geeft. |balieConsumerKey |String |ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3 |emailPreference |String |‘ALL\_MAILS’, ‘NOTIFICATION\_MAILS’ or ‘NO\_MAILS’ |smsPreference |String |‘ALL\_SMS’, ‘NOTIFICATION\_SMS’ or ‘NO\_SMS’ |  
_Authenticatie_  
_UserAccessToken van een balie medewerker_

**Response**

<u>Bij succes</u>  
 HTTP 200 OK met een response body in XML formaat

<u>Bij fouten</u>  
 HTTP 400 met een response body in XML formaat:

 |code |ErrorCode van de fout:  
 MISSING\_REQUIRED\_FIELDS  
 INVALID\_PARAMETERS  
 UNKNOWN\_PASSHOLDER\_ID  
 UNKNOWN\_VOUCHER  
 UNKNOWN\_CARD  
 INVALID\_DATE\_CONSTRAINTS (bijv. indien ongeldige kansenStatuutEndDate)  
 UNKNOWN\_CARD\_SYSTEM |  
 |message |Beschrijving van de fout |  
 |requiredPermission |Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie. |  
_Voorbeeld request_

POST /uitpas/passholder/f3334dc6-bfba-4409-b04c-2b1763cdeba8/register

cardSystemId=4  
 balieConsumerKey=31413BDF-DFC7-7A9F-10403618C2816E44

_Voorbeeld response_

~~~
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <passHolder xmlns:ns2="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:ns3="http://xmlns.com/foaf/0.1/">     <cardSystemSpecific>         <cardSystem>             <id>1</id>             <name>HELA</name>         </cardSystem>         <currentCard>             <kansenpas>true</kansenpas>             <status>ACTIVE</status>             <uitpasNumber>                 <uitpasNumber>0930061965313</uitpasNumber>             </uitpasNumber>         </currentCard>         <emailPreference>ALL_MAILS</emailPreference> 	  <kansenStatuut>true</kansenStatuut>         <kansenStatuutEndDate>2013-12-31T23:59:59+01:00</kansenStatuutEndDate>         <kansenStatuutExpired>false</kansenStatuutExpired>         <kansenStatuutInGracePeriod>false</kansenStatuutInGracePeriod>         <smsPreference>NO_SMS</smsPreference>     </cardSystemSpecific>     <city>AALST</city>     <dateOfBirth>1980-04-15T00:00:00+02:00</dateOfBirth>     <email>dev3@lodgon.com</email>     <firstName>Nele</firstName>     <secondName>Middle name</secondName>     <gender>FEMALE</gender>     <gsm>gsm-nr</gsm>     <inszNumber>78021542697</inszNumber>     <lastActivationMailNumber>0</lastActivationMailNumber>     <memberships/>     <name>Custers</name>     <nationality>Belg</nationality>     <number>1</number>     <numberOfCheckins>0</numberOfCheckins>     <placeOfBirth>Aalst</placeOfBirth>     <points>10.000</points>     <postalCode>9300</postalCode>     <registrationBalieConsumerKey>31413BDF-DFC7-7A9F-10403618C2816E44</registrationBalieConsumerKey>     <street>Kalfstraat</street>     <telephone>0444/44.44.44</telephone>     <uitIdUser>         <ns2:id>bd056f6f-7ff6-4781-baeb-a0ff77626e03</ns2:id>         <ns3:nick>nele</ns3:nick>     </uitIdUser>     <verified>false</verified> </passHolder>~~~<br>