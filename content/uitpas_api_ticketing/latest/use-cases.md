---
---

# Use cases

- **Registratie van de pashouder** 
Belangrijk is dat UiTPAS het gebruik van de e-id gegevens aanmoedigt en dat er grote aandacht aan UX dient besteed te worden. Het wordt in de regel afgeraden om de registratie binnen een puur kassasysteem op te nemen. 
Verplichte velden: UiTPASnummer, Naam, Voornaam, INSZ, geboortedatum, postalCode, city, 
- **Pashouder laten inchecken (punt sparen) op een event**
De uitpas applicatie bepaalt de beperkingen op maximum aantal checkins per event. 
- **Pashouder een kansentarief toekennen**
Hierbij dient rekening te worden gehouden met een reeks verschillende mogelijkheden zoals prijsdifferentiatie en verschillende kortingstarieven waar de pashouder aanspraak op kan maken en de volumebeperkingen op ticketverkoop per event. De uitpas applicatie bepaalt de verschillende geldige tarieven voor het event in kwestie obv uitpasnummer en geeft deze terug in de API respons. Het is dus nooit de ticketing applicatie zelf die tarieven berekent. 
- **Pashouder een voordeel laten omruilen**


## Te doorlopen stappen

1. Baliemedewerker gebruikt ticketing applicatie 
2. Baliemedewerker selecteert event*
3. Baliemedewerker scant UiTPAS*
4. Baliemedewerker ziet pashouderinfo, ziet prijs voor de pashouder en eventueel de reden dat kansentarief niet van toepassing is
5. baliemedewerker voert acties door

*: 2 en 3 kunnen in omgekeerde volgorde, naargelang de workflow van de ticketing applicatie

