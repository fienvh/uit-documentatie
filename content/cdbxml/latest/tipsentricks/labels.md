---
---

# Labels

Je kan evenementen verrijken met een of meerdere door jouw gekozen label(s). 
Deze labels kunnen vervolgens als basis dienen om queries te bouwen op de [UiTdatabank Search API](http://documentatie.uitdatabank.be/content/search_api/latest/index.html) en zo je eigen agenda of app te vullen met evenementen uit UiTdatabank. 

Labels ('keywords') kan je sturen onder ```//event/keywords```. Wanneer je meerdere keywords stuurt, dien je deze te scheiden door middel van een puntkomma. 

```<keywords>label 1;label 2;label 3;label n</keywords>```

Wanneer een label niet zichtbaar mag zijn op de outputkanalen van UiT (zoals UiTinVlaanderen en UiTmetVlieg), stuur je ```visible="false"``` mee in de node:

```<keywords visible="false">label 1;label 2;label 3;label n</keywords>```

## Specifieke labels

### 'ook voor kinderen'

Activiteiten die toegankelijk zijn voor kinderen, maar niet gericht zijn naar een specifieke leeftijdscategorie kunnen doorgestuurd worden met het label ```'ook voor kinderen'```. Het meesturen van dit label zorgt ervoor dat de activiteit het Vlieg-logo krijgt en verschijnt op UiTmetVlieg.be 

~~~ xml
<keywords>ook voor kinderen<keywords>
~~~

### Doelgroep-labels

Wanneer je activiteit gericht is aan mensen met een beperking, kan je de specifieke doelgroep aanduiden door die doelgroep mee te sturen als label. Volgende doelgroepen worden onderscheiden:
- 'Autisme'
- 'Blinden of slechtzienden'
- 'Doven of slechthorenden'
- 'Fysieke beperking'
- 'Psychische beperking'
- 'Verstandelijke beperking'

Wanneer je deze labels wilt gebruiken, neem je best vooraf contact op met [CultuurNet](mailto:vragen@uitdatabank.be).

### UiTPAS-labels

Zie hiervoor de sectie over [UiTPAS](http://documentatie.uitdatabank.be/content/cdbxml/latest/tipsentricks/UiTPAS/).
