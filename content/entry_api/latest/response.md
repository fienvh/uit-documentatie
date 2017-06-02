---
---

Een POST, PUT, DELETE of GET kan ofwel succesvol ofwel foutief zijn. Na elke actie krijg je via een response hiervan een bericht. Op deze pagina vind je een overzicht van alle beschikbare response codes.

# Succesvol

## Item aangemaakt

```
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
  <code>ItemCreated</code>
  <link>http://www.uitdatabank.be/api/v2/event/{id}</link>
</rsp>
```

## Item aangepast

```
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
  <code>ItemModified</code>
  <link>http://www.uitdatabank.be/api/v2/event/{id}</link>
</rsp>
```

## Item verwijderd

```
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
  <code>ItemWithdrawn</code>
</rsp>
```

## Vertaling toegevoegd

```
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
  <code>TranslationCreated</code>
  <link>http://www.uitdatabank.be/api/v2/event/{id}</link>
</rsp>
```

## Vertaling verwijderd

```
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
  <code>TranslationWithdrawn</code>
  <link>http://www.uitdatabank.be/api/v2/event/{id}</link>
</rsp>
```

## Tag toegevoegd

```
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
  <code>KeywordsCreated</code>
  <link>http://www.uitdatabank.be/api/v2/event/{id}</link>
</rsp>
```

## Tag verwijderd

```
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
  <code>KeywordWithdrawn</code>
  <link>http://www.uitdatabank.be/api/v2/event/{id}</link>
</rsp>
```

# Foutmelding

## Meer dan één item in de reqeust

```
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”ERROR” version=”0.1”>
  <code>TooManyItems</code>
  <link>http://www.uitdatabank.be/api/v2/event/123123123</link>
  <message>Too many items in your messages.</message>
</rsp>
```

## Actor verwijderen waaraan events gekoppeld zijn

``` 
ERROR 409 CONFLICT
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”ERROR” version=”0.1”>
  <code>ObjectReferenceFound</code>
  <message>Object reference found. Withdraw failed.</message>
</rsp>
```

## Marker toegevoegd zonder de juiste rechten

```
ERROR 401 Unauthorized
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”ERROR” version=”0.1”>
  <code>PrivateKeyword</code>
  <message>Correct authorization required for use of keyword.</message>
</rsp>
```

## SQL statements of Javascript-fragmenten gevonden in de request

```
ERROR 400 Bad Request
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”ERROR” version=”0.1”>
  <code>SuspectedContent</code>
  <message>Suspected content found. Account deactivated.</message>
</rsp>
```

## Duplicaat gevonden

```
<rsp level=”ERROR” version=”0.1”>
  <code>DuplicateContent</code>
  <link>http://www.uitdatabank.be/api/v2/event/123123123</link>
  <message>Item already exists.</message>
</rsp>
```

## Het document is te groot (max. 100K)

```
	<rsp level=”ERROR” version=”0.1”>

	  <code>FilesizeTooLarge</code>

	  <message>Maximum document size 100K. Account deactivated.</message>

	</rsp>

```

## Maximum aantal requests overschreden

```
<rsp level=”ERROR” version=”0.1”>
  <code>TooManyRequests</code>
  <message>Maximum number of requests exceeded. Account deactivated.</message>
</rsp>
```

## Ander karakter dan UTF-8 encodering gevonden

```
	<rsp level=”ERROR” version=”0.1”>

	  <code>UnknownCharacter</code>

	  <message>Unknown character found. Use UTF-8.</message>

	</rsp>

```

## CdbXML is niet well-formed of valid

```
<rsp level=”ERROR” version=”0.1”>
  <code>XmlSyntaxError</code>
  <message>XML is not well-formed.</message>
</rsp>
```

## Authenticatie niet geslaagd

```
ERROR 430 Authentication Failed
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”INFO” version=”0.1”>
  <code>AuthenticationFailed</code>
  <message>
    Authentication failed. Use /login to generate a new user key.
  </message>
</rsp>
```

## Username en paswoord niet secure verstuurd

```
ERROR 400 Bad Request
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”ERROR” version=”0.1”>
  <code>HttpsRequired</code>
  <message>Use of Https required. Your account has been deactived.</message>
</rsp>
```

## Eén of meer verplichte velden niet voorzien

```
ERROR 423 Validation Error
<?xml version="1.0" encoding="UTF-8"?>
<rsp level=”ERROR” version=”0.1”>
  <code>ValidationError</code>
  <message><requiredfieldsnotfound>...</requiredfieldsnotfound></message>
</rsp>
```

## Formattering niet correct

```

```

## Gerefereerd item niet gevonden

```

```

## Niet bestaande resource bevraagd

```

```

## Verplichte parameter ontbreekt

```

```

## Eenzelfde parameter wordt meermaals voorzien

```

```










