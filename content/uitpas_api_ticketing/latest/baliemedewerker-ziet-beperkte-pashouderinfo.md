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

|  Parameters | verplicht of andere waarde  |
|---|---|
| balieConsumerKey  | x  |
|  chipNumber | x |
|  cdbid |   |
| includeProfilePicture  |  true/false |

Als respons worden dan de verschillende acties die de pashouder kan uitvoeren aan deze balie en met betrekking tot het event met dit cdbid terug gegeven. 
* Of de pashouder al dan niet kan inchecken
* Welk tarief geldig is voor de pashouder
* Eventuele (welkomst)voordelen

__voorbeeld__

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<cultureEvents xmlns:ns2="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.2/FINAL">
    <total>1</total>
    <event>
        <title>Lunch in De Keuken</title>
        <cdbid>aa90a44f-a2c1-48a9-b00e-0686669534d8</cdbid>
        <locationId>aaae6fcc-08c1-4236-b62b-7d8f5ff1de64</locationId>
        <locationName>CC De Keuken</locationName>
        <price>7.0</price>
        <tariff>1.5</tariff>
        <checkinConstraint>
            <periodType>WEEK</periodType>
            <periodVolume>1</periodVolume>
        </checkinConstraint>
        <checkinAllowed>true</checkinAllowed>
        <ns2:calendar>
            <ns2:permanentopeningtimes>
                <ns2:permanent>
                    <ns2:weekscheme>
                        <ns2:monday opentype="open"/>
                        <ns2:tuesday opentype="open"/>
                        <ns2:wednesday opentype="open"/>
                        <ns2:thursday opentype="open"/>
                        <ns2:friday opentype="open"/>
                        <ns2:saturday opentype="open"/>
                        <ns2:sunday opentype="open"/>
                    </ns2:weekscheme>
                </ns2:permanent>
            </ns2:permanentopeningtimes>
        </ns2:calendar>
        <calendarsummary>
Altijd open</calendarsummary>
        <numberOfPoints>1</numberOfPoints>
        <organiserId>aaae6fcc-08c1-4236-b62b-7d8f5ff1de64</organiserId>
        <organiserName>CC De Keuken</organiserName>
        <gracePeriodMonths>0</gracePeriodMonths>
        <cardSystems>
            <cardSystem>
                <id>8</id>
                <name>UiTPAS Demo</name>
                <distributionKeys>
                    <distributionKey>
                        <id>56</id>
                        <name>MIA bijdrage € 2 - voor tickets < € 10</name>
                        <conditions>
                            <condition>
<definition>PRICE</definition>
<operator>LESS_THAN</operator>
<value>10.01</value>
                            </condition>
                            <condition>
<definition>KANSARM</definition>
<operator>IN</operator>
<value>MY_CARDSYSTEM</value>
                            </condition>
                        </conditions>
                        <tariff>2.0</tariff>
                        <automatic>true</automatic>
                    </distributionKey>
                </distributionKeys>
            </cardSystem>
        </cardSystems>
    </event>
</cultureEvents>
```

