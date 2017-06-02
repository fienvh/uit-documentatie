---
---

# Service endpoints

| URL | POST | PUT | GET | DELETE |
| -- | -- | -- | -- | -- |
| ```{server}/api/v2/{event}{production}{actor}``` | X (item aanmaken) | -- | X (item opzoeken) | -- |
| ```{server}/api/v2/{event}{production}{actor}``` | -- | X (item aanmaken) | X (item detail) | X (item verwijderen) |

Waarbij server =

- testomgeving: ```https://acc.uitid.be/uitid/rest/entry/test.rest.uitdatabank.be```
- live omgeving: ```https://www.uitid.be/uitid/rest/entry/rest.uitdatabank.be```


# Item aanmaken

## Request eigenschappen

Method: POST
URL: ```{server}/api/v2/{event|production|actor}```

Argumenten:

| Deel | Beschrijving | Verplicht |
| -- | -- | -- |
| Authenticatie | oAuth informatie, zie authenticatie via UiTID | X |
| Item | CdbXML 3.2 representatie van het item. Zie in drie stappen een CdbXML document maken | X |

## Voorbeeld

### Request URL

```
{server}/api/v2/event
```

### POST data

~~~ xml
<cdbxml xmlns="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.2/FINAL">
    <event>
      <calendar>
        <timestamps>
          <timestamp>
            <date>2015-03-21</date>
          </timestamp>
        </timestamps>
      </calendar>
      <categories>
        <category type="eventtype" catid="0.50.4.0.0">Concert</category>
      </categories>
      <contactinfo>
        <url main="true">hyperlink</url>
      </contactinfo>
      <eventdetails>
        <eventdetail lang="nl">
          <shortdescription>We houden rekening met de beperkingen</shortdescription>
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
</cdbxml>
~~~

### Response

~~~ xml
HTTP/1.1 200 OK
Cache-Control: no-cache
Pragma: no-cache
Content-Type: text/xml; charset=utf-8
Content-Encoding: deflate
Expires: -1
Date: Fri, 18 May 2012 07:59:11 GMT
Content-Length: 2142
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
<code>ItemCreated</code>
<link>uitdatabank.be/api/v2/event/{id}</link>
</rsp>
~~~

# Item aanpassen

## Request eigenschappen

Method: PUT
URL: ```{server}/api/v2/{event|production|actor}/{id}```

Argumenten:

| Deel | Beschrijving | Verplicht |
| -- | -- | -- |
| Authenticatie | oAuth informatie, zie authenticatie via UiTID | X |
| Item | CdbXML 3.2 representatie van het item. Zie in drie stappen een CdbXML document maken | X |

## Voorbeeld

### Request URL

```
{server}/api/v2/event/93b34aaf-3f94-4f6e-b514-98a92ca75502
```

### Post data (Zie voorbeeld bij 'item aanmaken')

```
...

```

### Response

```
HTTP/1.1 200 OK
Cache-Control: no-cache
Pragma: no-cache
Content-Type: text/xml; charset=utf-8
Content-Encoding: deflate
Expires: -1
Date: Fri, 18 May 2012 07:59:11 GMT
Content-Length: 2142
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
<code>ItemModified</code>
<link>http://www.uitdatabank.be/api/v2/event/{id}</link>
</rsp>
```

# Item verwijderen

## Request eigenschappen

Method: DELETE
URL: ```{server}/api/v2/{event|production|actor}/{id}```

Argumenten:

| Deel | Beschrijving | Verplicht |
| -- | -- | -- |
| Authenticatie | oAuth informatie, zie authenticatie via UiTID | X |

Een DELETE request om een actor te verwijderen waaraan events gekoppeld zijn is niet toegestaan.

## Voorbeeld

### Request URL

```
{server}/api/v2/event/93b34aaf-3f94-4f6e-b514-98a92ca75502
```

### Response

```
HTTP/1.1 200 OK
Cache-Control: no-cache
Pragma: no-cache
Content-Type: text/xml; charset=utf-8
Content-Encoding: deflate
Expires: -1
Date: Fri, 18 May 2012 07:59:11 GMT
Content-Length: 2142
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
<code>ItemWithdrawn</code>
</rsp>
```
