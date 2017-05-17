---
---

Logout op de provider forceren

Deze request meldt de gebruiker af op de UiTiD provider.

```
{server}/auth/logout
```

* Methode: GET  

## Parameters

| destination | `String` |   URL waarnaar de browser van de gebruiker zal worden geredirect na het uitloggen |

## Response

De browser van de gebruiker zal geredirect worden naar de next-parameter.
