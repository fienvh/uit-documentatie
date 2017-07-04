---
---

# Ledenaanbod

Evenementen die enkel toegankelijk<sup>1</sup> zijn voor leden worden niet getoond op UiTinVlaanderen en UiTmetVlieg.  Evenmin worden deze evenementen getoond op de andere outputkanalen van UiT, tenzij hierop specifiek gefilterd wordt in Search API. 

Om aanbod aan te maken dat enkel toegankelijk is voor leden stuur je ```private="true"``` mee in de event-node, zoals in onderstaand voorbeeld: 

```
<?xml version="1.0" encoding="UTF-8"?>
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.3/FINAL/CdbXSD.xsd">
    <event availablefrom="2016-01-25T00:00:00" private="true">
</cdbxml>
```

<sup>1</sup> Let wel: enkel de evenementen die **uitsluitend** voor leden zijn maak je aan met ```private="true"``` in de node. 
