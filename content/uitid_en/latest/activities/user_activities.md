---
---

# Search for users who performed a particular activity

This call is typically used to build lists of "users who liked this event" or "users who are going to this event"

* Methode: GET
* Authenticatie: ConsumerRequest from the Service Consumer who performs the search

```
{server}/activity/
```

## Parameters

nodeId |	`String` |	nodeId of the activity for which Users are searched |	Obligatory
type|	`int`	| consumption type of the activity for which Users are wanted |	Obligatory
contentType	|`String`	| contentType of the activity for which Users are being searched |	Obligatory
start	|`int` | Start position in the list	 
max	|`int`	| Maximum number of users that will be returned

## Response

### Success

HTTP 200 OK with a response body in XML format
* code : Status code string
* users : list of found User entities
* total : total number of found User entities with this search

### Failure

HTTP status code, possibly supplemented with an XML body with extra information

HTTP 403 Forbidden: no or no valid ConsumerRequest was sent