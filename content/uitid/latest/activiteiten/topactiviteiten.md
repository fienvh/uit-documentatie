---
---

# Lijst van top gedeelde evenementen

Top van bepaalde acties zoeken binnen de laatste 7 dagen
bvb. lijst van meest gedeelde events, lijst van meest getweete events

	{server}/activity/topevents/{TYPE}

waarbij {TYPE} het type is van de gedeelde activiteit:
* `like` voor type LIKE activiteiten
* `facebook` voor type SHARE_FACEBOOK activiteiten
* `twitter` voor type SHARE_TWITTER activiteiten
* `attend` voor type ATTEND activiteiten
* `active` voor type LIKE, SHARE_FACEBOOK, SHARE_TWITTER en ATTEND activiteiten samen

* Methode: GET
* Authenticatie: ConsumerRequest van de Service Consumer die de zoekopdracht uitvoert

## Parameters

max |	int	 | Maximum aantal evenementen dat in de response zal zitten

## Response

### Succes

HTTP 200 OK met een response body in XML formaat

* code: status code string
* events: lijst van gevonden Event entiteiten

Het event entiteit bestaat uit:

* cdbid: `String`	- De CDBID van het evenement
* countActive: `int`	aantal keer gedeeld op facebook, twitter, ge-liked of ge-attend
* countFacebook: `int`	aantal keer gedeeld op facebook
* countAttends: `int`	aantal keer ge-attend
* countLikes: `int`	aantal keer ge-liked
* countTwitter: `int`	aantal keer gedeeld op twitter

### Fouten

HTTP status code, eventueel aangevuld met een XML body met extra informatie
* HTTP 403 Forbidden	Er werd geen of geen geldig ConsumerRequest meegestuurd

## Voorbeeld

Request

	GET {server}/activity/topevents/like

Response
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
