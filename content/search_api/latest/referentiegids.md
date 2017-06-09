---
---

# Referentiegids

Een overzicht van alle geïndexeerde velden, gefilterd op relevantie, met voorbeelden.

<a id="index"></a>


**Basis**

* [agefrom](#agefrom)
* [calendarsummary](#calendarsummary)
* [category_id](#category_id)
* [category_name](#category_name)
* [city](#city)
* [country](#country)
* [datetype](#datetype)
* [detail_lang](#detail_lang)
* [enddate](#enddate)
* [keywords](#keywords)
* [longdescription](#longdescription)
* [mail](#mail)
* [permanent](#permanent)
* [phone](#phone)
* [physical_gis](#physical_gis)
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

* [category_actortype_id](#category_actortype_id)
* [category_actortype_name](#category_actortype_name)
* [category_eventtype_id](#category_eventtype_id)
* [category_eventtype_name](#category_eventtype_name)
* [category_facility_id](#category_facility_id)
* [category_facility_name](#category_facility_name)
* [category_misc_id](#category_misc_id)
* [category_misc_name](#category_misc_name)
* [category_municipal_id](#category_municipal_id)
* [category_municipal_name](#category_municipal_name)
* [category_publicscope_id](#category_publicscope_id)
* [category_publicscope_name](#category_publicscope_name)
* [category_targetaudience_id](#category_targetaudience_id)
* [category_targetaudience_name](#category_targetaudience_name)
* [category_theme_id](#category_theme_id)
* [category_theme_name](#category_theme_name)
* [exact_category_id](#exact_category_id)
* [exact_category_name](#exact_category_name)


**Contact**

* [contactinfo_city](#contactinfo_city)
* [contactinfo_country](#contactinfo_country)
* [contactinfo_housenr](#contactinfo_housenr)
* [contactinfo_physical_gis](#contactinfo_physical_gis)
* [contactinfo_street](#contactinfo_street)
* [contactinfo_zipcode](#contactinfo_zipcode)


**Location**

* [location_category_facility_id](#location_category_facility_id)
* [location_category_facility_name](#location_category_facility_name)
* [location_category_id](#location_category_id)
* [location_category_misc_id](#location_category_misc_id)
* [location_category_misc_name](#location_category_misc_name)
* [location_category_name](#location_category_name)
* [location_cdbid](#location_cdbid)
* [location_contactinfo_city](#location_contactinfo_city)
* [location_contactinfo_country](#location_contactinfo_country)
* [location_contactinfo_housenr](#location_contactinfo_housenr)
* [location_contactinfo_street](#location_contactinfo_street)
* [location_contactinfo_zipcode](#location_contactinfo_zipcode)
* [location_createdby](#location_createdby)
* [location_externalid](#location_externalid)
* [location_keywords](#location_keywords)
* [location_label](#location_label)
* [location_mail](#location_mail)
* [location_owner](#location_owner)
* [location_phone](#location_phone)
* [location_shortdescription](#location_shortdescription)
* [location_url](#location_url)


**Organiser**

* [organiser_category_facility_id](#organiser_category_facility_id)
* [organiser_category_facility_name](#organiser_category_facility_name)
* [organiser_category_id](#organiser_category_id)
* [organiser_category_misc_id](#organiser_category_misc_id)
* [organiser_category_misc_name](#organiser_category_misc_name)
* [organiser_category_name](#organiser_category_name)
* [organiser_cdbid](#organiser_cdbid)
* [organiser_contactinfo_city](#organiser_contactinfo_city)
* [organiser_contactinfo_country](#organiser_contactinfo_country)
* [organiser_contactinfo_housenr](#organiser_contactinfo_housenr)
* [organiser_contactinfo_street](#organiser_contactinfo_street)
* [organiser_contactinfo_zipcode](#organiser_contactinfo_zipcode)
* [organiser_keywords](#organiser_keywords)
* [organiser_label](#organiser_label)
* [organiser_language](#organiser_language)
* [organiser_mail](#organiser_mail)
* [organiser_owner](#organiser_owner)
* [organiser_phone](#organiser_phone)
* [organiser_shortdescription](#organiser_shortdescription)
* [organiser_title](#organiser_title)
* [organiser_url](#organiser_url)


**Performer**

* [performer_label](#performer_label)
* [performer_role](#performer_role)


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
* [title_sort](#title_sort)
* [validator](#validator)
* [wfstatus](#wfstatus)
* [past](#past)
* [unavailable](#unavailable)


**Sociaal**

* [attend_count](#attend_count)
* [comment_count](#comment_count)
* [like_count](#like_count)
* [recommend_count](#recommend_count)




<a id="agefrom"><h2>agefrom</h2></a>
```int```

Startleeftijd vanaf wanneer een aanbod geschikt is. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=agefrom:[6 TO 12]
```

[Terug naar index](#index)


<a id="attend_count"><h2>attend_count</h2></a>
```int```

Aantal keren geklikt op "Ik ga".

```
{BaseUrl}search?q=*:*&fq=attend_count:[10 TO *]
```

[Terug naar index](#index)


<a id="availablefrom"><h2>availablefrom</h2></a>
```ts```

Datum vanaf wanneer dit item mag verschijnen. Standaard is de filter [NOW TO *] ingesteld..

```
{BaseUrl}search?q=availableto:[NOW TO *] AND availablefrom:[* TO NOW]&fq=type:event&group=true
```

[Terug naar index](#index)


<a id="availableto"><h2>availableto</h2></a>
```ts```

Datum tot wanneer het item mag verschijnen. (filter * TO NOW standaard ingesteld in service consumer abonnement).

```
{BaseUrl}search?q=availableto:[NOW TO *] AND availablefrom:[* TO NOW]&fq=type:event&group=true
```

[Terug naar index](#index)


<a id="calendarsummary"><h2>calendarsummary</h2></a>
```string```

Leesbare samenvatting van de gestructureerde tijdsinformatie. Geldig voor: events, actors.

```
{BaseUrl}search?q=calendarsummary:"02/07/14"
```

[Terug naar index](#index)


<a id="category_actortype_id"><h2>category_actortype_id</h2></a>
```string```

ID van de locatie-categorie.

```
{BaseUrl}search?q=category_actortype_id:"8.50.0.0.0"
```

[Terug naar index](#index)


<a id="category_actortype_name"><h2>category_actortype_name</h2></a>
```string```

Naam van de locatie-categorie.

```
{BaseUrl}search?q=category_actortype_name:"Sportcentrum"
```

[Terug naar index](#index)


<a id="category_eventtype_id"><h2>category_eventtype_id</h2></a>
```string```

ID van de aanbod-categorie.

```
{BaseUrl}search?q=category_eventtype_id:"0.50.6.0.0"
```

[Terug naar index](#index)


<a id="category_eventtype_name"><h2>category_eventtype_name</h2></a>
```string```

Naam van de aanbod-categorie.

```
{BaseUrl}search?q=category_eventtype_name:"Film"
```

[Terug naar index](#index)


<a id="category_facility_id"><h2>category_facility_id</h2></a>
```string```

ID van de voorzieningen-categorie.

```
{BaseUrl}search?q=category_facility_id:"3.15.0.0.0"
```

[Terug naar index](#index)


<a id="category_facility_name"><h2>category_facility_name</h2></a>
```string```

Naam van de voorzieningen-categorie.

```
{BaseUrl}search?q=category_facility_name:"Audiogids"
```

[Terug naar index](#index)


<a id="category_id"><h2>category_id</h2></a>
```string```

ID van de event-categorie. Geldig voor: events, actors.

```
{BaseUrl}search?q=category_id:2.2.4.0.0 OR category_id:2.2.3.0.0
```

[Terug naar index](#index)


<a id="category_misc_id"><h2>category_misc_id</h2></a>
```string```

ID van de 'misc'-categorie .

```
{BaseUrl}search?q=category_misc_id:"5.1.0.0.0"
```

[Terug naar index](#index)


<a id="category_misc_name"><h2>category_misc_name</h2></a>
```string```

Naam van de 'misc'-categorie.

```
{BaseUrl}search?q=category_misc_name:"Gesloten"
```

[Terug naar index](#index)


<a id="category_municipal_id"><h2>category_municipal_id</h2></a>
```string```

ID van de regio-categorie.

```
{BaseUrl}search?q=category_municipal_id:"reg.1195"
```

[Terug naar index](#index)


<a id="category_municipal_name"><h2>category_municipal_name</h2></a>
```string```

Naam van de regio-categorie.

```
{BaseUrl}search?q=category_municipal_name:"Roeselare"
```

[Terug naar index](#index)


<a id="category_name"><h2>category_name</h2></a>
```string```

Naam van de categorie waar het event toe behoort. Meertalig. Geldig voor: events, actors.

```
{BaseUrl}search?q=category_name:Art%20de%20marionnettes
```

[Terug naar index](#index)


<a id="category_publicscope_id"><h2>category_publicscope_id</h2></a>
```string```

ID van de publieksbereik-categorie.

```
{BaseUrl}search?q=category_publicscope_id:"6.1.0.0.0"
```

[Terug naar index](#index)


<a id="category_publicscope_name"><h2>category_publicscope_name</h2></a>
```string```

Naam van de publieksbereik-categorie.

```
{BaseUrl}search?q=category_publicscope_name:"Lokaal"
```

[Terug naar index](#index)


<a id="category_targetaudience_id"><h2>category_targetaudience_id</h2></a>
```string```

ID van de doelgroepen-categorie.

```
{BaseUrl}search?q=category_targetaudience_id:"2.2.2.0.0"
```

[Terug naar index](#index)


<a id="category_targetaudience_name"><h2>category_targetaudience_name</h2></a>
```string```

Naam van de doelgroepen-categorie.

```
{BaseUrl}search?q=category_targetaudience_name:"Senioren"
```

[Terug naar index](#index)


<a id="category_theme_id"><h2>category_theme_id</h2></a>
```string```

ID van het thema.

```
{BaseUrl}search?q=category_theme_id:"1.43.0.0.0"
```

[Terug naar index](#index)


<a id="category_theme_name"><h2>category_theme_name</h2></a>
```string```

Naam van het thema.

```
{BaseUrl}search?q=category_theme_name:"Interculturele vorming"
```

[Terug naar index](#index)


<a id="cdbid"><h2>cdbid</h2></a>
```string```

ID van het item (guid). Geldig voor: events, actors.

```
{BaseUrl}search?q=cdbid:844d5927-3579-460f-aa77-f20c9db2f077&group=true
```

[Terug naar index](#index)


<a id="city"><h2>city</h2></a>
```string```

(Deel)gemeentenaam van de gemeente waar het event plaatsvindt, waar de organisatie zich bevindt. Geldig voor: events, actors.

```
{BaseUrl}search?q=city:[Aalter TO Antwerpen]&fq=type:event
```

[Terug naar index](#index)


<a id="comment_count"><h2>comment_count</h2></a>
```int```

Aantal keren dat een commentaar op het item werd geplaatst.

```
{BaseUrl}search?q=*:*&fq=comment_count:[10 TO *]
```

[Terug naar index](#index)


<a id="contactinfo_city"><h2>contactinfo_city</h2></a>
```string```

Gemeente bij de contactinformatie.

```
{BaseUrl}search?q=contactinfo_city:"Gent"
```

[Terug naar index](#index)


<a id="contactinfo_country"><h2>contactinfo_country</h2></a>
```string```

Land bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_country:"BE"
```

[Terug naar index](#index)


<a id="contactinfo_housenr"><h2>contactinfo_housenr</h2></a>
Huisnummer bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_housenr:"101"
```

[Terug naar index](#index)


<a id="contactinfo_physical_gis"><h2>contactinfo_physical_gis</h2></a>
```string```

GIS-code bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_physical_gis:"50.818342,3.187166"
```

[Terug naar index](#index)


<a id="contactinfo_street"><h2>contactinfo_street</h2></a>
```string```

Straat bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_street:"Veldstraat"
```

[Terug naar index](#index)


<a id="contactinfo_zipcode"><h2>contactinfo_zipcode</h2></a>
```string```

Postcode bij contactinformatie.

```
{BaseUrl}search?q=contactinfo_zipcode:"9000"
```

[Terug naar index](#index)


<a id="country"><h2>country</h2></a>
```enum```

ISO landcodes; land waar het event plaatsvindt, land waar de organisatie zich bevindt. Geldig voor: events, actors.

```
{BaseUrl}search?q=country:FR&group=event
```

[Terug naar index](#index)


<a id="createdby"><h2>createdby</h2></a>
```string```

Auteur van het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=createdby:"luk.verhelst@gmail.com"&sort=lastupdated%20desc
```

[Terug naar index](#index)


<a id="creationdate"><h2>creationdate</h2></a>
```ts```

Datum waarop het item werd aangemaakt. Geldig voor: events, actors.

```
{BaseUrl}search?fq=creationdate:[2014-02-14T23:59:59.999Z TO *]&sort=creationdate desc&q=*:*&group=event
```

[Terug naar index](#index)


<a id="datetype"><h2>datetype</h2></a>
```enum```

Een extra veld om eenvoudig te filteren op veelgebruikte tijd ranges, en als facetFilter. Volgende mogelijkheden bestaan: today, tomorrow, thisweekend, nextweekend, next7days, next14days, next30days, next3months, next6months, next12months, permanent. Geldig voor: events.

```
{BaseUrl}search?q=*.*&datetype=permanent
```

[Terug naar index](#index)


<a id="detail_lang"><h2>detail_lang</h2></a>
```enum```

Taal waarin het object is beschreven. Opsomming van taalcodes. Geldig voor: events, actors.

```
{BaseUrl}search?q=detail_lang:en
```

[Terug naar index](#index)


<a id="enddate"><h2>enddate</h2></a>
```ts```

Einddatum van het event. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=enddate:[NOW/DAY-1DAY TO NOW/DAY]&rows=1&group=true
```

[Terug naar index](#index)


<a id="exact_category_id"><h2>exact_category_id</h2></a>
```string```

(zie category_id) Gebruik dit veld indien je enkel resultaten wil krijgen van objecten waaraan deze categorie is toegekend en niet onderliggende catogrieën. Geldig voor: events, actors.

```
{BaseUrl}search?q=exact_category_id:2.2.4.0.0 OR exact_category_id:2.2.3.0.0
```

[Terug naar index](#index)


<a id="exact_category_name"><h2>exact_category_name</h2></a>
```string```

(zie category_id) Gebruik dit veld indien je enkel resultaten wil krijgen van objecten waaraan deze categorie is toegekend en niet onderliggende catogrieën. Geldig voor: events, actors.

```
{BaseUrl}search?q=exact_category_name:internationaal
```

[Terug naar index](#index)


<a id="externalid"><h2>externalid</h2></a>
```string```

ID van het object in de brondatabank. Hoofdlettergevoelig.

```
{BaseUrl}search?q=externalid:*ccbrugge*&fq=type:event&group=true
```

[Terug naar index](#index)


<a id="keywords"><h2>keywords</h2></a>
```string```

Tags gekoppeld aan het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=keywords:(Paspartoe AND UiTPAS)
```

[Terug naar index](#index)


<a id="lastupdated"><h2>lastupdated</h2></a>
```ts```

Tijdstip waarop het item laatst aangepast werd. Geldig voor: events, actors.

```
{BaseUrl}search?q=*:*&rows=1&transform=list&sort=lastupdated%20desc
```

[Terug naar index](#index)


<a id="lastupdatedby"><h2>lastupdatedby</h2></a>
```string```

User name van de auteur van de laatste aanpassing. Geldig voor: events, actors.

```
{BaseUrl}search?q=lastupdatedby:"luk.verhelst@gmail.com"&sort=lastupdated%20desc
```

[Terug naar index](#index)


<a id="like_count"><h2>like_count</h2></a>
```int```

Aantal keren dat het item geliked werd. Geldig voor: events, actors.

```
{BaseUrl}search?q=*:*&fq=like_count:[10 TO *]
```

[Terug naar index](#index)


<a id="location_category_facility_id"><h2>location_category_facility_id</h2></a>
```string```

ID van de voorzieningen-categorie van de gekoppelde locatie.

```
{BaseUrl}search?q= location_category_facility_id:"3.15.0.0.0"
```

[Terug naar index](#index)


<a id="location_category_facility_name"><h2>location_category_facility_name</h2></a>
```string```

Naam van de voorzieningen-categorie van de gekoppelde locatie.

```
{BaseUrl}search?q=location_category_facility_name:"Audiogids"
```

[Terug naar index](#index)


<a id="location_category_id"><h2>location_category_id</h2></a>
```string```

ID van de categorie van de gekoppelde locatie.

```
{BaseUrl}search?q=*.*&fq=location_category_id:6.2.0.0.0
```

[Terug naar index](#index)


<a id="location_category_misc_id"><h2>location_category_misc_id</h2></a>
```string```

ID van de 'misc'-categorie van de gekoppelde locatie.

```
{BaseUrl}search?q=location_category_misc_id:"5.1.0.0.0"
```

[Terug naar index](#index)


<a id="location_category_misc_name"><h2>location_category_misc_name</h2></a>
```string```

Naam van de 'misc'-categorie van de gekoppelde locatie.

```
{BaseUrl}search?q=location_category_misc_name:"Gesloten"
```

[Terug naar index](#index)


<a id="location_category_name"><h2>location_category_name</h2></a>
```string```

Naam van de categorie van de gekoppelde locatie. Meertalig.

```
{BaseUrl}search?q=*.*&fq=location_category_name:regionaal
```

[Terug naar index](#index)


<a id="location_cdbid"><h2>location_cdbid</h2></a>
```string```

ID van de locatie waar het event plaatsvindt. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=location_cdbid:3abe7c37-4423-4235-b38d-4c7871218695
```

[Terug naar index](#index)


<a id="location_contactinfo_city"><h2>location_contactinfo_city</h2></a>
```string```

Gemeente bij contactinformatie van de locatie.

```
{BaseUrl}search?q=organiser_contactinfo_city:"Gent"
```

[Terug naar index](#index)


<a id="location_contactinfo_country"><h2>location_contactinfo_country</h2></a>
```enum```

Land bij contactinformatie van de locatie.

```
{BaseUrl}search?q=location_contactinfo_country:"BE"
```

[Terug naar index](#index)


<a id="location_contactinfo_housenr"><h2>location_contactinfo_housenr</h2></a>
```string```

Huisnummer bij contactinformatie van de locatie.

```
{BaseUrl}search?q=location_contactinfo_housenr:34
```

[Terug naar index](#index)


<a id="location_contactinfo_street"><h2>location_contactinfo_street</h2></a>
```string```

Straat bij contactinformatie van de locatie.

```
{BaseUrl}search?q=location_contactinfo_street:*eldstraat*
```

[Terug naar index](#index)


<a id="location_contactinfo_zipcode"><h2>location_contactinfo_zipcode</h2></a>
```string```

Postcode bij contactinformatie van de locatie.

```
{BaseUrl}search?q=location_contactinfo_zipcode:*9000*
```

[Terug naar index](#index)


<a id="location_createdby"><h2>location_createdby</h2></a>
```string```

Maker van de locatie.

```
{BaseUrl}search/rest/search?q=*.*&fq=location_createdby:stien.pardon@kortenberg.be
```

[Terug naar index](#index)


<a id="location_externalid"><h2>location_externalid</h2></a>
```string```

Externe id van de locatie. Geldig voor: events.

```
{BaseUrl}search?q=location_externalid:"CDB:acfa42ec-a333-4318-9abd-b4bbcd13de11"
```

[Terug naar index](#index)


<a id="location_keywords"><h2>location_keywords</h2></a>
```string```

Tags gekoppeld aan de locatie.

```
{BaseUrl}search?q=*.*&fq=location_keywords:Paspartoe
```

[Terug naar index](#index)


<a id="location_label"><h2>location_label</h2></a>
```string```

Naam van de locatie.

```
{BaseUrl}search?q=location_label:*Vooruit*
```

[Terug naar index](#index)


<a id="location_mail"><h2>location_mail</h2></a>
```string```

Mailadres van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_mail:*@telenet.be*
```

[Terug naar index](#index)


<a id="location_owner"><h2>location_owner</h2></a>
Eigenaar van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_owner:invoerders+algemeen
```

[Terug naar index](#index)


<a id="location_phone"><h2>location_phone</h2></a>
```string```

Telefoon van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_phone:*051*
```

[Terug naar index](#index)


<a id="location_shortdescription"><h2>location_shortdescription</h2></a>
```string```

Omschrijving van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_shortdescription:*Ontmoetingscentrum*
```

[Terug naar index](#index)


<a id="location_url"><h2>location_url</h2></a>
```string```

URL van de locatie waar het event plaatsvindt.

```
{BaseUrl}search?q=location_url:*.be*
```

[Terug naar index](#index)


<a id="longdescription"><h2>longdescription</h2></a>
```string```

Uitgebreide omschrijving (> 400 karakters) over het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=longdescription:clown&group=event
```

[Terug naar index](#index)


<a id="mail"><h2>mail</h2></a>
```string```

Mailadres.

```
{BaseUrl}search?q=mail:*@telenet.be&group=event
```

[Terug naar index](#index)


<a id="organiser_category_facility_id"><h2>organiser_category_facility_id</h2></a>
```string```

ID van de voorzieningen-categorie van de gekoppelde organisator.

```
{BaseUrl}search?q= location_category_facility_id:"3.15.0.0.0"
```

[Terug naar index](#index)


<a id="organiser_category_facility_name"><h2>organiser_category_facility_name</h2></a>
```string```

Naam van de voorzieningen-categorie van de gekoppelde organisator.

```
{BaseUrl}search?q=organiser_category_facility_name:"Audiogids"
```

[Terug naar index](#index)


<a id="organiser_category_id"><h2>organiser_category_id</h2></a>
```string```

ID van de categorie van de gekoppelde organisator.

```
{BaseUrl}search?q=*.*&fq=organiser_category_id:6.2.0.0.0
```

[Terug naar index](#index)


<a id="organiser_category_misc_id"><h2>organiser_category_misc_id</h2></a>
```string```

ID van de 'misc'-categorie van de gekoppelde organisator.

```
{BaseUrl}search?q=organiser_category_misc_id:"5.1.0.0.0"
```

[Terug naar index](#index)


<a id="organiser_category_misc_name"><h2>organiser_category_misc_name</h2></a>
```string```

Naam van de 'misc'-categorie van de gekoppelde organisator.

```
{BaseUrl}search?q=organiser_category_misc_name:"Gesloten"
```

[Terug naar index](#index)


<a id="organiser_category_name"><h2>organiser_category_name</h2></a>
```string```

Naam van de categorie van de gekoppelde organisatie.

```
{BaseUrl}search?q=*.*&fq=organiser_category_name:regionaal
```

[Terug naar index](#index)


<a id="organiser_cdbid"><h2>organiser_cdbid</h2></a>
```string```

ID van de organisator die het event organiseert of de producent van de productie. Geldig voor: events.

```
{BaseUrl}search?q=organiser_cdbid:28808C2F-0DB2-D2CF-F508ECB994D2505F&group=true
```

[Terug naar index](#index)


<a id="organiser_contactinfo_city"><h2>organiser_contactinfo_city</h2></a>
```string```

Gemeente van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_contactinfo_city:"Gent"
```

[Terug naar index](#index)


<a id="organiser_contactinfo_country"><h2>organiser_contactinfo_country</h2></a>
```string```

Land bij contactinformatie van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_contactinfo_country:"BE"
```

[Terug naar index](#index)


<a id="organiser_contactinfo_housenr"><h2>organiser_contactinfo_housenr</h2></a>
```string```

Huisnummer bij contactinformatie van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_contactinfo_housenr:"101"
```

[Terug naar index](#index)


<a id="organiser_contactinfo_street"><h2>organiser_contactinfo_street</h2></a>
```string```

Straat bij contactinformatie van de organisator.

```
{BaseUrl}search?q=organiser_contactinfo_street:"Veldstraat"
```

[Terug naar index](#index)


<a id="organiser_contactinfo_zipcode"><h2>organiser_contactinfo_zipcode</h2></a>
```string```

Postcode bij contactinformatie van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_contactinfo_zipcode:"9000"
```

[Terug naar index](#index)


<a id="organiser_keywords"><h2>organiser_keywords</h2></a>
```string```

Tags gekoppeld aan de organisator.

```
{BaseUrl}search?q=*.*&fq=organiser_keywords:Paspartoe
```

[Terug naar index](#index)


<a id="organiser_label"><h2>organiser_label</h2></a>
```string```

Naam van de organisator die het event organiseert. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=organiser_label:roma
```

[Terug naar index](#index)


<a id="organiser_language"><h2>organiser_language</h2></a>
```string```

Taal van de organisator.

```
{BaseUrl}search?q=*:*&fq=organiser_language:nl
```

[Terug naar index](#index)


<a id="organiser_mail"><h2>organiser_mail</h2></a>
```string```

Mailadres van de organisator.

```
{BaseUrl}search?q=organiser_mail:*@telenet.be*
```

[Terug naar index](#index)


<a id="organiser_owner"><h2>organiser_owner</h2></a>
Eigenaar van het organisator-item.

```
{BaseUrl}search?q=organiser_owner:invoerders+algemeen
```

[Terug naar index](#index)


<a id="organiser_phone"><h2>organiser_phone</h2></a>
```string```

Telefoon van de organisator.

```
{BaseUrl}search?q=organiser_phone:*051*
```

[Terug naar index](#index)


<a id="organiser_shortdescription"><h2>organiser_shortdescription</h2></a>
```string```

Beschrijving van de organisator.

```
{BaseUrl}search?q=organiser_shortdescription:*Kortrijk*
```

[Terug naar index](#index)


<a id="organiser_title"><h2>organiser_title</h2></a>
```string```

Naam van de organisator. Geldig voor: events.

```
{BaseUrl}search?q=organiser_title:*cc*
```

[Terug naar index](#index)


<a id="organiser_url"><h2>organiser_url</h2></a>
```string```

URL van de organisator.

```
{BaseUrl}search?q=organiser_url:*.be*
```

[Terug naar index](#index)


<a id="owner"><h2>owner</h2></a>
```string```

Eigenaar van het item.

```
{BaseUrl}search?q=owner:invoerders+algemeen
```

[Terug naar index](#index)


<a id="pctcomplete"><h2>pctcomplete</h2></a>
```int```

Volledigheid van het event (vb. met lange beschrijving, afbeelding, GIS coordinaten, ...). Geldig voor: events.

```
{BaseUrl}search?q=pctcomplete:100&group=true&fq=type:event
```

[Terug naar index](#index)


<a id="performer_label"><h2>performer_label</h2></a>
```string```

Naam van de uitvoerder.

```
{BaseUrl}search?q=performer_label:"*Janssens*"&group=event
```

[Terug naar index](#index)


<a id="performer_role"><h2>performer_role</h2></a>
```string```

Rol van de uitvoerder.

```
{BaseUrl}search?q=performer_role:*acteur*&group=event
```

[Terug naar index](#index)


<a id="permanent"><h2>permanent</h2></a>
```boolean```

Een event object zonder start of einddatum (vb. speeltuin). Geldig voor: events.

```
{BaseUrl}search?q=*.*&fq=permanent:true
```

[Terug naar index](#index)


<a id="phone"><h2>phone</h2></a>
```string```

Telefoonnummer.

```
{BaseUrl}search?q=phone:*051*&group=event
```

[Terug naar index](#index)


<a id="physical_gis"><h2>physical_gis</h2></a>
```string```

Geografische coordinaten van waar het event plaatsvindt, of waar de locatie zich bevindt. Geldig voor: events, actors.

```
{BaseUrl}search?q=*:*&pt=51.036906,3.720739&sfield=physical_gis&d=5&fq={!geofilt}&sort=geodist()+asc
```

[Terug naar index](#index)


<a id="price"><h2>price</h2></a>
```decimal```

Basisprijs voor een event of productie. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=price:0
```

[Terug naar index](#index)


<a id="pricedescription"><h2>pricedescription</h2></a>
```string```

Extra prijsinformatie - komt enkel voor indien ook price veld beschikbaar is. Geldig voor: events.

```
{BaseUrl}search?q=pricedescription:€10
```

[Terug naar index](#index)


<a id="private"><h2>private</h2></a>
```boolean```

Items waarvoor private = true worden standaard uit de zoekresultaten gefilterd. Kanalen die private = true instellen kunnen deze items ook ontsluiten (vb. besloten aanbod). Geldig voor: events, actors.

```
{BaseUrl}search?q=*:*&fq=private:true OR private:false
```

[Terug naar index](#index)


<a id="recommend_count"><h2>recommend_count</h2></a>
```int```

Aantal keren dat het item aangeraden werd.

```
{BaseUrl}search?q=*:*&fq=recommend_count:[10 TO *]
```

[Terug naar index](#index)


<a id="shortdescription"><h2>shortdescription</h2></a>
```string```

Korte omschrijving (< 400 karakters) over het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=shortdescription:clown&group=event
```

[Terug naar index](#index)


<a id="startdate"><h2>startdate</h2></a>
```ts```

Startdatum van het event. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=startdate:[NOW/DAY-1DAY TO NOW/DAY]&rows=1&group=true
```

[Terug naar index](#index)


<a id="street"><h2>street</h2></a>
```string```

Straatnaam van de straat of plaats waar het event plaatsvindt, waar de organisatie zich bevindt.

```
{BaseUrl}search?q=street:Hoogstraat&group=event
```

[Terug naar index](#index)


<a id="text"><h2>text</h2></a>
```String```

Concatenatie van verschillende velden: cdbid, title, shortdescription, longdescription, city, country, zipcode, street, category_id, category_name, organiser_cdbid, organiser_title, organiser_label, location_cdbid, location_title, location_label,keywords, performer_label.

```
{BaseUrl}search/rest/search?q=text:Paspartoe
```

[Terug naar index](#index)


<a id="title"><h2>title</h2></a>
```string```

Titel van het item. Geldig voor: events, actors.

```
{BaseUrl}search?q=title:bibliotheek&fq=type:actor
```

[Terug naar index](#index)


<a id="title_sort"><h2>title_sort</h2></a>
```string```

Wordt gebruikt om te sorteren op titel van het item.

```
werkt enkel in sort bv sort=title_sort%20asc
```

[Terug naar index](#index)


<a id="type"><h2>type</h2></a>
```string```

Entiteit type(s) om te doorzoeken. Drie mogelijkheden: event, actor, production. Hoofdlettergevoelig.

```
{BaseUrl}search?fq=type:event OR type:production
```

[Terug naar index](#index)


<a id="url"><h2>url</h2></a>
```string```

Website-adres.

```
{BaseUrl}search?q=url:*.be*&group=event
```

[Terug naar index](#index)


<a id="validator"><h2>validator</h2></a>
```string```

UiTdatabank gebruikersgroep die instaat voor inhoudelijke moderatie van het item. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=validator:"Kortemark Validatoren"&past=true&group=true
```

[Terug naar index](#index)


<a id="wfstatus"><h2>wfstatus</h2></a>
```enum```

Workflow status van het item. Deze waarden zijn mogelijk: draft, readyforvalidation, approved, rejected, deleted.. Geldig voor: events.

```
{BaseUrl}search?q=*:*&fq=validator:"Kortemark Validatoren" AND wfstatus:approved&past=true&group=true
```

[Terug naar index](#index)


<a id="past"><h2>past</h2></a>
```enum```

Hiermee worden events getoond waarbij NU recenter is dan de info in de kalender. De default staat op false. Standaard worden evenementen uit het verleden uit de zoekresultaten gefilterd.

```
{BaseUrl}search?q=cdbid:{cdbid}&past=true&group=event
```

[Terug naar index](#index)


<a id="unavailable"><h2>unavailable</h2></a>
```enum```

Hiermee worden events getoond waarbij NU niet ligt tussen availableFrom en availableTo. De UiTdatabank zet per default de availableToop de laatste datum van de calendar info.

```
{BaseUrl}search?q=cdbid:{cdbid}&past=true&unavailable=true&group=event
```

[Terug naar index](#index)



<a id="zipcode"><h2>zipcode</h2></a>
```string```

Postcode van de gemeente waar het event plaatsvindt, waar de organisatie zich bevindt.

```
{BaseUrl}search?q=zipcode:[2520 TO 2530]&group=event
```

[Terug naar index](#index)
