---
---

# Afbeeldingen

Verhoog de zichtbaarheid van je activiteit door een thumbnail toe te voegen, zoals in onderstaand voorbeeld.

~~~ xml
<media> 
<file main="true"> 
<copyright>Auteur van de afbeelding</copyright>
<filename>x.jpg</filename> 
<filetype>jpeg</filetype> 
<hlink>http://www.flickr.com/images/x.jpg</hlink>
<mediatype>image</mediatype> 
</file> 
</media>
~~~

Om aan te geven dat het media-object dient als coverafbeelding of thumbnail voorzie je het attribuut main - ```//media/file/@main=”true”```. Voeg de verplichte elementen filename en filetype toe. Het element filename moet uniek zijn en overeenkomen met de filename in de bijhorende hlink. 


## Formaat en extensie

De maximale grootte van je afbeelding is 5MB en heeft als type ```.jpeg``` , ```.gif ``` of ```.png ```.

Formaten als ```.tiff ``` en ```.bmp``` worden niet geïndexeerd.

## Copyright

Vergeet niet het copyright te vermelden. Dit is weliswaar niet verplicht voor een geldig XML-document, maar is ten zeerste aangeraden. Zo geef je mee wie de rechten op de afbeelding bezit en bescherm je jezelf tegen eventuele copyright-claims bij onrechtmatig gebruik.

[Meer weten over copyright?](https://www.uitdatabank.be/copyright) 
