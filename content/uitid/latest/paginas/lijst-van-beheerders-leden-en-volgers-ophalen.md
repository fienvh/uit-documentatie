---
---

# Lijst van beheerders, leden en volgers ophalen


```{server}/page/{uid}/user/list```

* Methode: GET
* Parameter: role (List<PageRole>): mogelijke waarden: ADMIN, MEMBER, FOLLOWER. Wanneer geen waarden worden meegegeven, worden alle rollen opgehaald

Consumer request of UserAccessToken.  

## Response

### Succes

HTTP 200 OK met een response body in XML formaat.

Velden:

* pageRole: ADMIN of MEMBER
* relation: Omschrijving van het lidmaatschap
* validated: true indien dit om een valideerd lidmaatschap gaat
* user.id: uid van de CultureFeed gebruiker
* user.nick: nick van de CultureFeed gebruiker
* user.depiction: profielfoto van de CultureFeed gebruiker

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

HTTP 403 Forbidden

## Voorbeeld

Request

```
GET {prefix}/page/a4970266-4bae-4f61-a8c4-600ddcd2edd6/user/list
```

Response

{% highlight xml %}
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<response xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:cdb="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL" xmlns:geo="http://www.w3.org/2003/01/geo/wgs84">
<pageMemberships>
<pageMembership>
<pageRole>ADMIN</pageRole>
<user>
<rdf:id>a7e8c74e-f952-4288-8a26-b0b373c6c701</rdf:id>
<foaf:nick>anwouters</foaf:nick>
<foaf:depiction><http://fis.dalicloud.com/fis/rest/picture-1.jpg</foaf:depiction>>
</user>
<creationDate>2013-03-01T13:35:51+01:00</creationDate>
</pageMembership>
<pageMembership>
<relation>Voorzitter</relation>
<pageRole>ADMIN</pageRole>
<validated>true</validated>
<user>
<rdf:id>cbf80d2f-ff66-4cee-9cc9-b872932f9481</rdf:id>
<foaf:depiction><http://fis.dalicloud.com/fis/rest/picture-1.jpg</foaf:depiction>>
</user>
<creationDate>2013-03-04T10:05:06+01:00</creationDate>
</pageMembership>
<pageMembership>
<relation>Testgebruiker</relation>
<pageRole>MEMBER</pageRole>
<user>
<rdf:id>7c713881-ac7e-4bfb-8668-8046fdbb642b</rdf:id>
<foaf:nick>liesledenaar</foaf:nick>
<foaf:depiction><http://fis.dalicloud.com/fis/rest/picture-1.jpg</foaf:depiction>>
</user>
<creationDate>2013-03-04T10:35:59+01:00</creationDate>
</pageMembership>
</pageMemberships>
<followers>
<follower>
<rdf:id>c5854241-4711-4f96-8a8a-4d6bb38fbaa4</rdf:id>
<foaf:nick>nele</foaf:nick>
<foaf:depiction><http://fis.dalicloud.com/fis/rest/picture-1.jpg</foaf:depiction>>
</follower>
</followers>
</response> {%endhighlight %}
