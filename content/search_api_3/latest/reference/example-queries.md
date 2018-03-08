---
---

# Example queries

## Tipswidget "Mijn Kind op Kamp"
> show a selection of the first 5 occuring events for children with eventtype "kamp of vakantie" that take place during the summer of 2017

- [periode](../../searching/date): zomervakantie 2017
`q=dateRange:[2017-07-01T00:00:00+01:00 TO 2017-08-31T23:59:59+01:00]`
- [Default Filters](../../getting_started/default-filters)
`disableDefaultFilters=true`
- [type](../../searching/terms):"Kamp of vakantie"
`q=terms.label:"Kamp of vakantie"`
- [leeftijd](../../searching/age): jonger dan 14 jaar
`q=typicalAgeRange:[* TO 14]`
- met [afbeelding](../../searching/media-objects)
`q=mediaObjectsCount:>=1`
- [gesorteerd](../../searching/sorting) op startdatum
`sort[availableTo]=asc`
- toon enkel [5 results](../../getting_started/pagination)
`limit=5`


```
GET https://search.uitdatabank.be/events/?q=(terms.label:"Kamp of vakantie" AND typicalAgeRange:[* TO 14] AND dateRange:[2017-07-01T00\:00\:00%2B01\:00 TO 2017-08-31T23\:59\:59%2B01\:00] AND mediaObjectsCount:>=1)&sort[availableTo]=asc&limit=5&disableDefaultFilters=true&embed=true
```


## In the mood for "arts & culture"
> show all temporary events that focus on "arts & culture" (a selection based on specific eventtypes and themes)

**Include**
- [eventtype](../../searching/terms): tentoonstelling
`q=terms.id:0.0.0.0.0`
- [eventtype](../../searching/terms): theatervoorstelling
`q=terms.id:0.55.0.0.0`
- [eventtype](../../searching/terms): dansvoorstelling
`q=terms.id:0.54.0.0.0`
- [theme](../../searching/terms): jazz & blues
`q=terms.id:1.8.2.0.0`
- [theme](../../searching/terms): klassiek
`q=terms.id:1.8.1.0.0`
- [temporary](../../searching/calendar-type) events
`q=calendarType:single OR calendarType:multiple`


**Exclude**
- [eventtype](../../searching/terms): cursus en workshop
`q=terms.id:0.3.1.0.0`
- [eventtype](../../searching/terms): lezing en congres
`q=terms.id:0.3.2.0.0`


```
GET https://search.uitdatabank.be/events/?q=(((terms.label:Tentoonstelling OR terms.label:Theatervoorstelling OR terms.label:Dansvoorstelling OR terms.label:"Jazz en blues" OR terms.label:"Klassieke muziek") NOT (terms.label:"Cursus of workshop" OR terms.label:"Lezing of congres")) AND (calendarType:single OR calendarType:multiple))
```

## Free events in Ghent

- [free](../../searching/price) events
`q=price:0`
- [Ghent](../../searching/region)
`q=regions:gem-gent`

```
GET https://search.uitdatabank.be/events/?q=price:0 AND regions:gem-gent
```


## UiTPAS Oostende events
> show all events that take place in Oostende and have an UiTPAS organizer

- [UiTPAS](../../searching/uitpas) Oostende
`q=regions:nis-35013 AND organizer.labels:"UiTPAS Oostende"`
OR
`uitpas=true&q=regions:nis-35013`


```
GET https://search.uitdatabank.be/events/?q=regions:nis-35013 AND organizer.labels:"UiTPAS Oostende"
```
