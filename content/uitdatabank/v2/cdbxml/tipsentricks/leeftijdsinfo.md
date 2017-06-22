---
---

# Leeftijdsinfo

Leeftijdsinformatie kan meegestuurd worden onder ```//event/agefrom ```. Tal van kanalen gebruiken het agefrom veld om zich specifiek tot een leeftijdsgroep te richten, zoals bijvoorbeeld UiTmetVlieg.be., maar ook vele agenda's die data ophalen uit UiTdatabank. 

## Activiteiten 'specifiek' voor kinderen 

Activiteiten die specifiek voor kinderen zijn, worden bij voorkeur doorgestuurd met een leeftijdsaanduiding. Dat kan op twee manieren:

Onder ```//event/agefrom ```stuur je de minimum leeftijd:

~~~ xml
<agefrom>0</agefrom>
~~~

Onder ```//event/ageto ```stuur je de maximum leeftijd:

~~~ xml
<ageto>2</ageto>
~~~

Beiden kunnen ook samen gestuurd worden:

~~~ xml
<agefrom>0</agefrom>
<ageto>2</ageto>
~~~

Het kan handig zijn om de leeftijdscategorieën van UiTmetVlieg over te nemen:

- 0 - 2 jaar
- 3 - 5 jaar
- 6 - 8 jaar
- 9 - 11 jaar


De leeftijdsaanduiding kan ook zonder ```<ageto> ```gestuurd worden. In dat geval wordt er automatisch een ageto toegevoegd:

| Agefrom | Ageto | 
| -- | -- |
| < 12 | 12 | 
| 12 < > 18 | 18 | 
| 18 <  | 99 | 

## Activiteiten 'ook' voor kinderen

Activiteiten die toegankelijk zijn voor kinderen, maar niet gericht zijn naar een specifieke leeftijdscategorie kunnen doorgestuurd worden met het label ```'ook voor kinderen' ```

~~~ xml
<keywords>ook voor kinderen<keywords>
~~~

Het meesturen van deze tag zorgt ervoor dat de activiteit het vlieglogo krijgt en verschijnt op UiTmetVlieg.be 

## Activiteiten voor iedereen toegankelijk

De activiteiten die voor iedereen toegankelijk zijn, maar niet specifiek voor kinderen moeten doorgestuurd worden zonder leeftijdsaanduiding.











 
