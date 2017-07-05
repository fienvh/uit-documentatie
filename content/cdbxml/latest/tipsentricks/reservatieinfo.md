---
---

# Reservatieinfo

Een reservatielink kan meegestuurd worden onder ``` //event/contactinfo/url```, door de property reservation="true" mee te geven. 


### Voorbeeld

~~~ xml
<contactinfo>
<address>
<physical>
<city>Brussel</city>
<country>BE</country>
<housenr>1</housenr>
<street>Anspachlaan</street>
<zipcode>1000</zipcode>
</physical>
</address>
<url reservation="true">https://www.reservatieurl.be</url>
</contactinfo>

~~~ 
