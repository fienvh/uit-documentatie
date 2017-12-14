---
---

# Theme

One of the available themes at http://taxonomy.uitdatabank.be/api/domain/theme/classification. Pick a theme that fits the chosen eventtype. For an overview of all eventtypes with appropriate themes: [http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/themas/](http://documentatie.uitdatabank.be/content/uitdatabank/latest/categorisatie/themas/)

Theme is not required, but highly recommended. An event can only have one theme.

## Resource URI

```
/events/{eventId}/theme/{themeId}
```

## Resource properties

| Property	| Type | Description | Example |
|--|--|--|--|
| eventId	| uuid | unique identifier for an event | d595414a-13e0-4dd2-b4bd-706599427351 |
| themeId	| string | unique event theme-id | 1.8.3.5.0 |

## HTTP PUT

Update event with given theme-id

## HTTP POST

Not supported

## HTTP GET

Not supported

## HTTP DELETE

Not supported