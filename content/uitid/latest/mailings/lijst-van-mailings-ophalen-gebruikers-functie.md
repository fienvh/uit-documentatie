---
---


# Lijst van Mailings ophalen (gebruikers functie)

  {server}/mailing/v2/search

* Methode: GET
* Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert.

## Parameters

 <table border="1" cellpadding="1" cellspacing="1"><tbody><tr><th scope="col"> Parameter</th> <th scope="col"> Beschrijving</th> </tr><tr><td> consumerKey</td> <td> ID van de Service Consumer</td> </tr><tr><td> start</td> <td> start positie (paging)</td> </tr><tr><td> max</td> <td> maximum op te halen mailings (paging)</td></tr></tbody></table>

## Response

### Succes

HTTP 200 OK met een response body in XML formaat  

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> code</td> <td> Status code string</td> </tr><tr><td> mailings</td> <td> Lijst van Mailing entiteiten die enkel dat id en name zullen bevatten</td> </tr><tr><td> total</td> <td> Totaal aantal mailings</td></tr></tbody></table>

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldig UserAccessToken meegestuurd.</td> </tr><tr><td> HTTP 401 Unauthorized</td> <td> De gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)</td></tr></tbody></table>


## Voorbeeld

Request

  GET {server}/mailing/v2/search

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?></div><div> <response></div><div> <code>SearchMailings</code></div><div> <mailings></div><div> <mailing></div><div> <id>1</id></div><div> <name>Vlieg Weekendflash</name></div><div> <description>Ontvang elke vrijdag de leukste uittips voor families in je buurt in jouw mailbox.</description></div><div> <template></div><div> <id>0</id></div><div> <subject>Test</subject></div><div> <frequency>DAILY</frequency></div><div> <startDay>0</startDay></div><div> <startHour>0</startHour></div><div> <startMinute>0</startMinute></div><div> <startDayOfWeek>0</startDayOfWeek></div><div> <recommendationsResultEqualTreshold>0</recommendationsResultEqualTreshold></div><div> <searchResultEqualTreshold>0</searchResultEqualTreshold></div><div> </template></div><div> </mailing></div><div> <mailing></div><div> <id>7</id></div><div> <name>Vlieg Weekendflash [COPY!]</name></div><div> <description>Ontvang elke vrijdag de leukste uittips voor families in je buurt in jouw mailbox.</description></div><div> <template></div><div> <id>0</id></div><div> <subject>Test</subject></div><div> <frequency>DAILY</frequency></div><div> <startDay>0</startDay></div><div> <startHour>0</startHour></div><div> <startMinute>0</startMinute></div><div> <startDayOfWeek>0</startDayOfWeek></div><div> <recommendationsResultEqualTreshold>0</recommendationsResultEqualTreshold></div><div> <searchResultEqualTreshold>0</searchResultEqualTreshold></div><div> </template></div><div> </mailing></div><div> </mailings></div><div> <total>2</total></div><div> </response></div><div>
