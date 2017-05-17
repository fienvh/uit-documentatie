---
---

#  Gebruikersaccount met sociaal netwerk connecteren

```
{server}/auth/network/extra
```

Deze request laat toe om op de Service Consumers pagina's de huidige gebruikersaccount te koppelen aan sociale netwerk als Facebook/Twitter/Google

* Methode: POST
* Authenticatie: met user acces token, op vraag van de user

## Parameters

| network | `String` |   Mogelijke waarden: Facebook, Twitter, Google+ |  
| destination | `String` |   URL waarnaar de browser van de gebruiker geredirect zal worden na het connecteren |
