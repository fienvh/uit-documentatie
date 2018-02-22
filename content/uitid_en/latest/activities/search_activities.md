---
---

# Search of activities

Search of activities. This call allows many different search parameters.
This allows the activities of one specific user to be made, lists of the last activities of one particular service consumer to be made etc.

```
{server}/activity
```

* Methode: GET
* Authentication:
	* ConsumerRequest of the Service consumer who performs the search
	* UserAccessToken of the user who performs the search in case private activities (parameter private = True). In this case, the UserId parameter must be specified. Users can only retrieve private activities

## Parameters

| userId | `String` | ID of the author of this activity | Obligatory
| nodeId | `String` | nodeId of this activity (= CDBID of the event) | Obligatory
| nodeTitle | `String` | titel of this activity | Obligatory
| contentType | `String` | the content type of this activity | Obligatory
| type | `int` | consumptionType of this activity | Obligatory
| value | `String` | value of this activity | Obligatory
| points | `int` | points of this activityit |
| private | `true` of `false` | privacy status of this activity
| parentActivity | String | ID of the parent activity. Only allowed with type 'comment' |
| onBehalfOf | String | Activity happens on behalf of the page with the given uid |

If the parameter private is not given, the user's preference will be used for the type of activity. If the user has no preference, the activity is set by default. If private is given, this will override the user preference.

## Responses

### Succes

HTTP 200 OK with a response body in XML format.
* code: status code string
* activityID: ID of the created activity

### Failure

HTTP status code, possibly supplemented with an XML body with additional information

* HTTP 400 Bad request: missing parameters
* HTTP 403 Forbidde: No user is authenticated or the authenticated user has no rights to create an activity for the specified userId

## Example

Request

```
POST {server}/culturefeed/rest/activity
nodeId=EXAMPLE-CDBID
&userId=b726781c-84d5-472f-93dc-74ed982658f8
&value=test
&type=3
&private=false
```

Response

{% highlight xml%}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#">
   <code>ActivityCreated</code>
   <activityId>3b57f54a-2d3e-4577-b2b2-9ef7715547dd</activityId>
</response>
{% endhighlight %}
