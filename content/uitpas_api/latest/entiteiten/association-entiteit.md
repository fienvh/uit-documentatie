---
---

# Association entiteit

|**Parameter** |**Type** |**Beschrijving** |  
 |id |long |identificatie van de vereniging |  
 |name |String |naam van de organisatie |  
 |enddateCalculation |FREE, BASED\_ON\_DATE\_OF\_BIRTH, BASED\_ON\_REGISTRATION\_DATE |Bepaalt hoe de einddatum van een lidmaatschap berekend moet worden. FREE gaat als einddatum de datum gebruiken die ingesteld staat op het veld enddateCalculationFreeDate. BASED\_ON\_DATE\_OF\_BIRTH gaat als einddatum de geboortedatum van de pashouder gebruiken vermeerderd met het aantal jaren dat ingesteld staat op het veld enddateCalculationValidityTime. BASED\_ON\_REGISTRATION\_DATE gaat als einddatum de registratiedatum van het lidmaatschap gebruiken vermeerderd met het aantal jaren dat ingesteld staat op het veld enddateCalculationValidityTime. |  
 |enddateCalculationFreeDate |Date |De datum die gebruikt wordt bij berekening van de einddatum wanneer type enddateCalculation FREE is. Voor andere enddateCalculation types wordt dit veld niet meegegeven. |  
 |enddateCalculationValidityTime |int |Het aantal jaren dat bijgeteld wordt bij de geboortedatum van de pashouder of de datum van registratie van het lidmaatschap, afhankelijk van het type van enddateCalculation. Indien het type enddateCalculation FREE is, dan wordt dit veld niet meegegeven. |  
 |permissionRead |boolean |true indien de balie leesrechten heeft op de vereniging, anders false |  
 |permissionRegister |boolean |true indien de balie registratierechten heeft op de vereniging, anders false |  
 |cardSystems |List<CardSystem> |lijst van kaartsystemen waar de vereniging beschikbaar is |