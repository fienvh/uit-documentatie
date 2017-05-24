---
---

# Referentiegids

Een overzicht van alle geïndexeerde velden, gefilterd op relevantie, met voorbeelden.

<a id="index"></a>

**Basis**

* [agefrom](#agefrom)
* [calendarsummary](#calendarsummary)
* [category_id](#categoryid)
* [category_name](#categoryname)
* [city](#city)
* [country](#country)
* [datetype](#datetype)
* [detail_lang](#detaillang)
* [enddate](#enddate)
* [keywords](#keywords)
* [longdescription](#longdescription)
* [mail](#mail)
* [permanent](#permanent)
* [phone](#phone)
* [physical_gis](#physicalgis)
* [price](#price)
* [pricedescription](#pricedescription)
* [private](#private)
* [shortdescription](#shortdescription)
* [startdate](#startdate)
* [street](#street)
* [text](#text)
* [title](#title)
* [type](#type)
* [url](#url)
* [zipcode](#zipcode)


**Category**

* [category_actortype_id](#categoryactortypeid)
* [category_actortype_name](#categoryactortypename)
* [category_eventtype_id](#categoryeventtypeid)
* [category_eventtype_name](#categoryeventtypename)
* [category_facility_id](#categoryfacilityid)
* [category_facility_name](#categoryfacilityname)
* [category_misc_id](#categorymiscid)
* [category_misc_name](#categorymiscname)
* [category_municipal_id](#categorymunicipalid)
* [category_municipal_name](#categorymunicipalname)
* [category_publicscope_id](#categorypublicscopeid)
* [category_publicscope_name](#categorypublicscopename)
* [category_targetaudience_id](#categorytargetaudienceid)
* [category_targetaudience_name](#categorytargetaudiencename)
* [category_theme_id](#categorythemeid)
* [category_theme_name](#categorythemename)
* [exact_category_id](#exactcategoryid)
* [exact_category_name](#exactcategoryname)


**Contact**

* [contactinfo_city](#contactinfocity)
* [contactinfo_country](#contactinfocountry)
* [contactinfo_housenr](#contactinfohousenr)
* [contactinfo_physical_gis](#contactinfophysicalgis)
* [contactinfo_street](#contactinfostreet)
* [contactinfo_zipcode](#contactinfozipcode)


**Location**

* [location_category_facility_id](#locationcategoryfacilityid)
* [location_category_facility_name](#locationcategoryfacilityname)
* [location_category_id](#locationcategoryid)
* [location_category_misc_id](#locationcategorymiscid)
* [location_category_misc_name](#locationcategorymiscname)
* [location_category_name](#locationcategoryname)
* [location_cdbid](#locationcdbid)
* [location_contactinfo_city](#locationcontactinfocity)
* [location_contactinfo_country](#locationcontactinfocountry)
* [location_contactinfo_housenr](#locationcontactinfohousenr)
* [location_contactinfo_street](#locationcontactinfostreet)
* [location_contactinfo_zipcode](#locationcontactinfozipcode)
* [location_createdby](#locationcreatedby)
* [location_externalid](#locationexternalid)
* [location_keywords](#locationkeywords)
* [location_label](#locationlabel)
* [location_mail](#locationmail)
* [location_owner](#locationowner)
* [location_phone](#locationphone)
* [location_shortdescription](#locationshortdescription)
* [location_url](#locationurl)


**Organiser**

* [organiser_category_facility_id](#organisercategoryfacilityid)
* [organiser_category_facility_name](#organisercategoryfacilityname)
* [organiser_category_id](#organisercategoryid)
* [organiser_category_misc_id](#organisercategorymiscid)
* [organiser_category_misc_name](#organisercategorymiscname)
* [organiser_category_name](#organisercategoryname)
* [organiser_cdbid](#organisercdbid)
* [organiser_contactinfo_city](#organisercontactinfocity)
* [organiser_contactinfo_country](#organisercontactinfocountry)
* [organiser_contactinfo_housenr](#organisercontactinfohousenr)
* [organiser_contactinfo_street](#organisercontactinfostreet)
* [organiser_contactinfo_zipcode](#organisercontactinfozipcode)
* [organiser_keywords](#organiserkeywords)
* [organiser_label](#organiserlabel)
* [organiser_language](#organiserlanguage)
* [organiser_mail](#organisermail)
* [organiser_owner](#organiserowner)
* [organiser_phone](#organiserphone)
* [organiser_shortdescription](#organisershortdescription)
* [organiser_title](#organisertitle)
* [organiser_url](#organiserurl)


**Performer**

* [performer_label](#performerlabel)
* [performer_role](#performerrole)


**Publicatie**

* [availablefrom](#availablefrom)
* [availableto](#availableto)
* [cdbid](#cdbid)
* [createdby](#createdby)
* [creationdate](#creationdate)
* [externalid](#externalid)
* [lastupdated](#lastupdated)
* [lastupdatedby](#lastupdatedby)
* [owner](#owner)
* [pctcomplete](#pctcomplete)
* [title_sort](#titlesort)
* [validator](#validator)
* [wfstatus](#wfstatus)
* [past](#past)
* [unavailable](#unavailable)


**Sociaal**

* [attend_count](#attendcount)
* [comment_count](#commentcount)
* [like_count](#likecount)
* [recommend_count](#recommendcount)




## agefrom
```int```

Startleeftijd vanaf wanneer een aanbod geschikt is. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=agefrom:[6 TO 12]
```

[Terug naar index](#index)


## attend_count
```int```

Aantal keren geklikt op "Ik ga".

```
{BaseUrl}search?q=*:*&fq=attend_count:[10 TO *]
```

[Terug naar index](#index)


## availablefrom
```ts```

Datum vanaf wanneer dit item mag verschijnen. Standaard is de filter [NOW TO *] ingesteld..

```
{BaseUrl}search?q=availableto:[NOW TO *] AND availablefrom:[* TO NOW]&fq=type:event&group=true
```

[Terug naar index](#index)


## availableto
```ts```

Datum tot wanneer het item mag verschijnen. (filter * TO NOW standaard ingesteld in service consumer abonnement).

```
{BaseUrl}search?q=availableto:[NOW TO *] AND availablefrom:[* TO NOW]&fq=type:event&group=true
```

[Terug naar index](#index)


## calendarsummary
```string```

Leesbare samenvatting van de gestructureerde tijdsinformatie. Geldig voor: events, actors.

```
{BaseUrl}search?q=calendarsummary:"02/07/14"
```

[Terug naar index](#index)


## category_actortype_id
```string```

ID van de locatie-categorie.

```
{BaseUrl}search?q=category_actortype_id:"8.50.0.0.0"
```

[Terug naar index](#index)


## category_actortype_name
```string```

Naam van de locatie-categorie.

```
{BaseUrl}search?q=category_actortype_name:"Sportcentrum"
```

[Terug naar index](#index)


## category_eventtype_id
```string```

ID van de aanbod-categorie.

```
{BaseUrl}search?q=category_eventtype_id:"0.50.6.0.0"
```

[Terug naar index](#index)


## category_eventtype_name
```string```

Naam van de aanbod-categorie.

```
{BaseUrl}search?q=category_eventtype_name:"Film"
```

[Terug naar index](#index)


## category_facility_id
```string```

ID van de voorzieningen-categorie.

```
{BaseUrl}search?q=category_facility_id:"3.15.0.0.0"
```

[Terug naar index](#index)


## category_facility_name
```string```

Naam van de voorzieningen-categorie.

```
{BaseUrl}search?q=category_facility_name:"Audiogids"
```

[Terug naar index](#index)


## category_id
```string```

ID van de event-categorie. Geldig voor: events, actors.

```
{BaseUrl}search?q=category_id:2.2.4.0.0 OR category_id:2.2.3.0.0
```

[Terug naar index](#index)


## category_misc_id
```string```

ID van de 'misc'-categorie .

```
{BaseUrl}search?q=category_misc_id:"5.1.0.0.0"
```

[Terug naar index](#index)


## category_misc_name
```string```

Naam van de 'misc'-categorie.

```
{BaseUrl}search?q=category_misc_name:"Gesloten"
```

[Terug naar index](#index)


## category_municipal_id
```string```

ID van de regio-categorie.

```
{BaseUrl}search?q=category_municipal_id:"reg.1195"
```

[Terug naar index](#index)


## category_municipal_name
```string```

Naam van de regio-categorie.

```
{BaseUrl}search?q=category_municipal_name:"Roeselare"
```

[Terug naar index](#index)


## category_name
```string```

Naam van de categorie waar het event toe behoort. Meertalig. Geldig voor: events, actors.

```
{BaseUrl}search?q=category_name:Art%20de%20marionnettes
```

[Terug naar index](#index)


## category_publicscope_id
```string```

ID van de publieksbereik-categorie.

```
{BaseUrl}search?q=category_publicscope_id:"6.1.0.0.0"
```

[Terug naar index](#index)


## category_publicscope_name
```string```

Naam van de publieksbereik-categorie.

```
{BaseUrl}search?q=category_publicscope_name:"Lokaal"
```

[Terug naar index](#index)


## category_targetaudience_id
```string```

ID van de doelgroepen-categorie.

```
{BaseUrl}search?q=category_targetaudience_id:"2.2.2.0.0"
```

[Terug naar index](#index)


## category_targetaudience_name
```string```

Naam van de doelgroepen-categorie.

```
{BaseUrl}search?q=category_targetaudience_name:"Senioren"
```

[Terug naar index](#index)


## category_theme_id
```string```

ID van het thema.

```
{BaseUrl}search?q=category_theme_id:"1.43.0.0.0"
```

[Terug naar index](#index)


## category_theme_name
```string```

Naam van het thema.

```
{BaseUrl}search?q=category_theme_name:"Interculturele vorming"
```

[Terug naar index](#index)


## cdbid
```string```

ID van het item (guid). Geldig voor: events, actors.

```
{BaseUrl}search?q=cdbid:844d5927-3579-460f-aa77-f20c9db2f077&group=true
```

[Terug naar index](#index)


## city
```string```

(Deel)gemeentenaam van de gemeente waar het event plaatsvindt, waar de organisatie zich bevindt. Geldig voor: events, actors.

```
{BaseUrl}search?q=city:[Aalter TO Antwerpen]&fq=type:event
```

[Terug naar index](#index)


## comment_count
```int```

Aantal keren dat een commentaar op het item werd geplaatst.

```
{BaseUrl}search?q=*:*&fq=comment_count:[10 TO *]
```

[Terug naar index](#index)


## contactinfo_city
```string```

Gemeente bij de contactinformatie.

```
{BaseUrl}search?q=contactinfo_city:"Gent"
```

[Terug naar index](#index)


## contactinfo_country
```string```

Land bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_country:"BE"
```

[Terug naar index](#index)


## contactinfo_housenr
Huisnummer bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_housenr:"101"
```

[Terug naar index](#index)


## contactinfo_physical_gis
```string```

GIS-code bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_physical_gis:"50.818342,3.187166"
```

[Terug naar index](#index)


## contactinfo_street
```string```

Straat bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_street:"Veldstraat"
```

[Terug naar index](#index)


## contactinfo_zipcode
```string```

Postcode bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_zipcode:"9000"
```

[Terug naar index](#index)


## country
```enum```

ISO landcodes; land waar het event plaatsvindt, land waar de organisatie zich bevindt. Geldig voor: events, actors.

```
{BaseUrl}search?q=country:FR&group=event
```

[Terug naar index](#index)


## createdby
```string```

Auteur van het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=createdby:"luk.verhelst@gmail.com"&sort=lastupdated%20desc
```

[Terug naar index](#index)


## creationdate
```ts```

Datum waarop het item werd aangemaakt. Geldig voor: events, actors.

```
{BaseUrl}search?fq=creationdate:[2014-02-14T23:59:59.999Z TO *]&sort=creationdate desc&q=*:*&group=event
```

[Terug naar index](#index)


## datetype
```enum```

Een extra veld om eenvoudig te filteren op veelgebruikte tijd ranges, en als facetFilter. Volgende mogelijkheden bestaan: today, tomorrow, thisweekend, nextweekend, next7days, next14days, next30days, next3months, next6months, next12months, permanent. Geldig voor: events.

```
{BaseUrl}search?q=*.*&datetype=permanent
```

[Terug naar index](#index)


## detail_lang
```enum```

Taal waarin het object is beschreven. Opsomming van taalcodes. Geldig voor: events, actors.

```
{BaseUrl}search?q=detail_lang:en
```

[Terug naar index](#index)


## enddate
```ts```

Einddatum van het event. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=enddate:[NOW/DAY-1DAY TO NOW/DAY]&rows=1&group=true
```

[Terug naar index](#index)


## exact_category_id
```string```

(zie category_id) Gebruik dit veld indien je enkel resultaten wil krijgen van objecten waaraan deze categorie is toegekend en niet onderliggende catogrieën. Geldig voor: events, actors.

```
{BaseUrl}search?q=exact_category_id:2.2.4.0.0 OR exact_category_id:2.2.3.0.0
```

[Terug naar index](#index)


## exact_category_name
```string```

(zie category_id) Gebruik dit veld indien je enkel resultaten wil krijgen van objecten waaraan deze categorie is toegekend en niet onderliggende catogrieën. Geldig voor: events, actors.

```
{BaseUrl}search?q=exact_category_name:internationaal
```

[Terug naar index](#index)


## externalid
```string```

ID van het object in de brondatabank. Hoofdlettergevoelig.

```
{BaseUrl}search?q=externalid:*ccbrugge*&fq=type:event&group=true
```

[Terug naar index](#index)


## keywords
```string```

Tags gekoppeld aan het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=keywords:(Paspartoe AND UiTPAS)
```

[Terug naar index](#index)


## lastupdated
```ts```

Tijdstip waarop het item laatst aangepast werd. Geldig voor: events, actors.

```
{BaseUrl}search?q=*:*&rows=1&transform=list&sort=lastupdated%20desc
```

[Terug naar index](#index)


## lastupdatedby
```string```

User name van de auteur van de laatste aanpassing. Geldig voor: events, actors.

```
{BaseUrl}search?q=lastupdatedby:"luk.verhelst@gmail.com"&sort=lastupdated%20desc
```

[Terug naar index](#index)


## like_count
```int```

Aantal keren dat het item geliked werd. Geldig voor: events, actors.

```
{BaseUrl}search?q=*:*&fq=like_count:[10 TO *]
```

[Terug naar index](#index)


## location_category_facility_id
```string```

ID van de voorzieningen-categorie van de gekoppelde locatie.

```
{BaseUrl}search?q= location_category_facility_id:"3.15.0.0.0"
```

[Terug naar index](#index)


## location_category_facility_name
```string```

Naam van de voorzieningen-categorie van de gekoppelde locatie.

```
{BaseUrl}search?q=location_category_facility_name:"Audiogids"
```

[Terug naar index](#index)


## location_category_id
```string```

ID van de categorie van de gekoppelde locatie.

```
{BaseUrl}search?q=*.*&fq=location_category_id:6.2.0.0.0
```

[Terug naar index](#index)


## location_category_misc_id
```string```

ID van de 'misc'-categorie van de gekoppelde locatie.

```
{BaseUrl}search?q=location_category_misc_id:"5.1.0.0.0"
```

[Terug naar index](#index)


## location_category_misc_name
```string```

Naam van de 'misc'-categorie van de gekoppelde locatie.

```
{BaseUrl}search?q=location_category_misc_name:"Gesloten"
```

[Terug naar index](#index)


## location_category_name
```string```

Naam van de categorie van de gekoppelde locatie. Meertalig.

```
{BaseUrl}search?q=*.*&fq=location_category_name:regionaal
```

[Terug naar index](#index)


## location_cdbid
```string```

ID van de locatie waar het event plaatsvindt. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=location_cdbid:3abe7c37-4423-4235-b38d-4c7871218695
```

[Terug naar index](#index)


## location_contactinfo_city
```string```

Gemeente bij contactinformatie van de locatie.

```
{BaseUrl}search?q=organiser_contactinfo_city:"Gent"
```

[Terug naar index](#index)


## location_contactinfo_country
```enum```

Land bij contactinformatie van de locatie.

```
{BaseUrl}search?q=location_contactinfo_country:"BE"
```

[Terug naar index](#index)


## location_contactinfo_housenr
```string```

Huisnummer bij contactinformatie van de locatie.

```
{BaseUrl}search?q=location_contactinfo_housenr:34
```

[Terug naar index](#index)


## location_contactinfo_street
```string```

Straat bij contactinformatie van de locatie.

```
{BaseUrl}search?q=location_contactinfo_street:*eldstraat*
```

[Terug naar index](#index)


## location_contactinfo_zipcode
```string```

Postcode bij contactinformatie van de locatie.

```
{BaseUrl}search?q=location_contactinfo_zipcode:*9000*
```

[Terug naar index](#index)


## location_createdby
```string```

Maker van de locatie.

```
{BaseUrl}search/rest/search?q=*.*&fq=location_createdby:stien.pardon@kortenberg.be
```

[Terug naar index](#index)


## location_externalid
```string```

Externe id van de locatie. Geldig voor: events.

```
{BaseUrl}search?q=location_externalid:"CDB:acfa42ec-a333-4318-9abd-b4bbcd13de11"
```

[Terug naar index](#index)


## location_keywords
```string```

Tags gekoppeld aan de locatie.

```
{BaseUrl}search?q=*.*&fq=location_keywords:Paspartoe
```

[Terug naar index](#index)


## location_label
```string```

Naam van de locatie.

```
{BaseUrl}search?q=location_label:*Vooruit*
```

[Terug naar index](#index)


## location_mail
```string```

Mailadres van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_mail:*@telenet.be*
```

[Terug naar index](#index)


## location_owner
Eigenaar van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_owner:invoerders+algemeen
```

[Terug naar index](#index)


## location_phone
```string```

Telefoon van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_phone:*051*
```

[Terug naar index](#index)


## location_shortdescription
```string```

Omschrijving van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_shortdescription:*Ontmoetingscentrum*
```

[Terug naar index](#index)


## location_url
```string```

URL van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_url:*.be*
```

[Terug naar index](#index)


## longdescription
```string```

Uitgebreide omschrijving (> 400 karakters) over het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=longdescription:clown&group=event
```

[Terug naar index](#index)


## mail
```string```

Mailadres.

```
{BaseUrl}search?q=mail:*@telenet.be&group=event
```

[Terug naar index](#index)


## organiser_category_facility_id
```string```

ID van de voorzieningen-categorie van de gekoppelde organisator.

```
{BaseUrl}search?q= location_category_facility_id:"3.15.0.0.0"
```

[Terug naar index](#index)


## organiser_category_facility_name
```string```

Naam van de voorzieningen-categorie van de gekoppelde organisator.

```
{BaseUrl}search?q=organiser_category_facility_name:"Audiogids"
```

[Terug naar index](#index)


## organiser_category_id
```string```

ID van de categorie van de gekoppelde organisator.

```
{BaseUrl}search?q=*.*&fq=organiser_category_id:6.2.0.0.0
```

[Terug naar index](#index)


## organiser_category_misc_id
```string```

ID van de 'misc'-categorie van de gekoppelde organisator.

```
{BaseUrl}search?q=organiser_category_misc_id:"5.1.0.0.0"
```

[Terug naar index](#index)


## organiser_category_misc_name
```string```

Naam van de 'misc'-categorie van de gekoppelde organisator.

```
{BaseUrl}search?q=organiser_category_misc_name:"Gesloten"
```

[Terug naar index](#index)


## organiser_category_name
```string```

Naam van de categorie van de gekoppelde organisatie.

```
{BaseUrl}search?q=*.*&fq=organiser_category_name:regionaal
```

[Terug naar index](#index)


## organiser_cdbid
```string```

ID van de organisator die het event organiseert of de producent van de productie. Geldig voor: events.

```
{BaseUrl}search?q=organiser_cdbid:28808C2F-0DB2-D2CF-F508ECB994D2505F&group=true
```

[Terug naar index](#index)


## organiser_contactinfo_city
```string```

Gemeente van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_contactinfo_city:"Gent"
```

[Terug naar index](#index)


## organiser_contactinfo_country
```string```

Land bij contactinformatie van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_contactinfo_country:"BE"
```

[Terug naar index](#index)


## organiser_contactinfo_housenr
```string```

Huisnummer bij contactinformatie van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_contactinfo_housenr:"101"
```

[Terug naar index](#index)


## organiser_contactinfo_street
```string```

Straat bij contactinformatie van de organisator.

```
{BaseUrl}search?q=organiser_contactinfo_street:"Veldstraat"
```

[Terug naar index](#index)


## organiser_contactinfo_zipcode
```string```

Postcode bij contactinformatie van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_contactinfo_zipcode:"9000"
```

[Terug naar index](#index)


## organiser_keywords
```string```

Tags gekoppeld aan de organisator.

```
{BaseUrl}search?q=*.*&fq=organiser_keywords:Paspartoe
```

[Terug naar index](#index)


## organiser_label
```string```

Naam van de organisator die het event organiseert. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=organiser_label:roma
```

[Terug naar index](#index)


## organiser_language
```string```

Taal van de organisator.

```
{BaseUrl}search?q=*:*&fq=organiser_language:nl
```

[Terug naar index](#index)


## organiser_mail
```string```

Mailadres van de organisator.

```
{BaseUrl}search?q=organiser_mail:*@telenet.be*
```

[Terug naar index](#index)


## organiser_owner
Eigenaar van het organisator-item.

```
{BaseUrl}search?q=organiser_owner:invoerders+algemeen
```

[Terug naar index](#index)


## organiser_phone
```string```

Telefoon van de organisator.

```
{BaseUrl}search?q=organiser_phone:*051*
```

[Terug naar index](#index)


## organiser_shortdescription
```string```

Beschrijving van de organisator.

```
{BaseUrl}search?q=organiser_shortdescription:*Kortrijk*
```

[Terug naar index](#index)


## organiser_title
```string```

Naam van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_title:*cc*
```

[Terug naar index](#index)


## organiser_url
```string```

URL van de organisator.

```
{BaseUrl}search?q=organiser_url:*.be*
```

[Terug naar index](#index)


## owner
```string```

Eigenaar van het item.

```
{BaseUrl}search?q=owner:invoerders+algemeen
```

[Terug naar index](#index)


## pctcomplete
```int```

Volledigheid van het event (vb. met lange beschrijving, afbeelding, GIS coordinaten, ...). Geldig voor: events.

```
{BaseUrl}search?q=pctcomplete:100&group=true&fq=type:event
```

[Terug naar index](#index)


## performer_label
```string```

Naam van de uitvoerder.

```
{BaseUrl}search?q=performer_label:"*Janssens*"&group=event
```

[Terug naar index](#index)


## performer_role
```string```

Rol van de uitvoerder.

```
{BaseUrl}search?q=performer_role:*acteur*&group=event
```

[Terug naar index](#index)


## permanent
```boolean```

Een event object zonder start of einddatum (vb. speeltuin). Geldig voor: events.

```
{BaseUrl}search?q=*.*&fq=permanent:true
```

[Terug naar index](#index)


## phone
```string```

Telefoonnummer.

```
{BaseUrl}search?q=phone:*051*&group=event
```

[Terug naar index](#index)


## physical_gis
```string```

Geografische coordinaten van waar het event plaatsvindt, of waar de locatie zich bevindt. Geldig voor: events, actors.

```
{BaseUrl}search?q=*:*&pt=51.036906,3.720739&sfield=physical_gis&d=5&fq={!geofilt}&sort=geodist()+asc
```

[Terug naar index](#index)


## price
```decimal```

Basisprijs voor een event of productie. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=price:0
```

[Terug naar index](#index)


## pricedescription
```string```

Extra prijsinformatie - komt enkel voor indien ook price veld beschikbaar is. Geldig voor: events.

```
{BaseUrl}search?q=pricedescription:€10
```

[Terug naar index](#index)


## private
```boolean```

Items waarvoor private = true worden standaard uit de zoekresultaten gefilterd. Kanalen die private = true instellen kunnen deze items ook ontsluiten (vb. besloten aanbod). Geldig voor: events, actors.

```
{BaseUrl}search?q=*:*&fq=private:true OR private:false
```

[Terug naar index](#index)


## recommend_count
```int```

Aantal keren dat het item aangeraden werd.

```
{BaseUrl}search?q=*:*&fq=recommend_count:[10 TO *]
```

[Terug naar index](#index)


## shortdescription
```string```

Korte omschrijving (< 400 karakters) over het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=shortdescription:clown&group=event
```

[Terug naar index](#index)


## startdate
```ts```

Startdatum van het event. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=startdate:[NOW/DAY-1DAY TO NOW/DAY]&rows=1&group=true
```

[Terug naar index](#index)


## street
```string```

Straatnaam van de straat of plaats waar het event plaatsvindt, waar de organisatie zich bevindt.

```
{BaseUrl}search?q=street:Hoogstraat&group=event
```

[Terug naar index](#index)


## text
```String```

Concatenatie van verschillende velden: cdbid, title, shortdescription, longdescription, city, country, zipcode, street, category_id, category_name, organiser_cdbid, organiser_title, organiser_label, location_cdbid, location_title, location_label,keywords, performer_label.

```
{BaseUrl}search/rest/search?q=text:Paspartoe
```

[Terug naar index](#index)


## title
```string```

Titel van het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=title:bibliotheek&fq=type:actor
```

[Terug naar index](#index)


## title_sort
```string```

Wordt gebruikt om te sorteren op titel van het item.

```
werkt enkel in sort bv sort=title_sort%20asc
```

[Terug naar index](#index)


## type
```string```

Entiteit type(s) om te doorzoeken. Drie mogelijkheden: event, actor, production. Hoofdlettergevoelig.

```
{BaseUrl}search?fq=type:event OR type:production
```

[Terug naar index](#index)


## url
```string```

Website-adres.

```
{BaseUrl}search?q=url:*.be*&group=event
```

[Terug naar index](#index)


## validator
```string```

UiTdatabank gebruikersgroep die instaat voor inhoudelijke moderatie van het item. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=validator:"Kortemark Validatoren"&past=true&group=true
```

[Terug naar index](#index)


## wfstatus
```enum```

Workflow status van het item. Deze waarden zijn mogelijk: draft, readyforvalidation, approved, rejected, deleted.. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=validator:"Kortemark Validatoren" AND wfstatus:approved&past=true&group=true
```

[Terug naar index](#index)


## past
```enum```

Hiermee worden events getoond waarbij NU recenter is dan de info in de kalender. De default staat op false. Standaard worden evenementen uit het verleden uit de zoekresultaten gefilterd.

```
{BaseUrl}search?q=cdbid:{cdbid}&past=true&group=event
```

[Terug naar index](#index)


## unavailable
```enum```

Hiermee worden events getoond waarbij NU niet ligt tussen availableFrom en availableTo. De UiTdatabank zet per default de availableToop de laatste datum van de calendar info.

```
{BaseUrl}search?q=cdbid:{cdbid}&past=true&unavailable=true&group=event
```

[Terug naar index](#index)



## zipcode
```string```

Postcode van de gemeente waar het event plaatsvindt, waar de organisatie zich bevindt.

```
{BaseUrl}search?q=zipcode:[2520 TO 2530]&group=event
```

[Terug naar index](#index)
