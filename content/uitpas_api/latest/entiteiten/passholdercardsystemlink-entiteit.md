---
---

# PassHolderCardSystemLink entiteit

| **Parameter** | **Type** | **Beschrijving** |
| currentCard | Card | huidige uitpas van de pashouder |
| lastActivationMailNumber | int | ? |
| status | String | Status binnen het kaartsysteem (ACTIVE, BLOCKED) |
| emailPreference | NO_MAILS, NOTIFICATION_MAILS of ALL_MAILS | NO_MAILS indien de pashouder geen mails wenst te ontvangen, NOTIFICATION_MAILS indien de pashouder geen herrinneringmails wenst te ontvangen |
| smsPreference | NO_SMS, NOTIFICATION_SMS of ALL_SMS | NO_SMS indien de pashouder geen sms’jes wenst te ontvangen, NOTIFICATION_SMS indien de pashouder geen herrinneringssms’jes wenst te ontvangen |
| kansenStatuutEndDate | Date | einddatum van het kansenstatuut indien het een pashouder met kansenstatuut betreft |
| kansenStatuut | boolean | true indien pashouder met kansenstatuut |
| kansenStatuutExpired | boolean | true indien kansenstatuut vervallen |
| kansenStatuutInGracePeriod | boolean | true indien kansenstatuut vervallen, maar nog in de ‘grace-period’ |