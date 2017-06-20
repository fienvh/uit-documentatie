---
---

# Afbeeldingen

Verhoog de zichtbaarheid van het event door een thumbnail toe te voegen, zoals in onderstaand voorbeeld.

~~~ xml
<media> 
<file main="true"> 
<filename>x.jpg</filename> 
<filetype>jpeg</filetype> 
<copyright>Auteur van de afbeelding</copyright> 
<hlink>http://www.flickr.com/images/x.jpg</hlink> 
</file> 
</media>
~~~

Om aan te geven dat het media object dat je verzendt kan dienen als thumbnail voorzie je het attribuut main - //media/file/@main=”true”. Voeg de verplichte elementen filename en filetype toe. Het element filename moet uniek zijn. 


## Ondersteunde extensies en formaat

De maximale grootte van je afbeelding is 5MB en heeft als type ```.jpeg,``` , ```.gif ``` of ```.png ```.

Formaten als ```.tif ``` en ```.bmp``` worden niet geïndexeerd.

## Copyright

Vergeet ook niet het copyright te vermelden. Dit is weliswaar niet verplicht voor een valid XML, maar het is ten zeerste aangeraden mee te geven wie de rechten op de afbeelding bezit.

[Meer weten over copyright?](https://www.uitdatabank.be/copyright) 
