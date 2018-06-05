---
---

# Software architectuur van de UiTPAS-zuil

De CID heeft als OS een Linux systeem (Raspbian, een versie van Debian) waar een Java FX applicatie op draait.

Het management op OS niveau van de CID gebeurt via ssh (pi@ipadress). Het IP-adres wordt weergegeven tijdens het opstarten van de zuil.

De Java applicatie staat samen met de configfiles in de home dir van de pi user (/home/pi).

* java app : pi-''versienummer''.jar
* config file : cid.config

Deze applicatie schrijft zijn logs naar de file /tmp/cid.log.

De laatste 50 records zijn zichtbaar met dit commando:

```
tail -n 50 /tmp/cid.log
```

De actuele logs zijn zichtbaar met dit commando. Je stopt dit commando via ctrl-c.

```
tail -f /tmp/cid.log
```

Deze logs staan opgeslagen in een tijdelijk filesystem. Herstarten van de zuil wist dus de logs.

De logs worden ook naar een monitoring server geschreven. Je kan deze bekijken met de monitoring app die je kan downloaden op [http://files.uitpas.be/CID_monitor/](http://files.uitpas.be/CID_monitor/)
