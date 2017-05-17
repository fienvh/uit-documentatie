---
---

Volgers van een pagina verwijderen

```{server}/page/{uid}/follower/remove```

* Methode POST
* Authenticatie: UserAccessToken

## Parameters

userId | String | uid van CultureFeed gebruiker | Verplicht |

## Response

Succes

HTTP 200 OK met een response body in XML formaat.

Velden:
* code: Status code string: ACTION\_SUCCEEDED
* message: Detail bij foutcode

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

HTTP 403 Forbidden ACCESS\_DENIED, USER\_NOT\_FOUND, ACTION\_NOT\_ALLOWED

## Voorbeeld

Request

```
POST {prefix}/page/**56b48143-2d84-4041-bbce-9e8e80952cce**/follower/remove  
**userId=******fe9df655-59d8-436a-bc38-664f4796d498
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>  
<code>ACTION\_SUCCEEDED</code>  
<message>User [fe9df655-59d8-436a-bc38-664f4796d498] is no longer following page [56b48143-2d84-4041-bbce-9e8e80952cce]</message>  
</response> {%endhighlight %}
