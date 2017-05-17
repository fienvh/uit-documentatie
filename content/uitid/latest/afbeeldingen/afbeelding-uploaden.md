---
---

# Afbeelding uploaden

```
_{server}/images/upload_
```
* Methode: POST
* Authenticatie: UserAccessToken van de gebruiker die admin permissie op de Service Consumer heeft

**Encoding**  
 multipart/form-data

## Parameters

| Parameter | Type |  Beschrijving |
| image |  bytes |  De bytes van het eigenlijke afbeeldingsbestand. Ondersteunde formaten zijn: JPG, PNG en GIF |

De maximum bestandsgrootte is 5 MB.

Deze request verwacht ruwe multipart data, wat wil zeggen dat de request header Content-Type op multipart/form-data gezet moet worden. Het is aangeraden om eveneens de filename van de Content-Disposition in te stellen. Die naam zal gebruikt worden als bestandsnaam in de image URL.

## Response

HTTP 200 OK met een response body in XML formaat  

* code: status code string: ImageUploaded, ImageUploadFailed, InvalidImageType, FileNameRequired, ImageTooLarge
* image: de image met velden: id, fileName en url |  
* message: eventuele foutboodschap (indien code niet ImageUploaded is)

{% highlight xml%}
 POST http://{server}/images/upload  
 Content-Type: multipart/form-data  
 Accept: application/xml  
 Authorization: OAuth oauth\_signature="...", oauth\_version="1.0", oauth\_nonce="...", oauth\_consumer\_key="...", oauth\_signature\_method="HMAC-SHA1", oauth\_token="...", oauth\_timestamp="...."  
 --Boundary\_4\_10784296\_1322767159646  
 Content-Type: multipart/form-data  
 Content-Disposition: form-data; filename="myfile.jpg"; name="depiction"  
 … raw image data ...

--Boundary\_4\_10784296\_1322767159646--
{% endhighlight %}

Response

{% highlight xml%}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
<response>  
 <code>ImageUploaded</code>  
 <image>  
 <id>1</id>  
 <fileName>myfile.jpg</fileName>  
 <url><https://media.uitid.be/fis/rest/download/ce126667652776f0e9e55160f12f5478/uiv/default.png</url>  
</image>  
</response>
{% endhighlight %}
