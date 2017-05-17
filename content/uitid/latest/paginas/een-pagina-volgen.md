---
---

# Een pagina volgen

```{server}/page/{uid}/follow```

* Methode: POST
* Authenticatie: UserAccessToken


## Parameters

activityPrivate |   Boolean |   zichtbaarheid van activiteit voor volgen van pagina, default true |

## Response

### Succes

HTTP 200 OK met een response body in XML formaat.

* code: status code string: ACTION\_SUCCEEDED
* message: detail boodschap

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP Bad Request


* code: Status code string: PAGE\_NOT\_FOUND, ACTION\_NOT\_ALLOWED
* message: detail bij de foutmelding  

## Voorbeeld

Request

```
POST {prefix}/page/56b48143-2d84-4041-bbce-9e8e80952cce/follow
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<code>ACTION\_SUCCEEDED</code>
<message>CultureFeedUser [fe9df655-59d8-436a-bc38-664f4796d498] is following page [56b48143-2d84-4041-bbce-9e8e80952cce]</message>
</response> {%endhighlight %}
