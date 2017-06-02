---
---

# Methodes om lijsten op te vragen

<h2 class="rteleft">
	<a href="#1">Constructie query</a></h2>
<h2 class="rteleft">
	<a href="#2">Methods</a></h2>
<h2 class="rteleft">
	<a href="#3">Input parameters</a></h2>
<h3 class="rteleft">
	&nbsp;&nbsp; &nbsp;<a href="#4">Events</a></h3>
<h3 class="rteleft">
	&nbsp;&nbsp; &nbsp;<a href="#5">Actors</a></h3>
<h3 class="rteleft">
	&nbsp;&nbsp; &nbsp;<a href="#6">Productions</a></h3>
<h3 class="rteleft">
	&nbsp;&nbsp; &nbsp;<a href="#7">Parameters die de output wijzigen</a></h3>
<ul type="disc"></ul><p class="rteleft">&nbsp;</p>
<h1 class="rteleft">
	<a name="1" id="1"></a> Constructie query</h1>
<p class="rteleft">Om lijsten te kunnen opvragen met de UiTdatabank Search API moet je drie zaken opgeven:</p>
<p class="rteleft"><span style="font-weight: bold;">1) <span style="text-decoration: underline;">De '<span style="color: rgb(199, 21, 133);">collection</span>' waarin moet gezocht worden</span></span>. Er zijn drie mogelijkheden: events, actors of productions. Naar gelang de collectie krijg je dus lijsten van evenementen, actoren (locaties, organisatoren en/of performers) of producties.</p>
<p><span style="font-weight: bold;">2) <span style="text-decoration: underline;">De '<span style="color: rgb(50, 205, 50);">method</span>' waarmee je wil werken</span></span>: de manier waarop de opgevraagde lijst zal worden voorgesteld. Er zijn 3 methods: search, xmlview of report, elk met hun eigen data outputtype (zie verder).</p>
<p><span style="font-weight: bold;">3) <span style="text-decoration: underline;">De '<span style="color: rgb(30, 144, 255);">inputparameter(s)</span></span></span><span style="text-decoration: underline; font-weight: bold;">'</span>: de parameters waarmee je de geselecteerde collectie wil gaan bevragen. Dit kan een vrije zoekterm zijn, een categorisatiefacet, een definitie van een aantal zoekresultaten, etc. Sommige parameters kunnen worden gebruikt als negatie of worden gecombineerd (zie verder).</p>
<p>Dus: om zoekopdrachten te lanceren selecteer je een outputtype (<span style="color: rgb(50, 205, 50); font-weight: bold;">method</span>) en stuur je één of meerdere vragen (<span style="color: rgb(30, 144, 255); font-weight: bold;">input parameters</span>) naar de verzameling 'events', 'actors' of 'productions' (<span style="color: rgb(199, 21, 133); font-weight: bold;">collection</span>). Je moet deze definiëren in de URL build.uitdatabank.be/api/<span style="color: rgb(199, 21, 133); font-weight: bold;">collection</span>/<span style="color: rgb(50, 205, 50); font-weight: bold;">method</span>?.</p>
<p>Bijvoorbeeld:</p>
<p>- om een <span style="color: rgb(30, 144, 255);"><span style="font-weight: bold;">full text query</span></span> binnen de <span style="color: rgb(50, 205, 50); font-weight: bold;">search method</span> in de <span style="color: rgb(199, 21, 133); font-weight: bold;">events collection</span> te lanceren stuur je volgende request:<br><a href="http://build.uitdatabank.be/api/events/search?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&amp;q=opera" target="_blank">http://build.uitdatabank.be/api/<span style="color: rgb(199, 21, 133); font-weight: bold;">events</span>/<span style="color: rgb(50, 205, 50); font-weight: bold;">search</span>?key=45A4F389-EC2A-4B75-B006-78B55C8260FB<span style="color: rgb(30, 144, 255); font-weight: bold;">&amp;q=opera</span></a></p>
<p>- om<span style="color: rgb(30, 144, 255);"><span style="font-weight: bold;"> items van het type 'bibliotheek'</span></span> binnen de <span style="color: rgb(50, 205, 50); font-weight: bold;">xmlview method</span> in de <span style="color: rgb(199, 21, 133); font-weight: bold;">actors collection </span>op te halen stuur je volgende request:<br><a href="http://build.uitdatabank.be/api/actors/xmlview?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&amp;locationtype=8.9.1.0.0" target="_blank">http://build.uitdatabank.be/api/<span style="color: rgb(199, 21, 133); font-weight: bold;">actors</span>/<span style="color: rgb(50, 205, 50); font-weight: bold;">xmlview</span>?key=45A4F389-EC2A-4B75-B006-78B55C8260FB<span style="color: rgb(30, 144, 255); font-weight: bold;">&amp;locationtype=8.9.1.0.0</span></a></p>
<h1>
	<a name="2" id="2"></a>Methods</h1>
<p class="emphasize rteleft">Er zijn drie methods voorhanden om lijsten op te vragen: search, xmlview en report.</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="width: 478.2pt; border-collapse: collapse;" width="638"><tbody><tr style=""><td rowspan="2" style="width: 54.65pt; padding: 0cm 5.4pt;" width="73">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">Naam</span></p>
</td>
<td rowspan="2" style="width: 227.2pt; padding: 0cm 5.4pt;" width="303">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">Beschrijving</span></p>
</td>
<td colspan="3" style="width: 196.35pt; padding: 0cm 5.4pt;" width="262">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">Toepasbaar op</span></p>
</td>
</tr><tr style=""><td style="width: 69pt; padding: 0cm 5.4pt;" width="92">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">actors</span></p>
</td>
<td style="width: 49.45pt; padding: 0cm 5.4pt;" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">events</span></p>
</td>
<td style="width: 77.9pt; padding: 0cm 5.4pt;" width="104">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">productions</span></p>
</td>
</tr><tr style=""><td style="width: 54.65pt; padding: 0cm 5.4pt;" valign="top" width="73">
<p class="MsoNormal"><span lang="EN-US" style="" xml:lang="EN-US">report</span></p>
</td>
<td style="width: 227.2pt; padding: 0cm 5.4pt;" valign="top" width="303">
<p class="MsoNormal"><span lang="NL-BE" xml:lang="NL-BE">geeft aggregaten terug (totalen van events die plaatsvinden in een regio/gemeente, die plaatsvinden op een bepaald tijdstip)</span></p>
</td>
<td style="width: 69pt; padding: 0cm 5.4pt;" width="92">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-weight: bold;">-</span></p>
</td>
<td style="width: 49.45pt; padding: 0cm 5.4pt;" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-weight: bold;">X</span></p>
</td>
<td style="width: 77.9pt; padding: 0cm 5.4pt;" width="104">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-weight: bold;">X</span></p>
</td>
</tr><tr style=""><td style="width: 54.65pt; padding: 0cm 5.4pt;" valign="top" width="73">
<p class="MsoNormal"><span style="">search</span></p>
</td>
<td style="width: 227.2pt; padding: 0cm 5.4pt;" valign="top" width="303">
<p class="MsoNormal"><span lang="NL-BE" xml:lang="NL-BE">hierboven gebruikt, geeft de "lijst representatie" terug van een object, een lijst van objectsamenvattingen. Deze method wordt bijvoorbeeld gebruikt op webpagina's met zoekresultaten en bevat titel, korte beschrijving, thumbnail enz.</span></p>
</td>
<td style="width: 69pt; padding: 0cm 5.4pt;" width="92">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span></p>
</td>
<td style="width: 49.45pt; padding: 0cm 5.4pt;" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span></p>
</td>
<td style="width: 77.9pt; padding: 0cm 5.4pt;" width="104">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span></p>
</td>
</tr><tr style=""><td style="width: 54.65pt; padding: 0cm 5.4pt;" valign="top" width="73">
<p class="MsoNormal"><span lang="EN-US" style="" xml:lang="EN-US">xmlview</span></p>
</td>
<td style="width: 227.2pt; padding: 0cm 5.4pt;" valign="top" width="303">
<p class="MsoNormal"><span lang="NL-BE" xml:lang="NL-BE">dit is een method met een trage (!) response aangezien ze een lijst van objecten teruggeeft met alle attributen voor elk object. xmlview wordt typisch gebruikt voor database synchronisatie. We adviseren sterk tegen gebruik van deze method en tegen database synchronisatie omdat je dan onze zoekmechanismen moet heruitvinden.</span></p>
</td>
<td style="width: 69pt; padding: 0cm 5.4pt;" width="92">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">-</span></p>
</td>
<td style="width: 49.45pt; padding: 0cm 5.4pt;" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span></p>
</td>
<td style="width: 77.9pt; padding: 0cm 5.4pt;" width="104">
<p align="center" class="MsoNormal" style="text-align: center;"><span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span></p>
</td>
</tr></tbody></table><h3 class="rteleft">
	&nbsp;</h3>
<h1 class="rteleft">
	<a name="3" id="3"></a>Input parameters</h1>
<p class="emphasize rteleft">Onderstaande tabel biedt een overzicht van alle inputparameters die kunnen worden aangesproken. Waar sprake is van parameters die categorisatiefacetten bevragen gaat het steeds om de parameters en ID's zoals terug te vinden op <a href="http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL/categories/2.0/categorisation.xml" target="_blank">http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL/categories/2.0/categorisation.xml</a></p>
<h1 class="rteleft">
	<a name="4" id="4"></a>Events</h1>
<p class="emphasize rteleft">ZOEKEN OP WIE / WAT</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="659"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="162">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="255">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="152">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="200">
<p class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voobeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">q</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal" style=""><span style="font-size: 8pt;">Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen:</span></p>
<ul type="disc"><li class="MsoNormal" style="">
						<span style="font-size: 8pt;">titel</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">korte beschrijving</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">lange omschrijving</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">locatienaam</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">stad</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">uitvoerders</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">categorisatiefacetten</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">ID</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">organisator</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">tags en markers.</span></li>
</ul><p class="MsoNormal" style=""><span style="font-size: 8pt;">Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar:</span></p>
<ul type="disc"><li class="MsoNormal" style="">
						<span style="font-size: 8pt;">OR</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">Dubbele aanhalingstekens voor exacte zoekopdrachten</span></li>
</ul><p class="MsoNormal">&nbsp;</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td align="left" style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="200">
<p align="left" class="MsoNormal style1" style="text-align: left;">q=Puppet Shadows</p>
<p align="left" class="MsoNormal style1" style="text-align: left;">q="Last shadow puppets"</p>
<p align="left" class="MsoNormal style1" style="text-align: left;">q=Last OR shadow OR puppets</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">agebetween</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span style="font-size: 8pt;">Minimum leeftijd tussen deze twee waarden (range splitsen met "..")</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number..Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">agebetween=3..6</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">age</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Minimum leeftijd</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">age=18</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">isfree</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Gratis events</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">isfree=true</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">permanent</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span style="font-size: 8pt;">Permanente events (vb. vaste collecties, monumenten, etc.)</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">permanent=true</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">temporary</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span style="font-size: 8pt;">Tijdelijke events (met start- en einddatum)</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">temporary=true</span></p>
</td>
</tr><tr><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p><span style="font-size:11px;">lng</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p><span style="font-size:11px;">Vertalingen van events opzoeken</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p><span style="font-size:11px;">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p><span style="font-size:11px;">lng=fr</span></p>
<p>					lng=en</p>
<p><span style="font-size:11px;">lng=de</span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="656"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="143">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">k</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Keywords en tags<br>
					Om een keyword uit te sluiten, voeg je een "!" toe. </span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">k=a-kaart<br>
					k=!a-kaart</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">locationkeyword</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;">Keywords toegevoegd aan de actorfiche van de locatie</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">locationkeyword=UiTinVlaanderen filmlocatie </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">organiserkeyword</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;">Keywords toegevoegd aan de actorfiche van de organisator</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">organiserkeyword=cavaria</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">location</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Alle evenementen die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query.<br>
					Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">GUID or Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">location=Kunstencentrum Vooruit<br>
					location=!CC De Spil </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">organiser</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;">Alle evenementen die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.<br>
					Om een organisatie uit te sluiten, voeg je een "!" toe </span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">GUID or Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">organiser=15298A88-D02D-FF59-172893158E752D90<br>
					organiser=!Bou8 </span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP CATEGORIEËN</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="654"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">eventtype</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">bijv. concert, film, tentoonstelling<br>
					Om een bepaald type uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label.<br>
					In je agenda kan je de types gebruiken voor de verfijningen. Voor de hoofdnavigatie volstaan de headings (zie verder).<br></span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">(x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">type=0.10.0.0.0;0.11.0.0.0<br>
					type=!0.10.0.0.0 </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">thema </span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek.<br>
					Om een bepaald thema uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label.</span></span><br><span style="font-size: 8pt;"><span class="style1">In je agenda kan je de thema's gebruiken voor de verfijningen. Voor de hoofdnavigatie volstaan de headings (zie verder).</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">(x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">thema=1.0.1.0.0;1.2.2.0.0<br>
					thema=muziek </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">targetaudience</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Tot welke doelgroep richt men zich met het aanbod?<br>
					Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">targetaudience=2.1.5.0.0</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">facility</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz.<br>
					Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">facility=3.5.0.0.0</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">publicscope</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Tot welk publiek / pers richt men zich met het evenement: lokaal, regionaal, nationaal,...<br>
					Om bepaalde scopes uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">publicscope=6.1.0.0.0</span><br><span lang="EN-US" style="font-size: 8pt; font-weight: bold;" xml:lang="EN-US"> </span></p>
<p>&nbsp;</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">locationtype</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">bijv. kunstencentrum, bibliotheek,...<br>
					Om een bepaald locatietype uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">locationtype=8.6.0.0.0</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">heading</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text ( Number)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">heading=14;15;16;17;18;19;20<br>
					heading=muziek;film</span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP KALENDERINFORMATIE</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="652"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="139">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">daterange</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;">Alle evenementen die tussen een bepaalde start- en een bepaalde einddatum plaatsvinden. </span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date..Date (yyyy-m-d..yyyy-m-dTH.m)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="139">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">daterange=2010-04-21..2010-04-28</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">date</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span class="style1">Alle evenementen die plaatsvinden op één of meerdere tijdstippen </span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date (yyyy-m-d; yyyy-m-dTH.m)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="139">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">date=2008-09-19;2008-09-20;2008-09-21</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">datetype</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">(d.i. de snelste methode) alle evenementen die tijdens een vastgestelde periode plaatsvinden.</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (today, tomorrow, thisweek, nextweekend, thismonth, next30days, next3months, next6months, next12months)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="139">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">datetype=today</span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP GEOGRAFISCHE INFORMATIE</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">zip</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Postcode van de locatie</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">zip=2020</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">city</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Stad van de locatie</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">city=Antwerpen</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">cityid</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">CityID van de stad van locatie</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (0000_CITY)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">cityid=2520_RANST</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">regio</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">ID of naam van een regio</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text or Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">regio=32<br>
					regio=Provincie Limburg </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">latlng</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">GIS-coördinaten van een item. Je kan alle evenementen opvragen die plaatsvinden in een radius rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius.</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Decimal;Decimal!Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal style1" style="text-align: left;">latlng=51.022350;4.547600!5km</p>
</td>
</tr></tbody></table><p></p>
<p class="emphasize rteleft">ZOEKEN OP METADATA</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">createdby</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">UiTdatabank usernaam die het item heeft aangemaakt</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">createdby=syximport</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">changedsince</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.<br>
					Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date (yyyy-m-d; yyyy-m-dTH.m)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">changedsince=2010-01-19T20.00</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">hasimage</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Alle evenementen met één of meerdere afbeeldingen.</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">hasimage=true</p>
</td>
</tr></tbody></table><p>&nbsp;</p>
<h1 class="rteleft">
	<a name="5" id="5"></a>Actors</h1>
<p class="emphasize rteleft">ZOEKEN OP WIE / WAT</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="659"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="162">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="255">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="152">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="200">
<p class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voobeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">q</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal" style=""><span style="font-size: 8pt;">Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen:</span></p>
<ul type="disc"><li class="MsoNormal" style="">
						<span style="font-size: 8pt;">titel</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">korte beschrijving</span></li>
<li class="style1">
						organisatietype</li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">ID</span></li>
</ul><p class="MsoNormal" style=""><span style="font-size: 8pt;">Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar:</span></p>
<ul type="disc"><li class="MsoNormal" style="">
						<span style="font-size: 8pt;">OR</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">Dubbele aanhalingstekens voor exacte zoekopdrachten</span></li>
</ul><p class="MsoNormal">&nbsp;</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td align="left" style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="200">
<p align="left" class="MsoNormal style1" style="text-align: left;">q=Kunstencentrum Vooruit</p>
<p align="left" class="MsoNormal style1" style="text-align: left;">q="Kunstencentrum Vooruit"</p>
<p align="left" class="MsoNormal style1" style="text-align: left;">q=Kunstencentrum OR Vooruit</p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="656"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="143">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">k</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US"><span class="style1">Keywords toegevoegd aan de actorfiche van de locatie. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">k=UiTinVlaanderen filmlocatie </span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP CATEGORIEËN</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="654"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">type</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">bijv. kunstencentrum, bibliotheek,...<br>
					Om een bepaald locatietype uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">locationtype=8.6.0.0.0</span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP GEOGRAFISCHE INFORMATIE</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">zip</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Postcode van de locatie</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">zip=2020</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">city</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Stad van de locatie</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">city=Antwerpen</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">cityid</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">CityID van de stad van locatie</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (0000_CITY)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">cityid=2520_RANST</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">regio</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">ID of naam van een regio</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text or Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">regio=32<br>
					regio=Provincie Limburg </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">latlng</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">GIS-coördinaten van een item. Je kan alle locaties opvragen die zich in een radius situeren rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius.</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Decimal;Decimal!Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal style1" style="text-align: left;">latlng=51.022350;4.547600!5km</p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP METADATA</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">changedsince</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.<br>
					Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date (yyyy-m-d; yyyy-m-dTH.m)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="66">
<p align="center" class="style1" style="text-align: left;">changedsince=2010-01-19T20.00</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">hasimage</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Alle evenementen met één of meerdere afbeeldingen.</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">hasimage=true</p>
</td>
</tr></tbody></table><h1 class="rteleft">
	<a name="6" id="6"></a>Production</h1>
<p class="emphasize rteleft">ZOEKEN OP WIE / WAT</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="659"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="162">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="255">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="152">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="200">
<p class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voobeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">q</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal" style=""><span style="font-size: 8pt;">Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen:</span></p>
<ul type="disc"><li class="MsoNormal" style="">
						<span style="font-size: 8pt;">titel</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">korte beschrijving</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">uitvoerders</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">categorisatiefacetten</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">ID</span></li>
</ul><p class="MsoNormal" style=""><span style="font-size: 8pt;">Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar:</span></p>
<ul type="disc"><li class="MsoNormal" style="">
						<span style="font-size: 8pt;">OR</span></li>
<li class="MsoNormal" style="">
						<span style="font-size: 8pt;">Dubbele aanhalingstekens voor exacte zoekopdrachten</span></li>
</ul><p class="MsoNormal">&nbsp;</p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td align="left" style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="200">
<p align="left" class="MsoNormal style1" style="text-align: left;">q=Puppet Shadows</p>
<p align="left" class="MsoNormal style1" style="text-align: left;">q="Last shadow puppets"</p>
<p align="left" class="MsoNormal style1" style="text-align: left;">q=Last OR shadow OR puppets</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">agebetween</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span style="font-size: 8pt;">Minimum leeftijd tussen deze twee waarden (range splitsen met "..")</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number..Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">agebetween=3..6</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">age</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Minimum leeftijd</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">age=18</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">isfree</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Gratis events</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">isfree=true</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">permanent</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span style="font-size: 8pt;">Permanente events (vb. vaste collecties, monumenten, etc.)</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">permanent=false</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="162">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">temporary</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="255">
<p class="MsoNormal"><span style="font-size: 8pt;">Tijdelijke events (met start- en einddatum)</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="152">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="200">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">temporary=false</span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="656"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="143">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">k</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Keywords en tags<br>
					Om een keyword uit te sluiten, voeg je een "!" toe. </span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">k=a-kaart<br>
					k=!a-kaart</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">location</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Alle producties die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query.<br>
					Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">GUID or Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">location=Kunstencentrum Vooruit<br>
					location=!CC De Spil </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">organiser</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;">Alle producties die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.<br>
					Om een organisatie uit te sluiten, voeg je een "!" toe </span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">GUID or Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="143">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">organiser=15298A88-D02D-FF59-172893158E752D90<br>
					organiser=!Bou8 </span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP CATEGORIEËN</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="654"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="146">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="230">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="137">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">eventtype</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">bijv. concert, film, tentoonstelling<br>
					Om een bepaald type uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label.<br></span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">(x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">type=0.10.0.0.0;0.11.0.0.0<br>
					type=!0.10.0.0.0 </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">thema </span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek.<br>
					Om een bepaald thema uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">(x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">thema=1.0.1.0.0;1.2.2.0.0<br>
					thema=muziek </span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">targetaudience</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Tot welke doelgroep richt men zich met het aanbod?<br>
					Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">targetaudience=2.1.5.0.0</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">facility</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz.<br>
					Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe.<br>
					Je kan zowel de ID van een categorie gebruiken als het label. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">facility=3.5.0.0.0</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="146">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">heading</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="230">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie. </span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="137">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="141">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">heading=14;15;16;17;18;19;20<br>
					heading=muziek;film</span></p>
</td>
</tr></tbody></table><p class="emphasize rteleft">ZOEKEN OP METADATA</p>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">changedsince</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Alle producties versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.<br>
					Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date (yyyy-m-d; yyyy-m-dTH.m)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="66">
<p align="center" class="style1" style="text-align: left;">changedsince=2010-01-19T20.00</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">hasimage</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;"><span class="style1">Alle evenementen met één of meerdere afbeeldingen.</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">hasimage=true</p>
</td>
</tr></tbody></table><h1 class="rteleft">
	<a name="7" id="7"></a>Parameters die de output wijzigen</h1>
<table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-collapse: collapse;" width="603"><tbody><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" width="102">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Naam parameter</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" width="169">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Beschrijving</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" width="95">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" valign="top" width="66">
<p align="center" class="MsoNormal" style="text-align: center;"><span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">format</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">Het formaat van de return. Het default response formaat is XML. Om een response in het JSON formaat te ontvangen, gebruik je format=json</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (json)</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="MsoNormal" style="text-align: left;"><span class="style1">format=json</span></p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">sort</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US"><span class="style1">Resultaten kunnen gesorteerd worden. Standaard worden de resultaten gesorteerd volgens een specifiek algoritme dat nabijheid in tijd, het publieksbereik van het event, de volledigheid/kwaliteit van de informatie en de duurtijd van het evenement in rekening neemt.</span></span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (age, title, location, city, date, created, weight, weightweek, proximity)</span> <b>Opgepast, 'proximity' werkt enkel in combinatie met 'latlng'</b>.</p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">sort=city desc</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">page</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">Resultatenpagina die moet worden getoond. Maw de huidige pagina in het totaal aan pagina's. De default waarde is 1. </span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">page=2</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">pagelength</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">Het aantal items op een resultatenpagina (default 50)</span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">pagelength=10</p>
</td>
</tr><tr style=""><td style="width: 76.3pt; padding: 0cm 5.4pt;" valign="top" width="102">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">callback</span></p>
</td>
<td style="width: 127.1pt; padding: 0cm 5.4pt;" valign="top" width="169">
<p class="MsoNormal"><span style="font-size: 8pt;">Gebruikt om json return op te vragen. In de callback parameter kan je de javascript wrapper functie opnemen die je wil hanteren.<br>
					Enkel mogelijk bij events, niet bij actors en productions. </span></p>
</td>
<td style="width: 71.35pt; padding: 0cm 5.4pt;" valign="top" width="95">
<p class="MsoNormal"><span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span></p>
</td>
<td style="width: 42.55pt; padding: 0cm 5.4pt;" width="57">
<p align="center" class="style1" style="text-align: left;">callback=resultset</p>
</td>
</tr></tbody></table><p class="rteleft">&nbsp;</p>
</div></div></div>  <div id="book-navigation-146" class="book-navigation">
    
        <div class="page-links clearfix">
              <a href="/docs/out/single-object" class="page-previous" title="Ga naar vorige pagina">‹ Individuele objecten opvragen</a>
                    <a href="/docs/uitdatabank-search-api-v1-old" class="page-up" title="Naar de bovenliggende pagina">omhoog</a>
                    <a href="/docs/out/images" class="page-next" title="Ga naar volgende pagina">Methodes om afbeeldingen op te vragen ›</a>
          </div>
    
  </div>
  </div>

  
  
</div>
Markdown

<div id="node-13" class="node node-documentation-page node-full cn-clearfix">

<div class="content cn-clearfix">

<div class="field field-name-body field-type-text-with-summary field-label-hidden">

<div class="field-items">

<div class="field-item even">

<style type="text/css"><!--/*--><![CDATA[/* ><!--*/ table tr:hover td {background-color: #ECEDE9; } .style1 {font-size: 8pt} /*--><!]]>*/</style>

## [Constructie query](#1)

## [Methods](#2)

## [Input parameters](#3)

###     [Events](#4)

###     [Actors](#5)

###     [Productions](#6)

###     [Parameters die de output wijzigen](#7)

# <a name="1" id="1"></a>Constructie query

Om lijsten te kunnen opvragen met de UiTdatabank Search API moet je drie zaken opgeven:

<span style="font-weight: bold;">1) <span style="text-decoration: underline;">De '<span style="color: rgb(199, 21, 133);">collection</span>' waarin moet gezocht worden</span></span>. Er zijn drie mogelijkheden: events, actors of productions. Naar gelang de collectie krijg je dus lijsten van evenementen, actoren (locaties, organisatoren en/of performers) of producties.

<span style="font-weight: bold;">2) <span style="text-decoration: underline;">De '<span style="color: rgb(50, 205, 50);">method</span>' waarmee je wil werken</span></span>: de manier waarop de opgevraagde lijst zal worden voorgesteld. Er zijn 3 methods: search, xmlview of report, elk met hun eigen data outputtype (zie verder).

<span style="font-weight: bold;">3) <span style="text-decoration: underline;">De '<span style="color: rgb(30, 144, 255);">inputparameter(s)</span></span></span><span style="text-decoration: underline; font-weight: bold;">'</span>: de parameters waarmee je de geselecteerde collectie wil gaan bevragen. Dit kan een vrije zoekterm zijn, een categorisatiefacet, een definitie van een aantal zoekresultaten, etc. Sommige parameters kunnen worden gebruikt als negatie of worden gecombineerd (zie verder).

Dus: om zoekopdrachten te lanceren selecteer je een outputtype (<span style="color: rgb(50, 205, 50); font-weight: bold;">method</span>) en stuur je één of meerdere vragen (<span style="color: rgb(30, 144, 255); font-weight: bold;">input parameters</span>) naar de verzameling 'events', 'actors' of 'productions' (<span style="color: rgb(199, 21, 133); font-weight: bold;">collection</span>). Je moet deze definiëren in de URL build.uitdatabank.be/api/<span style="color: rgb(199, 21, 133); font-weight: bold;">collection</span>/<span style="color: rgb(50, 205, 50); font-weight: bold;">method</span>?.

Bijvoorbeeld:

- om een <span style="color: rgb(30, 144, 255);"><span style="font-weight: bold;">full text query</span></span> binnen de <span style="color: rgb(50, 205, 50); font-weight: bold;">search method</span> in de <span style="color: rgb(199, 21, 133); font-weight: bold;">events collection</span> te lanceren stuur je volgende request:
[http://build.uitdatabank.be/api/<span style="color: rgb(199, 21, 133); font-weight: bold;">events</span>/<span style="color: rgb(50, 205, 50); font-weight: bold;">search</span>?key=45A4F389-EC2A-4B75-B006-78B55C8260FB<span style="color: rgb(30, 144, 255); font-weight: bold;">&q=opera</span>](http://build.uitdatabank.be/api/events/search?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&q=opera)

- om<span style="color: rgb(30, 144, 255);"> <span style="font-weight: bold;">items van het type 'bibliotheek'</span></span> binnen de <span style="color: rgb(50, 205, 50); font-weight: bold;">xmlview method</span> in de <span style="color: rgb(199, 21, 133); font-weight: bold;">actors collection</span> op te halen stuur je volgende request:
[http://build.uitdatabank.be/api/<span style="color: rgb(199, 21, 133); font-weight: bold;">actors</span>/<span style="color: rgb(50, 205, 50); font-weight: bold;">xmlview</span>?key=45A4F389-EC2A-4B75-B006-78B55C8260FB<span style="color: rgb(30, 144, 255); font-weight: bold;">&locationtype=8.9.1.0.0</span>](http://build.uitdatabank.be/api/actors/xmlview?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&locationtype=8.9.1.0.0)

# <a name="2" id="2"></a>Methods

Er zijn drie methods voorhanden om lijsten op te vragen: search, xmlview en report.

| 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">Naam</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">Beschrijving</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">Toepasbaar op</span>

 |
| 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">actors</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">events</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">productions</span>

 |
| 

<span lang="EN-US" style="" xml:lang="EN-US">report</span>

 | 

<span lang="NL-BE" xml:lang="NL-BE">geeft aggregaten terug (totalen van events die plaatsvinden in een regio/gemeente, die plaatsvinden op een bepaald tijdstip)</span>

 | 

<span style="font-weight: bold;">-</span>

 | 

<span style="font-weight: bold;">X</span>

 | 

<span style="font-weight: bold;">X</span>

 |
| 

<span style="">search</span>

 | 

<span lang="NL-BE" xml:lang="NL-BE">hierboven gebruikt, geeft de "lijst representatie" terug van een object, een lijst van objectsamenvattingen. Deze method wordt bijvoorbeeld gebruikt op webpagina's met zoekresultaten en bevat titel, korte beschrijving, thumbnail enz.</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span>

 |
| 

<span lang="EN-US" style="" xml:lang="EN-US">xmlview</span>

 | 

<span lang="NL-BE" xml:lang="NL-BE">dit is een method met een trage (!) response aangezien ze een lijst van objecten teruggeeft met alle attributen voor elk object. xmlview wordt typisch gebruikt voor database synchronisatie. We adviseren sterk tegen gebruik van deze method en tegen database synchronisatie omdat je dan onze zoekmechanismen moet heruitvinden.</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">-</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span>

 | 

<span lang="EN-US" style="font-weight: bold;" xml:lang="EN-US">X</span>

 |

# <a name="3" id="3"></a>Input parameters

Onderstaande tabel biedt een overzicht van alle inputparameters die kunnen worden aangesproken. Waar sprake is van parameters die categorisatiefacetten bevragen gaat het steeds om de parameters en ID's zoals terug te vinden op [http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL/categories/2.0/categorisation.xml](http://www.cultuurdatabank.com/XMLSchema/CdbXSD/3.1/FINAL/categories/2.0/categorisation.xml)

# <a name="4" id="4"></a>Events

ZOEKEN OP WIE / WAT

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voobeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">q</span>

 | 

<span style="font-size: 8pt;">Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen:</span>

*   <span style="font-size: 8pt;">titel</span>
*   <span style="font-size: 8pt;">korte beschrijving</span>
*   <span style="font-size: 8pt;">lange omschrijving</span>
*   <span style="font-size: 8pt;">locatienaam</span>
*   <span style="font-size: 8pt;">stad</span>
*   <span style="font-size: 8pt;">uitvoerders</span>
*   <span style="font-size: 8pt;">categorisatiefacetten</span>
*   <span style="font-size: 8pt;">ID</span>
*   <span style="font-size: 8pt;">organisator</span>
*   <span style="font-size: 8pt;">tags en markers.</span>

<span style="font-size: 8pt;">Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar:</span>

*   <span style="font-size: 8pt;">OR</span>
*   <span style="font-size: 8pt;">Dubbele aanhalingstekens voor exacte zoekopdrachten</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

q=Puppet Shadows

q="Last shadow puppets"

q=Last OR shadow OR puppets

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">agebetween</span>

 | 

<span style="font-size: 8pt;">Minimum leeftijd tussen deze twee waarden (range splitsen met "..")</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number..Number</span>

 | 

<span class="style1">agebetween=3..6</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">age</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Minimum leeftijd</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span>

 | 

<span class="style1">age=18</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">isfree</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Gratis events</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

<span class="style1">isfree=true</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">permanent</span>

 | 

<span style="font-size: 8pt;">Permanente events (vb. vaste collecties, monumenten, etc.)</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

<span class="style1">permanent=true</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">temporary</span>

 | 

<span style="font-size: 8pt;">Tijdelijke events (met start- en einddatum)</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

<span class="style1">temporary=true</span>

 |
| 

<span style="font-size:11px;">lng</span>

 | 

<span style="font-size:11px;">Vertalingen van events opzoeken</span>

 | 

<span style="font-size:11px;">Text</span>

 | 

<span style="font-size:11px;">lng=fr</span>

lng=en

<span style="font-size:11px;">lng=de</span>

 |

ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">k</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Keywords en tags
Om een keyword uit te sluiten, voeg je een "!" toe.</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

<span class="style1">k=a-kaart
k=!a-kaart</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">locationkeyword</span>

 | 

<span style="font-size: 8pt;">Keywords toegevoegd aan de actorfiche van de locatie</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

<span class="style1">locationkeyword=UiTinVlaanderen filmlocatie</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">organiserkeyword</span>

 | 

<span style="font-size: 8pt;">Keywords toegevoegd aan de actorfiche van de organisator</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

<span class="style1">organiserkeyword=cavaria</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">location</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Alle evenementen die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query.
Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">GUID or Text</span>

 | 

<span class="style1">location=Kunstencentrum Vooruit
location=!CC De Spil</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">organiser</span>

 | 

<span style="font-size: 8pt;">Alle evenementen die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.
Om een organisatie uit te sluiten, voeg je een "!" toe</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">GUID or Text</span>

 | 

<span class="style1">organiser=15298A88-D02D-FF59-172893158E752D90
organiser=!Bou8</span>

 |

ZOEKEN OP CATEGORIEËN

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">eventtype</span>

 | 

<span style="font-size: 8pt;"><span class="style1">bijv. concert, film, tentoonstelling
Om een bepaald type uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.
In je agenda kan je de types gebruiken voor de verfijningen. Voor de hoofdnavigatie volstaan de headings (zie verder).
</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">(x.x.x.x.x)</span>

 | 

<span class="style1">type=0.10.0.0.0;0.11.0.0.0
type=!0.10.0.0.0</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">thema</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek.
Om een bepaald thema uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>
<span style="font-size: 8pt;"><span class="style1">In je agenda kan je de thema's gebruiken voor de verfijningen. Voor de hoofdnavigatie volstaan de headings (zie verder).</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">(x.x.x.x.x)</span>

 | 

<span class="style1">thema=1.0.1.0.0;1.2.2.0.0
thema=muziek</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">targetaudience</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Tot welke doelgroep richt men zich met het aanbod?
Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span>

 | 

<span class="style1">targetaudience=2.1.5.0.0</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">facility</span>

 | 

<span style="font-size: 8pt;"><span class="style1">bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz.
Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span>

 | 

<span class="style1">facility=3.5.0.0.0</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">publicscope</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Tot welk publiek / pers richt men zich met het evenement: lokaal, regionaal, nationaal,...
Om bepaalde scopes uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">publicscope=6.1.0.0.0</span>
<span lang="EN-US" style="font-size: 8pt; font-weight: bold;" xml:lang="EN-US"></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">locationtype</span>

 | 

<span style="font-size: 8pt;"><span class="style1">bijv. kunstencentrum, bibliotheek,...
Om een bepaald locatietype uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span>

 | 

<span class="style1">locationtype=8.6.0.0.0</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">heading</span>

 | 

<span style="font-size: 8pt;"><span class="style1">De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text ( Number)</span>

 | 

<span class="style1">heading=14;15;16;17;18;19;20
heading=muziek;film</span>

 |

ZOEKEN OP KALENDERINFORMATIE

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">daterange</span>

 | 

<span style="font-size: 8pt;">Alle evenementen die tussen een bepaalde start- en een bepaalde einddatum plaatsvinden.</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date..Date (yyyy-m-d..yyyy-m-dTH.m)</span>

 | 

<span class="style1">daterange=2010-04-21..2010-04-28</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">date</span>

 | 

<span class="style1">Alle evenementen die plaatsvinden op één of meerdere tijdstippen</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date (yyyy-m-d; yyyy-m-dTH.m)</span>

 | 

<span class="style1">date=2008-09-19;2008-09-20;2008-09-21</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">datetype</span>

 | 

<span style="font-size: 8pt;"><span class="style1">(d.i. de snelste methode) alle evenementen die tijdens een vastgestelde periode plaatsvinden.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (today, tomorrow, thisweek, nextweekend, thismonth, next30days, next3months, next6months, next12months)</span>

 | 

<span class="style1">datetype=today</span>

 |

ZOEKEN OP GEOGRAFISCHE INFORMATIE

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">zip</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Postcode van de locatie</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span>

 | 

<span class="style1">zip=2020</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">city</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Stad van de locatie</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

<span class="style1">city=Antwerpen</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">cityid</span>

 | 

<span style="font-size: 8pt;">CityID van de stad van locatie</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (0000_CITY)</span>

 | 

<span class="style1">cityid=2520_RANST</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">regio</span>

 | 

<span style="font-size: 8pt;">ID of naam van een regio</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text or Number</span>

 | 

<span class="style1">regio=32
regio=Provincie Limburg</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">latlng</span>

 | 

<span style="font-size: 8pt;">GIS-coördinaten van een item. Je kan alle evenementen opvragen die plaatsvinden in een radius rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius.</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Decimal;Decimal!Number</span>

 | 

latlng=51.022350;4.547600!5km

 |

ZOEKEN OP METADATA

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">createdby</span>

 | 

<span style="font-size: 8pt;">UiTdatabank usernaam die het item heeft aangemaakt</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

<span class="style1">createdby=syximport</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">changedsince</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date (yyyy-m-d; yyyy-m-dTH.m)</span>

 | 

changedsince=2010-01-19T20.00

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">hasimage</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Alle evenementen met één of meerdere afbeeldingen.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

hasimage=true

 |

# <a name="5" id="5"></a>Actors

ZOEKEN OP WIE / WAT

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voobeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">q</span>

 | 

<span style="font-size: 8pt;">Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen:</span>

*   <span style="font-size: 8pt;">titel</span>
*   <span style="font-size: 8pt;">korte beschrijving</span>
*   organisatietype
*   <span style="font-size: 8pt;">ID</span>

<span style="font-size: 8pt;">Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar:</span>

*   <span style="font-size: 8pt;">OR</span>
*   <span style="font-size: 8pt;">Dubbele aanhalingstekens voor exacte zoekopdrachten</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

q=Kunstencentrum Vooruit

q="Kunstencentrum Vooruit"

q=Kunstencentrum OR Vooruit

 |

ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">k</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US"><span class="style1">Keywords toegevoegd aan de actorfiche van de locatie.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

<span class="style1">k=UiTinVlaanderen filmlocatie</span>

 |

ZOEKEN OP CATEGORIEËN

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">type</span>

 | 

<span style="font-size: 8pt;"><span class="style1">bijv. kunstencentrum, bibliotheek,...
Om een bepaald locatietype uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span>

 | 

<span class="style1">locationtype=8.6.0.0.0</span>

 |

ZOEKEN OP GEOGRAFISCHE INFORMATIE

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">zip</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Postcode van de locatie</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span>

 | 

<span class="style1">zip=2020</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">city</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Stad van de locatie</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

<span class="style1">city=Antwerpen</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">cityid</span>

 | 

<span style="font-size: 8pt;">CityID van de stad van locatie</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (0000_CITY)</span>

 | 

<span class="style1">cityid=2520_RANST</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">regio</span>

 | 

<span style="font-size: 8pt;">ID of naam van een regio</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text or Number</span>

 | 

<span class="style1">regio=32
regio=Provincie Limburg</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">latlng</span>

 | 

<span style="font-size: 8pt;">GIS-coördinaten van een item. Je kan alle locaties opvragen die zich in een radius situeren rond de vastgestelde coördinaten door een "!" te plaatsen voor de radius.</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Decimal;Decimal!Number</span>

 | 

latlng=51.022350;4.547600!5km

 |

ZOEKEN OP METADATA

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">changedsince</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Alle evenementen versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date (yyyy-m-d; yyyy-m-dTH.m)</span>

 | 

changedsince=2010-01-19T20.00

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">hasimage</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Alle evenementen met één of meerdere afbeeldingen.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

hasimage=true

 |

# <a name="6" id="6"></a>Production

ZOEKEN OP WIE / WAT

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voobeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">q</span>

 | 

<span style="font-size: 8pt;">Een vrije zoekterm. De UiTdatabank full-text index bevat volgende attributen:</span>

*   <span style="font-size: 8pt;">titel</span>
*   <span style="font-size: 8pt;">korte beschrijving</span>
*   <span style="font-size: 8pt;">uitvoerders</span>
*   <span style="font-size: 8pt;">categorisatiefacetten</span>
*   <span style="font-size: 8pt;">ID</span>

<span style="font-size: 8pt;">Standaard - indien geen operator wordt meegegeven - worden meerdere woorden gecombineerd met de "AND" operator. Volgende operatoren zijn beschikbaar:</span>

*   <span style="font-size: 8pt;">OR</span>
*   <span style="font-size: 8pt;">Dubbele aanhalingstekens voor exacte zoekopdrachten</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

q=Puppet Shadows

q="Last shadow puppets"

q=Last OR shadow OR puppets

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">agebetween</span>

 | 

<span style="font-size: 8pt;">Minimum leeftijd tussen deze twee waarden (range splitsen met "..")</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number..Number</span>

 | 

<span class="style1">agebetween=3..6</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">age</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Minimum leeftijd</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span>

 | 

<span class="style1">age=18</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">isfree</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Gratis events</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

<span class="style1">isfree=true</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">permanent</span>

 | 

<span style="font-size: 8pt;">Permanente events (vb. vaste collecties, monumenten, etc.)</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

<span class="style1">permanent=false</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">temporary</span>

 | 

<span style="font-size: 8pt;">Tijdelijke events (met start- en einddatum)</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

<span class="style1">temporary=false</span>

 |

ZOEKEN OP KRUISVERWIJZINGEN EN KEYWORDS

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">k</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Keywords en tags
Om een keyword uit te sluiten, voeg je een "!" toe.</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

<span class="style1">k=a-kaart
k=!a-kaart</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">location</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Alle producties die op een bepaalde locatie plaatsvinden. De ID van de locatie vind je terug in de response voor een list query.
Je kan de resultaten voor locaties uitsluiten door een "!" voor de locatie te plaatsen.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">GUID or Text</span>

 | 

<span class="style1">location=Kunstencentrum Vooruit
location=!CC De Spil</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">organiser</span>

 | 

<span style="font-size: 8pt;">Alle producties die georganiseerd worden door een bepaalde organisator. De ID van de organisator vind je terug in de response voor een list query.
Om een organisatie uit te sluiten, voeg je een "!" toe</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">GUID or Text</span>

 | 

<span class="style1">organiser=15298A88-D02D-FF59-172893158E752D90
organiser=!Bou8</span>

 |

ZOEKEN OP CATEGORIEËN

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">eventtype</span>

 | 

<span style="font-size: 8pt;"><span class="style1">bijv. concert, film, tentoonstelling
Om een bepaald type uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.
</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">(x.x.x.x.x)</span>

 | 

<span class="style1">type=0.10.0.0.0;0.11.0.0.0
type=!0.10.0.0.0</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">thema</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Waarover gaat het aanbod? bijv. geschiedenis, beeldende kunst, popmuziek.
Om een bepaald thema uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">(x.x.x.x.x)</span>

 | 

<span class="style1">thema=1.0.1.0.0;1.2.2.0.0
thema=muziek</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">targetaudience</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Tot welke doelgroep richt men zich met het aanbod?
Om bepaalde doelgroepen uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span>

 | 

<span class="style1">targetaudience=2.1.5.0.0</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">facility</span>

 | 

<span style="font-size: 8pt;"><span class="style1">bijv. autoparking, voorzieningen voor mensen met een auditieve handicap, enz.
Om bepaalde voorzieningen uit te sluiten, voeg je een "!" toe.
Je kan zowel de ID van een categorie gebruiken als het label.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (x.x.x.x.x)</span>

 | 

<span class="style1">facility=3.5.0.0.0</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">heading</span>

 | 

<span style="font-size: 8pt;"><span class="style1">De UiTdatabankcategorisatie is fijnmazig en zodoende niet altijd geschikt als sitenavigatie of rubrieken in brochures. Hiervoor stelt de UiTdatabank "headings" ter beschikking. Headings zijn "mappings" van de categorisatie.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span>

 | 

<span class="style1">heading=14;15;16;17;18;19;20
heading=muziek;film</span>

 |

ZOEKEN OP METADATA

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">changedsince</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Alle producties versturen die sinds een bepaald tijdstip aangemaakt of aangepast waren.
Noteer de datum/tijd notatie (":" is gereserveerd in http URI notation).</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Date (yyyy-m-d; yyyy-m-dTH.m)</span>

 | 

changedsince=2010-01-19T20.00

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">hasimage</span>

 | 

<span style="font-size: 8pt;"><span class="style1">Alle evenementen met één of meerdere afbeeldingen.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Boolean</span>

 | 

hasimage=true

 |

# <a name="7" id="7"></a>Parameters die de output wijzigen

| 

<span style="font-size: 8pt; font-weight: bold;">Naam parameter</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Beschrijving</span>

 | 

<span style="font-size: 8pt; font-weight: bold;">Datatype voor input</span>

 | 

<span style="font-size: 8pt; font-weight: bold;"><span class="style1">Voorbeeld</span></span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">format</span>

 | 

<span style="font-size: 8pt;">Het formaat van de return. Het default response formaat is XML. Om een response in het JSON formaat te ontvangen, gebruik je format=json</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (json)</span>

 | 

<span class="style1">format=json</span>

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">sort</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US"><span class="style1">Resultaten kunnen gesorteerd worden. Standaard worden de resultaten gesorteerd volgens een specifiek algoritme dat nabijheid in tijd, het publieksbereik van het event, de volledigheid/kwaliteit van de informatie en de duurtijd van het evenement in rekening neemt.</span></span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text (age, title, location, city, date, created, weight, weightweek, proximity)</span> **Opgepast, 'proximity' werkt enkel in combinatie met 'latlng'**.

 | 

sort=city desc

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">page</span>

 | 

<span style="font-size: 8pt;">Resultatenpagina die moet worden getoond. Maw de huidige pagina in het totaal aan pagina's. De default waarde is 1\.</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span>

 | 

page=2

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">pagelength</span>

 | 

<span style="font-size: 8pt;">Het aantal items op een resultatenpagina (default 50)</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Number</span>

 | 

pagelength=10

 |
| 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">callback</span>

 | 

<span style="font-size: 8pt;">Gebruikt om json return op te vragen. In de callback parameter kan je de javascript wrapper functie opnemen die je wil hanteren.
Enkel mogelijk bij events, niet bij actors en productions.</span>

 | 

<span lang="EN-US" style="font-size: 8pt;" xml:lang="EN-US">Text</span>

 | 

callback=resultset

 |

