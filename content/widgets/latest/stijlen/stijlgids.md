---
---

# Stijlgids

Voor het stijlen van je widget maak je gebruik van CSS. Een CSS-regel bestaat steeds uit twee onderdelen:
* **Een selector:** het element dat je wil stijlen (vb. ```h2```). 
Elementen die bij elkaar horen bevatten dezelfde class (vb. ```.cnw_card_title```)
* **Een of meerdere declaraties** bestaande uit een property name (vb. ```font-size```) en een waarde (vb. ```2em```). Elke declaratie sluit je af met een puntkomma.

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

| Onderdeel | Selector | Class |
| -- | -- | -- | 
| Zoekbox (geheel) | div | .cnw_search_form |
| Label van een tekstbox of uitschuiflijst | label | nvt |
| Label van extra groepfilters | span | .cnw_form-check--label |
| Keuzemogelijkheden (checkbox) | label | .form-check-label |
| Zoekknop | div | .cnw_btn-search |

<a id="zoekresultaten"></a>
<h3>Zoekresultaten</h3>

| Onderdeel | Selector | Class |
| -- | -- | -- | 
| Zoekresultaten (geheel) | div | .cnw_searchresult__results |
| Aantal gevonden resultaten | div | .cnw_searchresult__counter |
| Verbergfilters | label | .cnw_form-check-label |
| Blok eventtitel | h2 | .cnw_card-title |
| Eventtype | span | .cnw_badge |
| Eventtitel | h2 a | .cnw_block-title |
| Beschrijving | p | .cnw_card-description |
| Afbeelding (links)| img | .cnw_img_responsive left |
| Afbeelding (rechts)| img | .cnw_img_responsive right |
| UiTPASicoon | span | .cnw_sticker-uitpas |
| Vliegicoon | span | .cnw_sticker--vlieg |
| Lijstelementen (label) | dt | .cnw_col-3 |
| Lijstelementen (info) | dd | .cnw_col-9 |
| Tags | div | .cnw_card-labels |
| Lees meer | a | .cnw_btn__card-readmore |
| Pager | li | .cnw_page-item |
| Pager (eerste, volgende, laatste) | li | .cnw_page-link |

### Zoekverfijningen

| Onderdeel | Selector | Class |
| -- | -- | -- | 
| Zoekverfijningen (geheel) | div | .cnw_facets |
| Verberg verfijningen | a | .cnw_facets_toggle |
| Titel set van verfijningen | h3 | .cnw_block-title |
| Lijst van verfijningen | ul | .cnw_facet-search |
| Lijstitems | li | .cnw_facet-label  |
| Logo UIV | img | .cultuurnet-logo-uiv  |

### HTML

Het HTML-blok is standaard een paragraaf (selector = p), maar door zelf HTML in het block te schrijven kan je hier van afwijken.

### Tips

| Onderdeel | Selector | Class |
| -- | -- | -- | 
| Tipsblok (geheel) | div | .cnw_tips |

De overige selectors voor het tipsblok zijn identiek aan die van de [zoekresultaten](#zoekresultaten).

### Detailpagina

| Onderdeel | Selector | Class |
| -- | -- | -- | 
| -- | -- | -- | 

### Overige

| Onderdeel | Selector | Class |
| -- | -- | -- | 
| Laadelement (geheel) | div | .widget-loader--block | 
| Laadelement (tekst) | div | .widget-loader--text | 

## Declarations

Voor een overzicht van de verschillende properties en hun waarden verwijzen we naar [W3Schools](https://www.w3schools.com/css/default.asp).
