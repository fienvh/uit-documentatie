---
---

# Escaping

## Double quotes in field values

A valid label in UiTdatabank could be `"dag van de fiets"` \(with quotes!\).

To search for this label in an advanced query, it should be escaped and encapsulated like this:

```
GET https://search.uitdatabank.be/offers/?q=labels:"\"dag van de fiets\""
```

## Wildcards in field names

`{lang}` should always be replaced by either a specific language (`nl`, `fr`, ...) or an **escaped** wildcard (`\*`)

| Field | Type | Comments |
| :--- | :--- | :--- |
| organizer.name.{[lang](../../searching/languages)} | String |  |
| name.{[lang](../../searching/languages)} | String |  |
| description.{[lang](../../searching/languages)} | String |  |
| location.name.{[lang](../../searching/languages)} | String |  |
| address.{[lang](../../searching/languages)}.addressCountry | Enum | See [Address](../../searching/address) |
| address.{[lang](../../searching/languages)}.addressLocality | String | See [Address](../../searching/address) |
| address.{[lang](../../searching/languages)}.postalCode | String | See [Address](../../searching/address) |
| address.{[lang](../../searching/languages)}.streetAddress | String | See [Address](../../searching/address) |

When you use wildcards in field names to search across multiple translated versions, the wildcard should be escaped using a backslash. \(`\`\). For example:

```
GET https://search.uitdatabank.be/offers/?addressCountry=*&q=address.\*.addressCountry:BE AND address.\*.postalCode:1000 AND address.\*.addressLocality:Bruxelles AND address.\*.streetAddress:Boulevard Anspach*
```
