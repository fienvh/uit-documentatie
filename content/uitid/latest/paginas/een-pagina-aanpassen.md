---
---

# Een pagina aanpassen

```
{server}/page/{uid}
```

* Methode: POST
* Authenticatie: UserAccessToken van een gebruiker die beheerder is van de pagina

## Parameters

## Parameters

name |   String |   Naam van de pagina |
-- | -- | -- |
description |   String |   Omschrijving van de pagina |
linkBlog |   String |   URL van blog |
linkWebsite |   String |   URL van website |
linkYouTube |   String |   URL van youTube |
linkFacebook |   String |   URL van facebook pagina |
linkTwitter |   String |   URL van twitter pagina |
linkGooglePlus |   String |   URL van Google+ |
linkTicketing |   String |   URL voor ticketing |
contactInfoTel |   String |   Contact informatie telefoon |
contactInfoEmail |   String |   Contact informatie email |
visible |   Boolean |   Aanduiding of pagina zichtbaar is. |
categoryId |   List<String> |   Id van categorisation http://build.uitdatabank.be/lib/1.1/categorisation.xml |
address |   String |   Adres |
tagline |   String |   Tagline |
keyword |   List<String> |   Trefwoord(en) voor de pagina |

## Response

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden: ACCESS\DENIED
* HTTP 400 BadRequest: MISSING\_REQUIRED\_FIELDS, UNKNOWN\_CATEGORY

## Voorbeeld

Request

```
POST {server}/page/f412b8a3-8b12-44bc-9a0a-c74ec0e88e98
name=Tuintips 2013
&linkTwitter=http://www.tuintips2013.be/twitter
&visible=true
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos">
<code>PAGE_MODIFIED</code>
<message>Page modified: f412b8a3-8b12-44bc-9a0a-c74ec0e88e98</message>
<resource>/page/f412b8a3-8b12-44bc-9a0a-c74ec0e88e98</resource>
<uid>f412b8a3-8b12-44bc-9a0a-c74ec0e88e98</uid>
</response>
{%endhighlight %}
