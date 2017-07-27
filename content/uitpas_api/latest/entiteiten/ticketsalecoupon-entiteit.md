---
---

# TicketSaleCoupon entiteit

|**Parameter** |**Type** |**Beschrijving** |  
 |id |String |ID van de ticketSaleCoupon |  
 |name |String |naam van de ticketSaleCoupon |  
 |description |String |omschrijving van de ticketSaleCoupon |  
 |exchangeConstraint |PeriodConstraint |Omruilvoorwaarden van de ticketsalecoupon |  
 |buyConstraint |PeriodConstraint |Koopbeperking op eventniveau |  
 |remainingTotal |PeriodConstraint |aantal beschikbare tickets in de gegeven periode |  
 |validFrom |Date |start geldigheidsperiode van de ticketsalecoupon |  
 |validTo |Date |einde geldigheidsperiode van de ticketsalecoupon |  
 |expired |boolean |true indien ticketsalecoupon vervallen is, false indien nog geldig |  
 |filterQuery |String |solr query voor evenementen waarvoor de ticketsalecoupon geldig is |