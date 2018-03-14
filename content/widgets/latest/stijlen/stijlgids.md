---
---

# Stijlgids

Voor het stijlen van je widget maak je gebruik van CSS. Een CSS-regel bestaat steeds uit twee onderdelen:
* **Een selector:** het element dat je wil stijlen (vb. ```h2```). 
Elementen die bij elkaar horen bevatten dezelfde class (vb. .```form-select```)
* **Een of meerdere declarations** bestaande uit een property name (vb. font-size) en een waarde (vb. ```2em```). Elke declaration sluit je af met een puntkomma.

Voorbeeld:
```
h2 {
font-size: 2em;
font-weight: 700;
color: red;
}
```

## Selectors

Om je op weg te helpen met het stijlen geven we hieronder per widgetblok een overzicht van de meest voorkomende selectors (en hun bijhorende class).

### Zoekbox

| Onderdeel | Selector | class |
| -- | -- | -- | 
| Zoekbox (geheel) | div | .cnw_search_form |
| Label van een tekstbox of selectielijst | label | .cnw_form-control |
| Zoekknop | div | .cnw_btn-search |

### Zoekresultaten

| Onderdeel | Selector | class |
| -- | -- | -- | 
| Aantal gevonden resultaten | div | .cnw_searchresult__counter |
| Blok eventtitel | h2 | .cnw_card-title |
| Eventtitel | h2 a | .cnw_block-title |
| Tags | span | .cnw_search-result-tags-item |

### Zoekverfijningen

| Onderdeel | Selector | class |
| -- | -- | -- | 
| Zoekverfijningen (geheel) | div | .cnw_facets |
| Verberg verfijningen | a | .cnw_facets_toggle |
| Titel set van verfijningen | h3 | .cnw_block-title |
| Lijst van verfijningen | ul | .cnw_facet-search |
| Lijstitems | li | .cnw_facet-label  |

### HTML

### Tips




## Declarations




 
