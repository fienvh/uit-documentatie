---
---

## Reference

| URL param | Value | Example & reference |
| :----- | :----- | :----- |
| addressCountry | ISO 3166-1 alpha-2 country code (Default = BE) | addressCountry=NL<br/> See [Address](../../searching/address) |
| audienceType | Supported values: everyone (default), members, education | audienceType=members <br/> See [Audience type](../../searching/audience-type) |
| availableFrom | ISO-8601 datetime (default = current date)| availableFrom=2017-04-01T00:00:00+01:00 <br/> See [Availability](../../searching/availability) |
| availableTo | ISO-8601 datetime (default = current date) | availableTo=2017-04-30T23:59:59+01:00 <br/> See [Availability](../../searching/availability) |  
| calendarType | permanent, periodic, multiple, single | calendarType=single,multiple <br/> See [Calendar type](../../searching/calendar-type) |
| createdFrom | ISO-8601 datetime | createdFrom=2017-01-01T00:00:00+01:00 <br/> See [Created and modified](../../searching/created-and-modified) |
| createdTo | ISO-8601 datetime | createdTo=2017-01-01T00:00:00+01:00 <br/> See [Created and modified](../../searching/created-and-modified) |
| creator | string | creator=janedoe <br/> See [Creator](../../searching/creator) |
| completedLanguages | Supported values: nl, fr, de, en | completedLanguages[]=fr <br/> See [Languages](../../searching/languages) |
| coordinates | decimal representation of latitude & longitude | coordinates=50.8511740,4.3386740 <br/> See [Geo distance](../../searching/geo-distance) |  
| dateFrom | ISO-8601 datetime | dateFrom=2017-01-01T00:00:00+01:00 <br/> See [Date & time](../../searching/date) |  
| dateTo | ISO-8601 datetime | dateTo=2017-01-01T23:59:59+01:00 <br/> See [Date & time](../../searching/date) |  
| disableDefaultFilters | Boolean | disableDefaultFilters=true <br/> See [Default filters](../../getting_started/default-filters) |  
| distance | ElasticSearch distance units| coordinates=50.8511740,4.3386740&distance=10km <br/> See [Geo distance](../../searching/geo-distance) |
| embed | Boolean (default=false) | embed=true <br/> See [Embedding result bodies](../../getting_started/embedding-full-result-bodies) |  
| facets | Supported values: regions, types, themes, facilities | facets[]=regions <br/> See [Facet counts](../../searching/facet-counts) |
| hasMediaObjects| boolean | hasMediaObjects=true <br/> See [Media objects](../../searching/media-objects) |
| id | uuid | id=f29d2182-2db0-4f99-831a-8e6a64c1c9c1 <br/> See [Id](../../searching/id) |
| labels | string | labels[]=paspartoe <br/> See [Labels](../../searching/labels) |
| languages | Supported values: nl, fr, de, en | languages[]=fr <br/> See [Languages](../../searching/languages) |  
| limit | integer | limit=5 <br/> See [Pagination](../../getting_started/pagination)|
| locationId | uuid | locationId=b8bff8fa-988a-44db-8dd8-70bef77f3933 <br/> See [Id](../../searching/id) |  
| locationTermIds | UiTdatabank taxonomy | locationTermIds[]=JCjA0i5COUmdjMwcyjNAFA <br/> See [Terms](../../searching/terms) |  
| locationTermLabels | UiTdatabank taxonomy | locationTermLabels[]=Jeugdhuis of jeugdcentrum <br/> See [Terms](../../searching/terms) |
| mainLanguage | Supported values: nl (default), fr, de, en | mainLanguage=nl <br/> See [Languages](../../searching/languages) |   
| maxAge | integer | maxAge=21 <br/> See [Age](../../searching/age) |  
| maxPrice | numeric | maxPrice=25 <br/> See [Price](../../searching/price) |
| modifiedFrom | ISO-8601 datetime | modifiedFrom=2017-01-01T00:00:00+01:00 <br/> See [Created and modified](../../searching/created-and-modified) |
| modifiedTo | ISO-8601 datetime | modifiedTo=2017-01-01T00:00:00+01:00 <br/> See [Created and modified](../../searching/created-and-modified) |  
| minAge | integer | minAge=12 <br/> See [Age](../../searching/age) |  
| minPrice | numeric | minPrice=9.99 <br/> See [Price](../../searching/price) |
| organizerId | uuid | organizerId=7d1f485d-dab5-4ad2-8894-322060a2bc52 <br/> See [Id](../../searching/id) |  
| postalCode | integer or string | postalCode=3000 <br/> See [Address](../../searching/address) |  
| price | numeric | price=5 <br/> See [Price](../../searching/price) |  
| q | Query string syntax| q=(wandeling OR wandelen) AND femma <br/> See [Advanced queries](../../reference/advanced-queries) and [Free text search](../../searching/free-text-search) |  
| regions | region id | regions=nis-24062 <br/> See [Geosearch](../../searching/geosearch) |  
| start | integer | start=10 <br/> See [Pagination](../../getting_started/pagination) |
| sort | supported values: score, availableTo / order: asc, desc | sort[availableTo]=asc <br/> See [Sorting](../../searching/sorting) |  
| termIds | UiTdatabank taxonomy | termIds[]=0.55.0.0.0 <br/> See See See [Terms](../../searching/terms) |  
| termLabels | UiTdatabank taxonomy | termLabels[]=Theatervoorstelling <br/> See [Terms](../../searching/terms) |  
| text | Query string syntax | text=(wandeling OR wandelen) AND femma <br/> See [Free text search](../../searching/free-text-search) |  
| uitpas | Boolean (true/false/*) | uitpas=true <br/> See [UiTPAS](../../searching/uitpas) |  
| workflowStatus | supported values: DRAFT, READY_FOR_VALIDATION, APPROVED, REJECTED, DELETED | workflowStatus=READY_FOR_VALIDATION,APPROVED (default) <br/> See [Workflow status](../../searching/workflow-status) |
