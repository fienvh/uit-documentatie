---
---

# Berichten totalen

```
{server}/message/totals
```

* Methode: GET
* Authenticatie: UserAccessToken

### Succes

HTTP status code 200 met een XML met de velden:

* code: SUCCESS
* total: lijst van totalen per status

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

HTTP 403 Forbidden

## Voorbeeld

Request

```
GET {server}/message/count
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<total type="READ">7</total>
<total type="UNREAD">3</total>
</response>
{% endhighlight %}
