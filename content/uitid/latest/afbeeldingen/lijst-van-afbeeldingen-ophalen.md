---
---

# Lijst van afbeeldingen ophalen

```
{server}/images/list_
```

* Methode: GET
* Authenticatie: UserAccessToken van de gebruiker die admin permissie op de Service Consumer heeft

## Parameters

Parameter | Omschrijving
Startindex | int  | default = 0
max |  int |  Maximum aantal terug te geven images. Default = 10

## Response

HTTP 200 OK met een response body in XML formaat met velden:
* Status: code string: ListImages  
* Images: Lijst van images met velden: id, fileName en url

## Voorbeeld

```
 GET http://{server}/images/list
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
<response>  
<code>ListImages</code>  
<images>  
<image>
<id>1</id>  
<fileName>myfile.jpg</fileName>  
<url>https://media.uitid.be/fis/rest/download/ce126667652776f0e9e55160f12f5478/uiv/default.png</url>
</image>  
</images>  
</response>
{% endhighlight %}
