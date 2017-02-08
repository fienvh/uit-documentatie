---
---

# Een post versturen naar een online account

De Service Consumer die deze actie uitvoert in naam van de UiTiD User moet beschikken over de permissie ‘posten naar online account van gebruiker’.

Momenteel is het enkel mogelijk om naar een online account van het type ‘Facebook’ of 'Twitter' te posten. De gebruiker moet eveneens de optie ‘publishActivities’ aangezet hebben.

	{server}/user/{ID}/onlineaccount/post

waarbij {ID} de culturefeed ID van de User is

* Methode: POST
* Authenticatie: UserAccessToken van de gebruiker die eigenaar is van het online account in kwestie

## Parameters

accountName	| ID van het online account	| Verplicht
accountType	| type van het online account | Verplicht
message | boodschap die verstuurd wordt naar het online account	 
image	| URL naar de afbeelding die gestuurd wordt naar het online account. Deze parameter wordt genegeerd door Twitter.	 
link	| URL naar de gerefereerde pagina die gestuurd wordt naar het online account	 

## Responses

### Bij succes
HTTP 200 OK met een response body in XML formaat

* Status code:  string met Success, OnlineAccountNotFound, AccessDenied of PostFailed
* message: Foutboodschap met meer beschrijvende informatie
