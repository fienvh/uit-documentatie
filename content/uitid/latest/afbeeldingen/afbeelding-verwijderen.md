---
---

# Afbeelding verwijderen

```
{server}/images/{id}/delete_
```

* Methode: POST

* Authenticatie: userAccessToken van de gebruiker die admin permissie op de Service Consumer heeft

## Response


HTTP 200 OK met een response body in XML formaat

* code: Status code string: ImageDeleted, ImageNotFound | </tbody></

```
GET http://{server}/images/1/delete
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>  
<response>  
<code>ImageDeleted</code>  
</response>
{% endhighlight %}
