---
---

# Total Activities

Allows the totals of activities of one particular user to be queried.

```
{server}/activity/totals
```

* Method: GET
* Authentication:
	* ConsumerRequest of the consumer Service that requests the totals.
	* UserAccessToken of the user who requests the totals in the case of private activities (parameter private = true). Users can only count their own private activities in totals.

## Parameters

type_contentType |	`List<String>`	| combination of type and contentType to be counted. Can be repeated. | 	Oblogatory
userId |	`String` |	ID of the author of the searched activities |	Obligatory

## Response

### Success

HTTP 200 OK with a response body in XML format

* code: status code string
* total: the total number of activities found

### Failure

HTTP status code, possibly supplemented with an XML body with additional information.

HTTP 403 Forbidden: No or no valid ConsumerRequest was sent

## Example

Request

```
GET {server}/activity/totals?userId=b726781c-84d5-472f-93dc-74ed982658f8&type_contentType=14_event&type_contentType=14_page
```

Response

{% highlight xml%}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<total type="14_page">1</total>
<total type="14_event">2</total>
</response>
{% endhighlight %}
