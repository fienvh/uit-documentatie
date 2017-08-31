---
jira: UIV-1933
---

# Dubbele links in contactinformatie

## Symptoom

Links in de contactinformatie verschijnen meer dan één keer.

## Oorzaak

Dit probleem doet zich enkel voor bij activiteiten die:

- voor 2017 ingevoerd werden
- niet via uitdatabank.be ingevoerd werden
- via uitdatabank.be aangepast op basis van een gekopieerde oudere activiteit.

De nieuwe UiTdatabank bewaart links onder het object contactinfo, maar verwijdert niet de informatie die bewaard werd als webresource of website. Zo ging geen informatie verloren en konden ook oudere platformen deze informatie blijven gebruiken.

## Mogelijke oplossing

Voor Culturefeed-sites is sinds versie 3.10 [een instelling toegevoegd](https://github.com/cultuurnet/culturefeed/pull/148/ "Check pull request on Github for more details") waarmee je optioneel alle mogelijke dubbele links kan verbergen. Deze instelling staat default uit en moet je dus expliciet inschakelen.

Andere integraties hebben zelf de keuze welke links ze tonen: url's onder contactinformatie óf url's meegestuurd als webresource/weblink. Let wel: links onder webresource of weblink kunnen niet door een organisator aangepast worden.
