---
---

# Card entiteit

| **Parameter** | **Type** | **Beschrijving** |
| city | String | gemeente van de uitpas |
| uitpasNumber | String | nummer van de uitpas |
| cardSystemId | Integer | ID van het kaartsysteem van deze kaart |
| kansenpas | boolean | true indien het een uitpas is voor een pashouder met kansenstatuut |
| status | LOCAL_STOCK, ACTIVE, DELETED, STOCK, PROVISIONED, SENT_TO_BALIE of BLOCKED | huidige status van de uitpas |
| cardType | CARD, STICKER, KEYRING | type van de uitpas |
| cardSystem | CardSystem entiteit | id en naam van het kaartsysteem waar de kaart aan toebehoort |