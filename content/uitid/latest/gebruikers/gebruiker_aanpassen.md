---
---

# Gebruiker aanpassen of verwijderen

	{server}/user/{ID}

	{server}/user/{ID}/delete

waarbij {ID} de UiTiD ID van de User is

* Methode: ```POST```
* Authenticatie: UserAccessToken van de gebruiker die de actie uitvoert

## Parameters

| nick | ```String``` | Gebruikersnaam van de user |
| paswoord | ```String``` | Paswoord waarmee de gebruiker kan inloggen |
| givenName | ```String``` | Voornaam van de User |
| familyName | ```String``` | Achternaam van de User |
| mbox | String | E-mailadres |
| mboxVerified | ```true``` of ```false``` | ```true``` indien mbox reeds werd geverifieerd |
| gender | ```male``` of ```female``` | Geslacht van de gebruiker |
| dob | ```W3C Date``` | Geboortedatum in W3CDate formaat
| depiction | ```String``` | URL naar de profielafbeelding van de User |
| bio | ```String``` | Korte beschrijving van de User |
| homeStreet | ```String``` | Sstraat |
| homeZip | ```String``` | Postcode |
| homeCountry | ```String``` | ISO landcode van het thuis adres van de gebruiker |
| homeLocation | ```String``` | Coordinaten van de thuis locatie in formaat lat;lon |
| status | ```public```, ```private```, ```blocked``` of ```deleted``` | Status van de user |
| openId |  ```String``` | OpenID URI van de User |
| lifestyleProfile |  ```String``` | Leefstijlprofiel van de User
| hasChildren |  ```true ``` of  ```false ``` | Bepaalt of de User kinderen heeft of niet |

Een lege string als geboortedatum zal ervoor zorgen dat er geen geboortedatum meer bijgehouden zal worden voor deze gebruiker.

Het lifestyleprofile mag alleen aangepast worden indien de Service Consumer de permissie 'leefstijlprofiel aanpassen'.

## Response

### Succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
* uid: de ID van de User


### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 400 Bad request: ontbrekende verplichte velden

## Voorbeeld

Request

```
POST {server}/user/cb0366bb-e552-4afc-82f2-b4e40707cdac
gender=male
```

response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
<code>UserModified</code>
<message>User modified: 1502</message>
<uid>cb0366bb-e552-4afc-82f2-b4e40707cdac</uid>
</response>
{% endhighlight %}
