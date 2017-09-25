---
---

# Baliemedewerker ziet beperkte pashouderinfo

Afhankelijk van de usecase kan de ticketing applicatie verschillende api calls gebruiken. 

## Ophalen verschillende events voor 1 pashouder

Wilt de applicatie het toe te passen tarief voor verschillende events voor de pashouder weergeven, dan kan onderstaand endpoint gebruikt worden:

```
uitpas.cultureevent/search
```

met parameters:

|  parameter |  verplicht |
|---|---|
|  balieConsumerKey |  x |
|  uitpasNumber | x  |
|  cdbid |   |

Als response wordt dan het tarief voor de pashouder weergegeven

__voorbeeld__

```
<event>
        <title>Reisreportage ?De Wereld Rond?: IJsland</title>
        <cdbid>e28c142d-efae-49bd-aead-303d37f21323</cdbid>
        <price>5.0</price>
        <tariff>1.5</tariff>
        <checkinConstraint>
            <periodType>DAY</periodType>
            <periodVolume>1</periodVolume>
        </checkinConstraint>
        <checkinAllowed>false</checkinAllowed>
        <checkinConstraintReason>INVALID_DATE_TIME</checkinConstraintReason>
        <ns2:calendar>
            <ns2:timestamps>
                <ns2:timestamp>
                    <ns2:date>2013-02-28</ns2:date>
                    <ns2:timestart>20:00:00</ns2:timestart>
                    <ns2:timeend>22:00:00</ns2:timeend>
                </ns2:timestamp>
            </ns2:timestamps>
        </ns2:calendar>
        <calendarsummary>do 28/02/13 van 20:00 tot 22:00 </calendarsummary>
        <numberOfPoints>1</numberOfPoints>
        <organiserId>30256408-f225-49ff-8e18-4e1ea02e604d</organiserId>
        <organiserName>vtbKultuur Aalst</organiserName>
        <gracePeriodMonths>0</gracePeriodMonths>
    </event>
```

Indien de pashouder geen aanspraak maakt op korting, wordt de reden hiervoor meegegeven.

__voorbeeld__

```
 <price>14.0</price>
        <tariff>14.0</tariff>
        <buyConstraintReason>KANSENSTATUUT_EXPIRED</buyConstraintReason>

```

## Ophalen Verschillende acties aan de balie

Het te gebruiken endpoint:

```
uitpas/passholder/eventActions
```

Parameters:

|  Parameters | Verplicht  |
|---|---|
| balieConsumerKey  | x  |
|  chipNumber | x |
|  cdbid |   |
| includeProfilePicture  |  true/false |


