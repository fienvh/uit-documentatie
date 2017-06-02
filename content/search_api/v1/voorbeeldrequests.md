---
---

# Voorbeeldrequests

Alle recente evenementen en activiteiten: http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C

Alle evenementen in de regio "Provincie Antwerpen": http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&regio=Provincie%20Antwerpen

Alle evenementen in de regio "Provincie Antwerpen" die morgen plaatsvinden: http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&regio=Provincie%20Antwerpen&datetype=tomorrow

Alle evenementen in de regio "Provincie Antwerpen" die morgen plaatsvinden van het type "Muziek": http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&regio=Provincie%20Antwerpen&datetype=tomorrow&heading=Muziek

Alle eventen in de regio "Provincie Antwerpen" die morgen plaatsvinden van het type "Tentoonstellingen" - beantwoord als JSON response: http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&regio=Provincie%20Antwerpen&datetype=tomorrow&heading=7&format=json


Om een "detailweergave" op te vragen voor één evenement (eventueel moet je de UUID hieronder vervangen door een ID van een actueel evenement, je kan een dergelijke id kopiëren uit één van de bovenstaande requests): http://build.uitdatabank.be/api/event/64d16e69-7b86-4236-b1fa-34d3d3a111d0?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C

Full text-query ("pop"): http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&q=pop

Alle evenementen die na een bepaalde datum verwijderd werden: http://build.uitdatabank.be/api/events/xmlview?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&deletedsince=2013-09-01

Alle evenementen met een Franse vertaling: http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&lng=fr
