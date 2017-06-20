---
---

# Reservatieinfo

Een reservatielink kan meegestuurd worden onder ``` //event/media/file ```
Voeg in de node ``` <mediatype>reservations</mediatype> ``` toe om een rechtstreekse ticketinglink toe te voegen aan het aanbod.

## Voorbeeld

~~~ xml
<media>
<file main="true">
<filename>img6191.jpg</filename>
<filetype>jpeg</filetype>
<hlink>
http://www.concertgebouw.be/content/cache/originals/img6191.jpg
</hlink>
<mediatype>photo</mediatype>
</file>
<file>
<hlink>http://www.concertgebouw.be/event/detail/1971</hlink>
<mediatype>reservations</mediatype>
</file>
</media>
~~~ 
