---
---

# Aan de slag met UiTPAS API v 3.0

De UiTPAS API v 3.0 is een RESTful API.

De API geeft default XML terug. Indien je dat wil kan de API ook JSON teruggeven. Gebruik daarvoor de ```Accept: application/json HTTP Header```. Verdere documentatie is wel gebaseerd op de XML reponse.

De API maakt gebruik van de open standaard OAuth (1.0) voor authenticatie:

* [Authenticeren met OAuth 1.0](http://www.uitid.be/uitid/apidoc/uitpas-api.html#_authenticatie)
* [Authenticeren via Postman](http://documentatie.uitdatabank.be/content/authenticatie-autorisatie/latest/postman/ )

## Overzicht omgevingen

|  | Acceptatie | Productie |
| --- | --- | --- |
| URL | https://test.uitid.be/uitid/rest/ | https://www.uitid.be/uitid/rest/ |
| Key | 09218e67908469742360b7ad7361e852 | - |
| Secret | e0d51712928a2f2b140416b1e1de15d3 | - |

Contacteer info@uitpas.be in verband met productie credentials.

## URL structuur / {prefix}

URLs hebben steeds de volgende syntax:

```
{server}/uitid/rest/{endpoint}
```

De combinatie van ```{server}/uitid/rest``` noemen we verder ```{prefix}```.
