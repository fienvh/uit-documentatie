---
---

# Locatie

De locatie waar het event plaatsvindt. Verplicht is minstens de zipcode, het land en de gemeente te voorzien + de naam van de locatie.

Geef bij voorkeur ook een straat en een huisnummer zodat de UiTdatabank de correcte GIS coördinaten kan berekenen.

~~~ xml
<location>
  <address>
    <physical>
        <city>Heist-op-den-Berg</city>
        <country>BE</country>
        <housenr>1</housenr>
        <street>Cultuurplein</street>
        <zipcode>2220</zipcode>
    </physical>
  </address>
  <label>CC Zwaneberg</label>
</location>
~~~

## Uniciteit van locaties garanderen

Om de uniciteit van de locaties te kunnen garanderen, heeft elke locatie een unieke locatie-ID binnen UiTdatabank. 
Dit ID zorgt er bovendien voor dat de locatie aanklikbaar is op UiTinVlaanderen en de andere kanalen van UiT. Het garanderen van deze uniciteit kan op twee manieren.

### Toevoegen van het ID in de node van de locatienaam

Bij het importeren van evenementen is het daarom aangeraden het ID van een reeds bestaande locatie mee te sturen als attribuut in de node van de locatienaam, zoals in onderstaand voorbeeld:

~~~ xml
<location>
<label cdbid="55CA2F39-A8CE-F67A-24C2FF99F9AFB1F6">CC Zwaneberg</label>
</location>
~~~
 
De correcte locatie-id’s kunnen opgevraagd worden via [helpdesk@publiq.be](mailto:helpdesk@publiq.be).

### Het external-ID bezorgen aan publiq
 
Wanneer er voor de locatie reeds een external ID meegestuurd wordt in de XML, volstaat het om dit ID aan [publiq](mailto:helpdesk@publiq.be) te bezorgen. publiq koppelt jouw locatie dan aan de juiste locatiefiche binnen UiTdatabank. 
