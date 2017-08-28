---
jira: UIV-1933
---

# Dubbele links in contactinformatie

## Symptoom

Links in de contactinformatie verschijnen meer dan één keer.

## Oorzaak

Dit probleem doen zich enkel voor bij activiteiten die:

- voor 2017 ingevoerd werden
- niet via uitdatabank.be ingevoerd werden
- via uitdatabank.be aangepast op basis van een gekopieerde oudere activiteit.

De nieuwe UiTdatabank bewaart links onder het object contactinfo, maar verwijdert niet de informatie die bewaard werd als webresource of website. Zo ging geen informatie verloren en konden ook oudere platformen deze informatie blijven gebruiken.

## Mogelijke oplossing

Culturefeed-sites kunnen gebruik maken van een instelling die de contactinformatie niet meer toont.

Andere integraties hebben zelf de keuze welke links ze tonen: url's onder contactinformatie óf url's meegestuurd als webresource/weblink. Let wel: links onder webresource of weblink kunnen niet door een organisator aangepast worden.
