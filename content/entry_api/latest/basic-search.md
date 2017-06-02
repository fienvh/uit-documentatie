---
---

Als ondersteunende service is een eenvoudige zoekfunctie voorzien om dubbele invoer te vermijden en items te zoeken om aan te passen of uit te breiden.

# Service endpoints


| URL | POST | PUT | DELETE | GET |
| -- | -- | -- | -- | -- |
| ```http://www.uitdatabank.be/api/v2/event?q=test``` |  |  |  | X (events zoeken) |
| ```http://www.uitdatabank.be/api/v2/event?q=test``` |  |  |  | X (actors zoeken) |

# Zoeken

## Request eigenschappen

Method: GET
URL:

```
http://www.uitdatabank.be/api/v2/event?q=
```

OF

```
http://www.uitdatabank.be/api/v2/actor?q=
```

Argumenten:

| Veld | Beschrijving | Verplicht |
| -- | -- | -- |
| Key | Zie authenticatie (query string parameter) | X |
| q | Vrije zoekopdracht die zoekt in volgende velden: Titel, locatie (enkel event), auteur, gemeente, type, thema (enkel event), externalID, CDBID |  |
| updatedsince | Gecreëerd of aangepast na tijdstip. |  |
| page | De pagina waar men zicht bevindt binnen de zoekopdracht. DEFAULT: 1 |  |
| pagelength | Het aantal items dat op één pagina wordt opgenomen. DEFAULT: 50 |  |
| sort | 	Standaard gesorteerd op lastchanged aflopend |  |

## Voorbeeld

### Request URL

```
http://www.uitdatabank.be/api/event?q=Kunstencentrum Vooruit
```

### Response

~~~ xml
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL">
<nofrecords>2</nofrecords>
  <list>
    <item cdbid="851d0490-a34a-4b41-980d-5fb0b6493c34"
      calendarsummary="woe 16/05/12"
      city="Gent"
      location="Kunstencentrum Vooruit"
      title="Mirel Wagner" />
    <item cdbid="28f3d212-df77-4478-881d-227d7ef8f83b"
      title="Het Lortcher-syndroom"
      calendarsummary="woe 16/05/12, do 17/05/12, vrij 18/05/12"
      city="Gent"
      location="Kunstencentrum Vooruit" />
  </list>
</cdbxml>
~~~

# Detailweergave

## Request eigenschappen

Method: GET
URL:

```
http://www.uitdatabank.be/api/v2/event/{id}
```

OF

```
http://www.uitdatabank.be/api/v2/actor/{id}
```

Argumenten:

| Veld | Beschrijving | Verplicht |
| -- | -- | -- |
| Key | Zie authenticatie (query string parameter) | X |

## Voorbeeld

~~~ xml
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL">
  <events>
    <event
      availablefrom="2012-02-10T00:00:00"
      availableto="2012-03-22T00:00:00"
      cdbid="21bab73b-f876-45fe-8cf7-43ef23e41fb2"
      createdby="mie.caers@turnhout.be"
      creationdate="2012-02-10T13:47:27"
      externalid="CDB:dfbab7c2-5b51-4441-8da9-6b4bdf16d279"
      lastupdated="2012-03-19T11:46:31"
      lastupdatedby="bart.vercauteren@turnhout.be"
      owner="Invoerders Algemeen "
      pctcomplete="95"
      published="true"
      validator="Turnhout Validatoren"
      wfstatus="approved"
      isparent="false">
      <calendar>
        <timestamps>
          <timestamp>
            <date>2012-03-21</date>
          </timestamp>
        </timestamps>
      </calendar>
      <categories>
        <category type="eventtype" catid="0.50.4.0.0">Concert</category>
      </categories>
      <contactinfo>
        <url main="true">http://www.cluricauns.com/kalender.php</url>
      </contactinfo>
      <eventdetails>
        <eventdetail lang="nl">
          <shortdescription>We houden rekening met de beperkingen van een kleine ruimte</shortdescription>
          <title>Watertorenfestival The Cluricauns</title>
        </eventdetail>
      </eventdetails>
      <location>
        <address>
          <physical>
            <city>Turnhout</city>
            <country>BE</country>
            <housenr>101</housenr>
            <street>Warandestraat</street>
            <zipcode>2300</zipcode>
          </physical>
        </address>
        <label>watertoren</label>
      </location>
    </event>
  </events>
</cdbxml>
~~~
