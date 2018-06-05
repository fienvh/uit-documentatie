---
---

# Gebruikers zoeken die een bepaalde activiteit uitvoerden

Deze call wordt typisch gebruikt om lijsten te bouwen als “gebruikers die dit event leuk vonden” of “gaan hier naartoe”

* Methode: GET
* Authenticatie: ConsumerRequest van de Service Consumer die de zoekopdracht uitvoert

```
{server}/activity/
```

## Parameters

nodeId |	`String` |	nodeId van de activiteit waarvoor Users gezocht worden |	Verplicht
type|	`int`	| consumption type van de activiteit waarvoor Users gezocht worden |	Verplicht
contentType	|`String`	| contentType van de activiteit waarvoor Users gezocht worden	Verplicht
start	|`int` | Start positie in de lijst	 
max	|`int`	|Maximum aantal gebruikers die teruggegeven zullen worden	 

## Response

### Bij succes

HTTP 200 OK met een response body in XML formaat
* code	Status code string
* users	lijst van gevonden User entiteiten
* total	totaal aantal gevonden User entiteiten met deze zoekopdracht

### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie

HTTP 403 Forbidden: er werd geen of geen geldig ConsumerRequest meegestuurd
