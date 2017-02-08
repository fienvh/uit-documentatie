---
---

# Authenticatie via Consumer Request

Deze methode wordt [hier](http://oauth.googlecode.com/svn/spec/ext/consumer_request/1.0/drafts/2/spec.html) beschreven en staat ook bekend als 2-legged oauth.

![2-legged oauth](/img/2legged.png "2-legged oauth")

Bij deze vorm van authenticatie is er geen accesToken of accessTokenSecret. Deze worden uit de request weggelaten (of als lege string meegegeven).

De Consumer Request wordt gebruikt wanneer een Service Consumer een actie uitvoert die niet namens 1 gebruiker gebeurt. De stap met de gebruikers autorisatie valt dus ook weg.

De Service Consumer tekent de request door middel van zijn consumerKey en consumerSecret.
