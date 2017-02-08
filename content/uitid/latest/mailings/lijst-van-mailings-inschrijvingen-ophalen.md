---
---

# Lijst van Mailings inschrijvingen ophalen

  {server}/mailing/v2/subscriptions/{uid}

waarbij {uid} de ID is van de gebruiker

* Methode: GET
* Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert.

## Response**  

### Succes

HTTP 200 OK met een response body in XML formaat  

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> code</td> <td> Status code string</td> </tr><tr><td> mailings</td> <td> Lijst van Mailing entiteiten waarin enkel de id en de name ingevuld zullen zijn.</td></tr></tbody></table>

### Bij fouten_  

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

<table border="1" cellpadding="1" cellspacing="1"><tbody><tr><td> HTTP 403 Forbidden</td> <td> Er werd geen of geen geldig UserAccessToken meegestuurd.</td> </tr><tr><td> HTTP 401 Unauthorized</td> <td> De gebruiker heeft geen rechten om de huidige actie uit te voeren. (bv. is geen admin van de Service Consumer)</td></tr></tbody></table>

## Voorbeeld

Request  

  POST {server}/mailing/subscriptions/5679e3ee-a535-486a-acfa-eb6e8de9ab96

Response

  <?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
  <response>  
  <code>GetSubscriptions</code>  
  <mailings>  
  <mailing>  
  <id>3</id>  
  <name>test2</name>  
  </mailing>  
  </mailings>  
  </response>
