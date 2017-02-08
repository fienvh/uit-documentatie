---
---

# Een gekoppelde Service Consumer verwijderen

	{server}/user/{ID}/serviceconsumers/{consumerId}/revoke

waarbij
* {ID} de culturefeed ID van de User is
* {consumerId} de ID is van de ServiceConsumer waarvoor de koppeling verwijderd moet worden

* Methode: ```POST```
* Authenticatie: userAccessToken van de gebruiker waarvoor een koppeling verwijderd wordt

## Responses

### Succes

HTTP 200 OK met een response body in XML formaat met als code ```ServiceConsumerRevoked```

* code: status code string
