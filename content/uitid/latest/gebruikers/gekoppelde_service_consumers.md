---
---

# Gekoppelde Service Consumers oplijsten

Gekoppelde service consumers van een user oplijsten en verwijderen
Users kunnen zo beheren welke service consumers het recht hebben hun data te bekijken/aan te passen.

	{server}/user/{ID}/serviceconsumers

met {ID} de UiTiD ID van de User

* Methode: GET
* Authenticatie: UserAccessToken van de gebruiker die zijn gekoppelde Service Consumers ophaalt

## Responses

### Succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
* serviceconsumers: een lijst van serviceconsumer entiteiten

De ServiceConsumer Entiteit bevat de volgende gegevens:

* ID ```integer```: de ID van de Service Consumer
* consumerKey ```String```: de publieke consumer key van de Service Consumer
* name ```String```: de naam van de Service Consumer
* description ```String```: de omschrijving van de Service Consumer
