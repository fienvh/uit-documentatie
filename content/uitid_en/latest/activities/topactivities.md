---
---

# List of top shared events

Search of events with the most of certain actions within the last 7 days
eg. list of most shared events, list of most tweeted events

```
{server}/activity/topevents/{TYPE}
```

where {type} is the type of the shared activity:
* `like` for type LIKE activities
* `facebook` for type SHARE_FACEBOOK activities
* `twitter` for type SHARE_TWITTER activities
* `attend` for type ATTEND activities
* `active` for type LIKE, SHARE_FACEBOOK, SHARE_TWITTER en ATTEND activities together

* Method: GET
* Authentication: ConsumerRequest of the Service consumer who performs the query

## Parameters

max |	int	 | Maximum number of events that will be in the response

## Response

### Succes

HTTP 200 OK with a response body in XML format

* code: status code string
* events: list of Event entities found

The event entity consists of:

* cdbid: `String`	- De CDBID of the event
* countActive: `int`	number of times shared on facebook, twitter, liked or attended 
* countFacebook: `int`	number of times shared on facebook
* countAttends: `int`	number of times attended
* countLikes: `int`	number of times liked
* countTwitter: `int`	number of times on twitter

### Failure

HTTP status code, possibly supplemented with an XML body with additional information.

* HTTP 403 Forbidden: No or no valid ConsumerRequest was sent

## Example

Request

```
GET {server}/activity/topevents/like
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response>
<events>
<event>
<cdbid>0486f0b1-ba53-48c4-87ab-a36025f5df69</cdbid>
</event>
<event>
<cdbid>2c078a00-413d-4b4f-8949-3d0a1aea9db0</cdbid>
</event>
<event>
<cdbid>c194d6f4-751f-4e0b-b663-81de67fcdf72</cdbid>
</event>
<event>
<cdbid>1cb61a97-0db5-4e3d-940e-907f93845425</cdbid>
</event>
<event>
<cdbid>971231ef-e9fa-4e4b-9137-dc15c42fbf1b</cdbid>
</event>
</events>
</response>
{% endhighlight %}
