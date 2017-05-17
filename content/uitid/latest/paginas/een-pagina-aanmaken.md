---
---

# Een pagina aanmaken

  {server}/page

* Methode: POST
* Authenticatie: UserAccessToken

## Parameters

name |   String |   Naam van de pagina |
-- | -- | -- | --
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
visible |   Boolean |   Aanduiding of pagina zichtbaar is. Default: true |    |  
categoryId |   List<String> |  Id van categorisation http://build.uitdatabank.be/lib/1.1/categorisation.xml Deze parameter kan herhaald worden om meerdere categorieën in te geven. |
street |   String |   Straat  |
zip |   String |   Postcode |
city |   String |   gemeente |
country |   String |   ISO landcode |
tagline |   String |   Tagline |
keyword |   List<String> |   Trefwoorden voor de pagina |

## Response

### Bij fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP 400 BadRequest: MISSING\_REQUIRED\_FIELDS, UNKNOWN\_CATEGORY

## Voorbeeld

Request

```
  POST {server}/page  
  name=Testpagina
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos">
<code>PAGE\_CREATED</code>  
<message>Page created: 8c4e0f23-260a-41bc-bd26-90492882b5e7</message>  
<resource>/page/8c4e0f23-260a-41bc-bd26-90492882b5e7</resource>  
<uid>8c4e0f23-260a-41bc-bd26-90492882b5e7</uid>  
</response> {%endhighlight %}
