---
---

# Beheerder aan een pagina toevoegen

{server}/page/{uid}/admin/add

* Methode: POST
* Authenticatie: UserAccessToken waarbij de gebruiker beheerder van de pagina is.

## Parameters

userId |   String |   uid van CultureFeed gebruiker | Verplicht |  
relation |   String |   Beschrijving van het lidmaatschap |    |  
activityPrivate |   Boolean |   zichtbaarheid van activiteit voor lidmaatschap, default true |    |

## Response

### Succes

HTTP 200 OK met een response body in XML formaat.

* code: status code string: ACTION\_SUCCEEDED
* message: detail

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

HTTP 403 Forbidden |   ACCESS\_DENIED, ACTION\_NOT\_ALLOWED, USER\_NOT\_FOUND | </tbody></

## Voorbeeld

Request

```
POST {server}/page/a4970266-4bae-4f61-a8c4-600ddcd2edd6/admin/add  
userId=bb3d5877-7207-4c9b-a0d7-5e5c797d0f13  
&relation=Voorzitter
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84">
<code>ACTION\_SUCCEEDED</code>
<message>Lidmaatschap werd toegevoegd</message>
</response>
{% endhighlight %}
