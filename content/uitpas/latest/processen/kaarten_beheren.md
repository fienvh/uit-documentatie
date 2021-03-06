---
---

# Kaarten beheren


Kaartbeheer is het proces waarbij kaartnummer/chipnummer combinaties worden geregistreerd binnen het UiTPAS systeem en verdeeld worden over de verschillende registratiebalies. Van daaruit kan de kaart toegekend worden aan een pashouder.

![hh-kaarten-beheren](/img/hh-kaarten-beheren.png "hh-kaarten-beheren")


## Werking:
(1) KSB genereert kaartnummers in het administrator dashboard en geeft deze door aan de kaartleverancier.

De kaartleverancier bezorgt de KSB een .csv file met daarin kaartnummer - NFC chipnummer combinaties, bvb
"044D71DA862680";"0945000057915"  
"048526DA862680";"0945000058012"

(2) KSB laadt .csv met [kaartnummer - NFC chipnummer] op in het administrator dashboard.

Het UiTPAS systeem checkt geldigheid en uniciteit van kaartnummers en chipnummer.

(3) KSB verdeelt een card package waartoe kaart behoort naar een registratiebalie

Cardpackages bestaan altijd uit 50 UiTPAS’en. Het is aangeraden dat de kaartleverancier de UiTPAS’en in pakketjes van 50 levert. UiTPAS’en voor MIA’s kunnen alleen verdeeld worden naar geautoriseerde registratiebalies.

(4) KSB geeft aan dat kaart is aangekomen in registratiebalie.

(5) KSB stuurt card package waartoe UiTPASnummer behoort terug naar stock

(6) Baliemedewerker registreert pashouder met kaartnummer

(7) Baliemedewerker of pashouder blokkeert UiTPAS

## Sanity checks
* Chipnummers zijn globaal uniek
* UiTPASnummers zijn globaal uniek
* UiTPAS’en worden alleen verdeeld naar registratiebalies
* UiTPAS’en voor MIA’s kunnen alleen verdeeld worden naar geautoriseerde registratiebalies
* UiTPAS’en voor MIA’s kunnen alleen worden toegekend aan MIA’s
* UiTPAS’en voor niet-MIA’s kunnen alleen worden toegekend aan niet-MIA’s
* Gemeente pashouder = gemeente balie tenzij balie behoort tot groep “mag pashouders andere gemeentes registreren”
