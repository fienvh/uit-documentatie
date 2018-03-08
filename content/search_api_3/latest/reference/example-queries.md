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
GET https://search.uitdatabank.be/events/?q=(((terms.label:Tentoonstelling%20OR%20terms.label:Theatervoorstelling%20OR%20terms.label:Dansvoorstelling%20OR%20terms.label:%22Jazz%20en%20blues%22%20OR%20terms.label:%22Klassieke%20muziek%22)%20NOT%20(terms.label:%22Cursus%20of%20workshop%22%20OR%20terms.label:%22Lezing%20of%20congres%22))%20AND%20(calendarType:single%20OR%20calendarType:multiple))
```

## Free events in Ghent

- [free](../../searching/price) events
`q=price:0`
- [Ghent](../../searching/region)
`q=regions:gem-gent`

```
GET https://search.uitdatabank.be/events/?q=price:0%20AND%20regions:gem-gent
```


## UiTPAS Oostende events
> show all events that take place in Oostende and have an UiTPAS organizer

- [UiTPAS](../../searching/uitpas) Oostende
`q=regions:gem-oostende AND organizer.labels:"UiTPAS Oostende"`
OR
`uitpas=true&q=regions:gem-oostende`


```
GET https://search.uitdatabank.be/events/?q=regions:gem-oostende%20AND%20organizer.labels:"UiTPAS%20Oostende"
```
