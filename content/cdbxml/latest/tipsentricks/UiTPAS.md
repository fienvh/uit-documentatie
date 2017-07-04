---
---

De informatie op deze pagina wordt binnenkort aangevuld.

# UiTPAS
## Verplichte UiTPAS-velden

### Organiser ID

UiTPAS-aanbod is steeds gelinkt aan een organisator. Daarom is een sturen van het juiste organiser ID verplicht bij elke UiTPAS-activiteit. Dit ID (cdbid) stuur je mee in de ```<label>```-node, zoals in onderstaand voorbeeld:

```
<organiser>
<label cdbid="55CA2F39-A8CE-F67A-24C2FF99F9AFB1F6">CC Zwaneberg</label>
</organiser>
<keywords>UiTPAS Heist-op-den-Berg</keywords>
```

Het sturen van het juiste cdbid in de node zorgt er ook voor dat de organisator aanklikbaar is op UiTinVlaanderen en andere kanalen van UiT. 

### Label

Voor elke UiTPAs-activiteit moet het label ('keyword') van de overeenkomstige UiTPAS-regio toegevoegd worden.

```<keywords>UiTPAS Heist-op-den-Berg</keywords>```

Elke UiTPAS-regio heeft zijn eigen label:

| Regio | Label | 
| -- | -- |
| Brussel | Paspartoe | 
| Gent | UiTPAS Gent | 
| Oostende | UiTPAS Oostende | 
| Aalst | UiTPAS Regio Aalst  |
| Dender | UiTPAS Dender |
| Zuidwest | UiTPAS Zuidwest |
| Mechelen | UiTPAS Mechelen |
| Kempen | UiTPAS Kempen |
| Maasmechelen | UiTPAS Maasmechelen |
| Leuven | UiTPAS Leuven |
| Lier | UiTPAS Lier |
| Heist-op-den-Berg | UiTPAS Heist-op-den-Berg |
| Meetjesland | UiTPAS Meetjesland |
| Westhoek | UiTPAS Westhoek |
| Algemeen UiTPAS-label | UiTPAS  |

### Prijs

Het is verplicht een prijs mee te geven bij elke UiTPAS-activiteit:

```
<price>
<pricevalue>9.00</pricevalue>
</price>
```

Het is ook mogelijk meerdere prijzen aan te maken in cdbxml. Zie hiervoor de sectie over [prijsinfo](http://documentatie.uitdatabank.be/content/cdbxml/latest/tipsentricks/prijsinfo/)

## Wenselijke UiTPAS-velden
### Tijdsinfo: aanvangsuur

Het is aangeraden het aanvangsuur mee te sturen. De UiTPAS-zuilen hier rekening mee houden.
Het aanvangsuur ('timestart') kan je als volgt meegeven.
Indien gewenst kan ook een einduur ('timeend') aangeduid worden.

```
<calendar>
  <timestamps>
    <timestamp>
      <date>2010-12-12</date>
      <timestart>18:00:00</timestart>
      <timeend>20:00:00</timeend>
    </timestamp>
  </timestamps>
</calendar>
```
