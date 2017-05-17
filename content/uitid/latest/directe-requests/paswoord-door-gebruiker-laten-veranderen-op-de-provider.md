---
---

# Paswoord door gebruiker laten veranderen op de provider

Deze request laat toe om een pagina (of popup) te tonen waarmee de gebruiker zijn paswoord kan veranderen. Het is eveneens mogelijk om het paswoord gewoon via de User API te wijzigen, maar op deze manier moet de gebruiker zijn paswoord nooit aan de Service Consumer geven.

```
{server}/auth/changepassword/{userID}
```

waarbij {userID} de ID is van de gebruiker die zijn paswoord wil wijzigen

* Methode: GET  

## Parameters

| destination | `String` | URL waarnaar de browser van de gebruiker geredirect zal worden na het wijzigen |
