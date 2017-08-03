---
---

# Opzoeken van coupons van een pashouder

_Method_<br> GET

_URL_<br> {prefix}/uitpas/passholder/{uitpasNumber}/coupons

Parameters:

 

|| | | | |
|max| Integer| Max. aantal resultaten in response (default 20)| start| Integer| Start van resultaten in response (default 0)| excludeExpired| Boolean| Indien false worden de vervallen ticketsalecoupons getoond (default true)| balieConsumerKey| String| ConsumerKey van de balie waarop deze request gebeurt. Deze parameter is niet verplicht. Standaard wordt de consumer key uit de oauth request gebruikt. Zie gebruik van andere balies door Service Consumer in punt 2.3| code| ErrorCode van de fout:<br> UNKNOWN\_UITPASNUMBER| |
|message| Beschrijving van de fout| |
|requiredPermission| Indien code = ACCESS\_DENIED, dan bevat dit veld de vereiste permissie.||

_Voorbeeld request_

GET /uitpas/passholder/1000000061811/coupons

_Voorbeeld response_


~~~xml
 <?xml version="1.0" encoding="UTF-8" standalone="yes"?> <ticketSaleCoupons>     <ticketSaleCoupon>         <exchangeConstraint>             <periodType>ABSOLUTE</periodType>             <periodVolume>2</periodVolume>         </exchangeConstraint>         <id>35</id>         <name>Cultuurbon</name>         <remainingTotal>             <periodType>ABSOLUTE</periodType>             <periodVolume>1</periodVolume>         </remainingTotal>         <expired>false</expired>         <validFrom>2015-06-29T00:00:00+02:00</validFrom>         <validTo>2015-12-31T23:59:59+01:00</validTo>     </ticketSaleCoupon>     <ticketSaleCoupon>         <buyConstraint>             <periodType>WEEK</periodType>             <periodVolume>1</periodVolume>         </buyConstraint>         <exchangeConstraint>             <periodType>ABSOLUTE</periodType>             <periodVolume>3</periodVolume>         </exchangeConstraint>         <id>34</id>         <name>Coupon1</name>         <remainingTotal>             <periodType>ABSOLUTE</periodType>             <periodVolume>3</periodVolume>         </remainingTotal>         <expired>false</expired>     </ticketSaleCoupon> </ticketSaleCoupons>
~~~
