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

## Actor verwijderen waaraan events gekoppeld zijn

## Marker toegevoegd zonder de juiste rechten

## SQL statements of Javascript-fragmenten gevonden in de request

## Duplicaat gevonden

## Het document is te groot (max. 100K)

## Maximum aantal requests overschreden

## Ander karakter dan UTF-8 encodering gevonden

## CdbXML is niet well-formed of valid

## Authenticatie niet geslaagd

## Username en paswoord niet secure verstuurd

## Eén of meer verplichte velden niet voorzien

## Formattering niet correct

## Gerefereerd item niet gevonden

## Niet bestaande resource bevraagd

## Verplichte parameter ontbreekt

## Eenzelfde parameter wordt meermaals voorzien













