---
---

# Gebruiker aanmaken

Het creëren van een user gebeurt typisch niet via de API.

Toch is er een API-call beschikbaar voor high trusted Service Consumers met de nodige rechten.

Andere Service Consumers kunnen wel een registratielink voorzien die doorverwijst naar de UiTiD autorisatie URL met type=register.

Voorbeeld:

> http://www.uitid.be/uitid/rest/auth/authorize?oauth_token=e02f363744b87464952ff2fe74d3eb2f
&oauth_callback=http%3A%2F%2Fwww.uitinvlaanderen.be%2Fculturefeed%2Foauth%2F
authorize%3Fdestination%3Dfront%26closepopup%3Dtrue&type=register

```
{server}/user
```

* Methode: ```POST```
* Authenticatie: ConsumerRequest van een ServiceConsumer met de rechten om gebruikers aan te maken

## Parameters

nick | ```String``` | Gebruikersnaam | Verplicht
password | ```String``` | Paswoord waarmee de gebruiker kan inloggen | Verplicht
givenName	| ```String```	| Voornaam  |
familyName |	```String``` | Achternaam	|
mbox | ```String```	 | e-mailadres van de User | Verplicht
mboxVerified	| ```true``` of ```false ``` | ```true``` als het e-mailadres bevestigd werd |
gender |	```male``` of ```female``` |	geslacht |
dob |	```W3C date```	| geboortedatum  |
depiction	| ```String```	| URL naar de profielafbeelding |	 
bio	| ```String``` | korte beschrijving |
homeStreet | ```String```	 | straat genoteerd als tekst	 |
homeZip	| ```String``` | postcode genoteerd als tekst	 |
homeCity	| ```String``` | gemeente deel van het adres genoteerd als tekst	 |
homeCountry	| ```String```	| ISO landcode van het adres |
homeAddress	| ```ddress``` | Thuisadres van de User	 |
homeLocation	| ```String``` | Coördinaten van het thuisadres in formaat lat;lon|		 
currentLocation	| ```Geocoördinaten``` | Coördinaten van het huidige adres in formaat lat;lon|		 
status | ```public```, ```private```, ```blocked``` of ```deleted``` | Status van de User | Verplicht  
openId | ```String``` | 	OpenID URI van de User |

## Response

### Succes

HTTP 200 OK met een response body in XML formaat.

Velden:

* code: Status code
* uid: De ID van de User

### Error

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 400 Bad request: verplichte velden niet meegegeven. Meer uitleg in 'message'.
* HTTP 421 ItemExists: User met zelfde mbox bestaat reeds.

## Voorbeeld

**Request**

```
POST {server}/user
nick=test
&status=PUBLIC
&mbox=test%40culturefeed.be
```

**Response**

{% highlight xml %}
	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
   <code>UserCreated</code><message>User created:0df9ebfe-1899-49f2-bc1e-774213831ff5</message><uid>0df9ebfe-1899-49f2-bc1e-774213831ff5</uid>
	</response>
{% endhighlight %}
