---
---

# PassHolderCardSystemLink entiteit



|| | | |
|currentCard| Card| huidige uitpas van de pashouder| |
|lastActivationMailNumber| int| ?| |
|status| String| Status binnen het kaartsysteem (ACTIVE, BLOCKED)| |
|emailPreference| NO\_MAILS, NOTIFICATION\_MAILS of ALL\_MAILS| NO\_MAILS indien de pashouder geen mails wenst te ontvangen, NOTIFICATION\_MAILS indien de pashouder geen herrinneringmails wenst te ontvangen| |
|smsPreference| NO\_SMS, NOTIFICATION\_SMS of ALL\_SMS| NO\_SMS indien de pashouder geen sms’jes wenst te ontvangen, NOTIFICATION\_SMS indien de pashouder geen herrinneringssms’jes wenst te ontvangen| |
|kansenStatuutEndDate| Date| einddatum van het kansenstatuut indien het een pashouder met kansenstatuut betreft| |
|kansenStatuut| boolean| true indien pashouder met kansenstatuut| |
|kansenStatuutExpired| boolean| true indien kansenstatuut vervallen| |
|kansenStatuutInGracePeriod| boolean| true indien kansenstatuut vervallen, maar nog in de ‘grace-period’||

