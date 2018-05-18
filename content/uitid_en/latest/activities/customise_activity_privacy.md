---
---

# Customise activity privacy

Customize Privacy of a particular activity

* Method: `POST`
* Authentication: UserAccessToken of the user performing the action.

```
{server}/activity/{ID}
```

where {ID} is the ID of the Activity.

## Parameters

private | `true` or `false` |	Privacy status van this activity |	Obligatory

## Response

### Success

HTTP 200 OK with a response body in XML format
* code : Status code string
* activityID: ID of the created activity

### Failure

HTTP status code, possibly supplemented with an XML body with additional information

* HTTP 400 Bad Request: Missing parameters
* HTTP 403 Forbidden: No user authenticated or authenticated user has no rights to modify an activity for the specified userId

## Example

Request

```
POST http://test.uidid.be/culturefeed/rest/activity
private=true
&private=false
```

Response

{% highlight xml%}
	<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
	<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
	<code>ActivityUpdatedResult</code>
	<activityId>b0f73151-2013-47ba-9612-1a5dae0c988b</activityId>
	</response>
{% endhighlight %}
