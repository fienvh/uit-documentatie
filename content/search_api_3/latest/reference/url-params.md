---
---

## Reference

| URL param | Value | Example | doc |
| :-----: | :-----: | :-----: | :-----: |
| addressCountry | ISO 3166-1 alpha-2 country code (Default = BE) | addressCountry=NL | [Address](../../searching/address) |
| audienceType | Supported values: everyone (default), members, education | audienceType=members | [Audience type](../../searching/audience-type) |
| availableFrom | ISO-8601 datetime (default = current date)| availableFrom=2017-04-01T00:00:00+01:00 | [Availability](../../searching/availability) |
| availableTo | ISO-8601 datetime (default = current date) | availableTo=2017-04-30T23:59:59+01:00 | [Availability](../../searching/availability) |  
| calendarType | permanent, periodic, multiple, single | calendarType=single,multiple | [Calendar type](../../searching/calendar-type) |
| createdFrom | ISO-8601 datetime | createdFrom=2017-01-01T00:00:00+01:00 | [Created and modified](../../searching/created-and-modified) |
| createdTo | ISO-8601 datetime | createdTo=2017-01-01T00:00:00+01:00 | [Created and modified](../../searching/created-and-modified) |
| creator | string | creator:janedoe@john.org | [Creator](../../searching/creator) |
| completedLanguages | Supported values: nl, fr, de, en | completedLanguages[]=fr | [Languages](../../searching/languages) |
| coordinates | decimal representation of latitude & longitude | coordinates=50.8511740,4.3386740 | [Geo distance](../../searching/geo-distance) |  
| dateFrom | ISO-8601 datetime | dateFrom=2017-01-01T00:00:00+01:00 | [Date & time](../../searching/date) |  
| dateTo | ISO-8601 datetime | dateTo=2017-01-01T23:59:59+01:00 | [Date & time](../../searching/date) |  
| disableDefaultFilters | Boolean | disableDefaultFilters=true | [Default filters](../../getting_started/default-filters) |  
| distance | ElasticSearch distance units| coordinates=50.8511740,4.3386740&distance=10km | [Geo distance](../../searching/geo-distance) |
| embed | Boolean (default=false) | embed=true | [Embedding result bodies](../../getting_started/embedding-full-result-bodies) |  
| facets | Supported values: regions, types, themes, facilities | facets[]=regions | [Facet counts](../../searching/facet-counts) |
| hasMediaObjects| boolean | hasMediaObjects=true | [Media objects](../../searching/media-objects) |
| id | uuid | id=f29d2182-2db0-4f99-831a-8e6a64c1c9c1 | [Id](../../searching/id) |
| labels | string | labels[]=paspartoe | [Labels](../../searching/labels) |
| languages | Supported values: nl, fr, de, en | languages[]=fr | [Languages](../../searching/languages) |  
| limit | integer | limit=5 | [Pagination](../../getting_started/pagination)|
| locationId | uuid | locationId=b8bff8fa-988a-44db-8dd8-70bef77f3933 | [Id](../../searching/id) |  
| locationTermIds | UiTdatabank taxonomy | locationTermIds[]=JCjA0i5COUmdjMwcyjNAFA | [Terms](../../searching/terms) |  
| locationTermLabels | UiTdatabank taxonomy | locationTermLabels[]=Jeugdhuis of jeugdcentrum | [Terms](../../searching/terms) |
| mainLanguage | Supported values: nl (default), fr, de, en | mainLanguage=nl | [Languages](../../searching/languages) |   
| maxAge | integer | maxAge=21 | [Age](../../searching/age) |  
| maxPrice | numeric | maxPrice=25 | [Price](../../searching/price) |
| modifiedFrom | ISO-8601 datetime | modifiedFrom=2017-01-01T00:00:00+01:00 | [Created and modified](../../searching/created-and-modified) |
| modifiedTo | ISO-8601 datetime | modifiedTo=2017-01-01T00:00:00+01:00 | [Created and modified](../../searching/created-and-modified) |  
| minAge | integer | minAge=12 | [Age](../../searching/age) |  
| minPrice | numeric | minPrice=9.99 | [Price](../../searching/price) |
| organizerId | uuid | organizerId=7d1f485d-dab5-4ad2-8894-322060a2bc52 | [Id](../../searching/id) |  
| postalCode | integer or string | postalCode=3000 | [Address](../../searching/address) |  
| price | numeric | price=5 | [Price](../../searching/price) |  
| q | Query string syntax| q=(wandeling OR wandelen) AND femma | [Advanced queries](../../reference/advanced-queries) and [Free text search](../../searching/free-text-search) |  
| regions | region id | regions=gem-leuven | [Region](../../searching/region) |  
| start | integer | start=10 | [Pagination](../../getting_started/pagination) |
| sort | supported values: score, availableTo / order: asc, desc | sort[availableTo]=asc | [Sorting](../../searching/sorting) |  
| termIds | UiTdatabank taxonomy | termIds[]=0.55.0.0.0 | [Terms](../../searching/terms) |  
| termLabels | UiTdatabank taxonomy | termLabels[]=Theatervoorstelling | [Terms](../../searching/terms) |  
| text | Query string syntax | text=(wandeling OR wandelen) AND femma | [Free text search](../../searching/free-text-search) |  
| uitpas | Boolean (true/false/*) | uitpas=true | [UiTPAS](../../searching/uitpas) |  
| workflowStatus | supported values: DRAFT, READY\_FOR\_VALIDATION, APPROVED, REJECTED, DELETED | workflowStatus=READY\_FOR\_VALIDATION,APPROVED (default) | [Workflow status](../../searching/workflow-status) |
