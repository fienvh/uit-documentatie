---
---

# Domeinen

Via ```http://taxonomy.uitdatabank.be/api/domain``` worden de domeinen weergegeven, en per domein de classificatie van termen daarbinnen.


| Parameter | Type | Beschrijving |
| -- | -- | -- |
| /{ID} | path |  Weergave van naam en ID van het opgevraagde domein. Voorbeeld: ```http://taxonomy.uitdatabank.be/api/domain/eventtype``` |
| /{ID}/classification | path | Weergave in een boommodel van de termen die tot het domein behoren. Voorbeeld: ```http://taxonomy.uitdatabank.be/api/domain/eventtype/classification```

Aandachtspunten:

* Als er geen ID wordt gegeven worden alle domeinen getoond
* Als er een foute ID wordt meegegeven wordt een foutmelding teruggegeven


Voorbeeldresponse http://taxonomy.uitdatabank.be/api/domain

```xml
<?xml version="1.0" encoding="UTF-8"?>
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.2/FINAL">
<nofresults>10</nofresults>
<categorisation url="http://rest.uitdatabank.be/api/domain">
<domain createdby="lukv2" createdon="2013-01-16T16:24" id="eventtype"
label="Type Aanbod UiT domein" />
<domain createdby="lukv2" createdon="2013-01-16T16:24" id="actortype"
label="Type organisatie of persoon" />
<domain createdby="lukv2" createdon="2013-01-16T16:24" id="region"
label="Regio in Vlaanderen en Brussel" />
</categorisation>
</cdbxml>
```

Voorbeeldresponse http://taxonomy.uitdatabank.be/api/domain/actortype/classification

```xml
<?xml version="1.0" encoding="UTF-8"?>
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.2/FINAL">
<categorisation url="http://rest.uitdatabank.be/api/domain/actortype/classification">
<term createdby="lukv2"
createdon="2013-01-16T16:24"
domain="actortype"
enabled="true"
id="8.15.0.0.0"
label="Locatie" show="false" sort="1">
<term createdby="lukv2" createdon="2013-01-16T16:24"
domain="actortype"
enabled="true"
id="8.9.1.0.0"
label="Bioscoop"
label_nl="Bioscoop"
label_fr="Théatre"
label_en="Movie theater"
parentid="8.15.0.0.0" show="false" sort="1" />
<term createdby="lukv2" createdon="2013-01-16T16:24"
domain="actortype"
enabled="true"
id="8.46.0.0.0"
label="Historisch waardevol gebouw"
parentid="8.15.0.0.0" sort="2" />
</term>
<term createdby="lukv2" createdon="2013-01-16T16:24"
domain="actortype"
enabled="true"
label="Uitvoerder(s)"
id="8.0.0.0.0" show="false" sort="2" />
<term createdby="lukv2" createdon="2013-01-16T16:24"
domain="actortype"
enabled="true"
label="Organisator(en)"
id="8.11.0.0.0" show="false" sort="3" />
</categorisation>
</cdbxml>
```
