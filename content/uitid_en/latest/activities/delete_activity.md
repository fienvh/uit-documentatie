---
---

# Delete Activity

Users can delete actions so that they no longer count in calculating their recommendations.

```
{server}/activity/{ID}/delete
```

where {ID} is the id of the Activity

* Method: `GET`
* Authentication: UserAccessToken of the user performing the action

## Response

### Succes

HTTP 200 OK with a response body in XML format

* code: status code string
* ActivityID: ID of the created activity

### Failure

HTTP status code, possibly supplemented with an XML body with additional information

* HTTP 400 Bad Request: Code ' ActivityDeleteNotAllowed ' if it is not possible to delete the activity
* HTTP 403 Forbidden: No user authenticated or authenticated user has no rights to delete an activity for the specified userId