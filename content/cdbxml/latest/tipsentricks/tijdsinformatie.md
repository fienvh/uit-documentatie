---
---

# Tijdsinformatie

Het is verplicht aan te geven wanneer het event plaatsvindt. 

## Het event vindt plaats op één tijdstip

In de meeste gevallen vindt een event plaats op één tijdstip, zoals in het voorbeeld. Dikwijls wordt daarbij ook het aanvangsuur voorzien, en eventueel het einduur:

~~~ xml
<calendar>
  <timestamps>
    <timestamp>
      <date>2010-12-12</date>
      <timestart>18:00:00</timestart>
      <timeend>20:00:00</timeend>
    </timestamp>
  </timestamps>
</calendar>
~~~

## Het event vindt plaats op meerdere tijdstippen

Wanneer een event op meer dan één tijdstip plaatsvindt, bijvoorbeeld een festival op verschillende opeenvolgende dagen, dan stuur je geen event object door per tijdstip maar voeg je binnen het betreffende event meerdere tijdstippen toe.

Het aantal tijdstippen (timestamps) dat aangemaakt kan worden, is onbeperkt. 

~~~ xml
<calendar>
  <timestamps>
    <timestamp>
      <date>2017-07-06</date>
      <timestart>18:00:00</timestart>
      <timeend>20:00:00</timeend>
    </timestamp>
    <timestamp>
      <date>2017-07-07</date>
      <timestart>18:00:00</timestart>
      <timeend>20:00:00</timeend>
    </timestamp>
    <timestamp>
      <date>2017-07-08</date>
      <timestart>18:00:00</timestart>
      <timeend>20:00:00</timeend>
    </timestamp>
  </timestamps>
</calendar>
~~~

## Het event vindt permanent plaats

Wanneer een event permanent plaatsvindt geef je aan dat het een permanent aanbod is, eventueel aangevuld met een weekschema.

Let wel: er kan maar één period element aangemaakt worden.

### Zonder weekschema

~~~ xml
<calendar>
  <periods>
    <period>
      <datefrom>2014-01-01</datefrom>
      <dateto>2018-12-31</dateto>
    <period>
  <periods>
<calendar>
~~~

### Met weekschema

~~~ xml
<calendar>
  <periods>
    <period>
      <datefrom>2014-01-01</datefrom>
      <dateto>2018-12-31</dateto>
        <weekscheme>
          <monday opentype="open">
            <openingtime from="13:30:00" to="17:00:00"/>
          </monday>
          <tuesday opentype="closed"/>
          <wednesday opentype="open">
            <openingtime from="19:30:00" to="23:00:00"/>
          </wednesday>
          <thursday opentype="closed"/>
          <friday opentype="closed"/>
          <saturday opentype="closed"/>
          <sunday opentype="closed"/>
    <period>
  <periods>
<calendar>
~~~

## Automatisch aanvullen van begin -en einduur

UiTdatabank zal ontbrekende begin- en einduren als volgt invullen:

- ontbrekend beginuur: 00:00:00
- ontbrekend einduur: 23:59:59
