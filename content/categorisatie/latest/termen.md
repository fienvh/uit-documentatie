---
---

# Termen

Via ```http://taxonomy.uitdatabank.be/api/term``` kunnen alle termen doorzocht worden. Er wordt een platte lijst teruggezonden, al dan niet gefilterd door een ingestelde input parameter.

| Parameter | Type | Beschrijving |
| q | Query String parameter | Mits deze parameter filtert men de resultaten op basis van term benaming of ID. De engine doorzoekt het overzicht van termen,  voegt daarbij wildcards voor en na de ingegeven zoekterm en zoekt in de categorie naam, de vertalingen en het opgegeven ID. Voorbeeld: ```http://taxonomy.uitdatabank.be/api/term?q=pop```
| {ID} | path parameter | Mits deze parameter wordt normaal slechts één zoekresultaat teruggegeven en dat is de term die hoort bij de betreffende ID. Voorbeeld: ```http://taxonomy.uitdatabank.be/api/term/12.1.0.0.0```

**Voorbeeld response**

~~~ xml
<?xml version="1.0" encoding="utf-8"?>
<cdbxml xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.2/FINAL">
 <nofrecords>3</nofrecords>
 <categorisation url="http://rest.uitdatabank.be/api/term/?q=pop">
   <term createdby="CultuurNet"
      creationdate="2013-03-26T20:53:07"
      domain="theme"
      enabled="true"
      id="1.8.3.1.0"
      label="Pop en rock"
      labelnl="Pop en rock"
      show="true"
      sort="42" />
   <term createdby="CultuurNet"
      creationdate="2013-03-26T20:53:07"
      domain="theme"
      enabled="true"
      id="1.3.5.0.0"
      label="Figuren en poppentheater"
      labelnl="Figuren en poppentheater"
      show="true"
      sort="67" />
   <term createdby="CultuurNet"
      creationdate="2013-03-26T20:53:07"
      domain="flandersregion"
      enabled="true"
      id="reg.280"
      label="Poperinge"
      labelnl="Poperinge"
      parentid="reg.14"
      show="true"
      sort="266" />
 </categorisation>
</cdbxml>
~~~
