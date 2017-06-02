---
---

# Response (inleiding tot het uitwisselingsformaat)

De UiTdatabank beantwoordt requests als XML of JSON responses, conform het CdbXML 3.1 formaat. Afhankelijk van de aangeroepen method wordt een lijstrepresentatie, detailrepresentatie of report view verzonden.
  
<table cellspaging="0"><tbody><tr><th class="col1 rteleft">
				Method</th>
<th class="col2 rteleft">
				Beschrijving</th>
<th class="col3 rteleft">
				Voorbeeld</th>
</tr><tr><td class="col1 rteleft">
				search</td>
<td class="col2 rteleft">
				Lijstrepresentatie</td>
<td class="col3 rteleft">
				<a href="http://build.uitdatabank.be/api/actors/search?key=45A4F389-EC2A-4B75-B006-78B55C8260FB" target="_blank">http://build.uitdatabank.be/api/actors/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C</a></td>
</tr><tr><td class="col1 rteleft">
				xmlview</td>
<td class="col2 rteleft">
				Detailrepresentatie</td>
<td class="col3 rteleft">
				<a href="http://build.uitdatabank.be/api/productions/xmlview?key=45A4F389-EC2A-4B75-B006-78B55C8260FB" target="_blank">http://build.uitdatabank.be/api/productions/xmlview?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C</a></td>
</tr><tr><td class="col1 rteleft">
				report</td>
<td class="col2 rteleft">
				Totalen</td>
<td class="col3 rteleft">
				<a href="http://build.uitdatabank.be/api/events/report?key=45A4F389-EC2A-4B75-B006-78B55C8260FB" target="_blank">http://build.uitdatabank.be/api/events/report?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C</a></td>
</tr></tbody></table><p></p>
<h1 class="rteleft">
	Response</h1>
<ul><li class="rteleft">
		<a href="#search">search method response: "lijstrepresentatie"</a></li>
<li class="rteleft">
		<a href="#report">report method response: "totalen"</a></li>
<li class="rteleft">
		<a href="#xmlview">xmlview method response: "detailrepresentatie"</a></li>
<li class="rteleft">
		<a href="#object">object response (vanuit lijstrespresentatie)</a></li>
</ul><h3 class="rteleft">
	<a name="search" id="search"></a>search method response: "lijstrepresentatie"</h3>
<p class="rteleft"><span class="emphasize">Request</span><br><a href="http://build.uitdatabank.be/api/events/search?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&amp;heading=Muziek&amp;regio=Provincie%20Limburg&amp;pagelength=2" target="_blank">http://build.uitdatabank.be/api/events/search?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&amp;heading=Muziek&amp;regio=Provincie%20Limburg&amp;pagelength=2</a></p>
<p class="rteleft"><span class="emphasize">Response</span></p>
<p><blockcode><cdbxml><nofrecords>394</nofrecords><br><list><item address="Stationsstraat 2, 3920 Lommel, BE" agefrom="" available_to="8/19/2010 12:00:00 AM" calendarsummary="woe 18/08/10" cdbid="51ce1153-dc73-447c-80ea-e4a1ce14dbaa" city="Lommel" created="7/5/2010 11:52:48 AM" externalid="CDB:4976b68e-01e2-49a7-a102-901b8ffa8087" heading="Muziek; Amusementsmuziek" latlng="51.227653;5.314417" location="Park Burgemeestershuis" locationid="" performers="" shortdescription="Een gratis concert in het..." thumbnail="http://media.uitdatabank.be/20100506/1d30f1ae-24db-42d4-9c1a-495bc959f4db.jpg?maxwidth=162&amp;maxheight=109" title="Vrouwen in het park" zip="3920"><item address="Kasteelstraat 6, 3740 Bilzen, BE" agefrom="" available_to="8/20/2010 12:00:00 AM" calendarsummary="do 19/08/10" cdbid="f443b2dd-35fe-4649-b3ee-c8a50c5f39c2" city="Bilzen" created="8/17/2010 3:33:37 PM" externalid="CDB:0c59f052-4251-4f5a-ad3e-46f246603039" heading="Muziek; Klassieke muziek" latlng="50.840190;5.518227" location="Landcommanderij Alden Biesen" locationid="4f1b6e2e-c92e-4c47-94f9-c01bebc574f1" performers="cornet à bouquin David Van Bouwel (B); orgel 'Musica Mediterranea'; Jean Tubéry (F)" shortdescription="Jean Tubéry is een fenomeen! Als cornettospeler ..." thumbnail="http://media.uitdatabank.be/20100723/62c7df0b-0985-4cff-b629-eaf958e5dfba.jpg?maxwidth=162&amp;maxheight=109" title="Orgelnocturne" zip="3740"></item></item></list></cdbxml></blockcode></p>
<table cellspaging="0"><tbody><tr><th class="col41">
				Attribuut</th>
<th class="col42">
				Verplicht</th>
<th class="col43">
				Beschrijving</th>
<th class="col44">
				Meertalig</th>
<th class="col44">
				Voorbeeld</th>
</tr><tr><td class="col41">
				cdbid</td>
<td class="col42">
				x</td>
<td class="col43">
				ID toegevoegd door de UiTdatabank.</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				cdbid="a0b0aa2f-2d26-43f9-a443-4409730639c4"</td>
</tr><tr><td class="col41">
				externalid</td>
<td class="col42">
				x</td>
<td class="col43">
				ID uit de brondatabank</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				externalid="CDB:e448e722-e243-47bb-979e-b9c7419ea104"</td>
</tr><tr><td class="col41">
				title</td>
<td class="col42">
				x</td>
<td class="col43">
				Titel</td>
<td class="col44">
				X - wordt aangeleverd door invoerder</td>
<td class="col44">
				title="8y Culture Club Anniversary Party"</td>
</tr><tr><td class="col41">
				shortdescription</td>
<td class="col42">
				x</td>
<td class="col43">
				Korte beschrijving (400 chars)</td>
<td class="col44">
				X - wordt aangeleverd door invoerder</td>
<td class="col44">
				shortdescription="8YCC… Eight Years Culture Club… We’re proud!"</td>
</tr><tr><td class="col41">
				thumbnail</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Afbeelding (zie voorbeeld hiernaast – thumbnail grootte wordt als query parameters aan de URL toegevoegd)</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				thumbnail="<a href="http://media.uitdatabank.be/20100401/6fdb1e62-d447-412c-96e2-fe103f55639f.png?maxwidth=162&amp;amp;maxheight=109&quot;">http://media.uitdatabank.be/20100401/6fdb1e62-d447-412c-96e2-fe103f55639f.png?maxwidth=162&amp;amp;maxheight=109"</a></td>
</tr><tr><td class="col41">
				calendersummary</td>
<td class="col42">
				x</td>
<td class="col43">
				Ongestructureerde weergave van de tijdsinformatie</td>
<td class="col44">
				X - wordt automatisch gegenereerd</td>
<td class="col44">
				calendarsummary="vrij 30/04/10"</td>
</tr><tr><td class="col41">
				heading</td>
<td class="col42">
				x</td>
<td class="col43">
				Navigatie rubriek</td>
<td class="col44">
				X - wordt automatisch gegenereerd</td>
<td class="col44">
				heading="Nachtleven"</td>
</tr><tr><td class="col41">
				city</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Naam van de stad of gemeente</td>
<td class="col44">
				X - wordt automatisch gegenereerd</td>
<td class="col44">
				city="Gent"</td>
</tr><tr><td class="col41">
				zip</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Postcode</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				zip="9000"</td>
</tr><tr><td class="col41">
				location</td>
<td class="col42">
				x</td>
<td class="col43">
				Naam van de locatie</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				ocation="ICC international convention center ghent "</td>
</tr><tr><td class="col41">
				locationid</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				ID van de locatie (vb. voor speellijsten samen te stellen van alle events die op de betreffende locatie plaatsvinden)</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				locationid="31E39072-94CC-6CD3-E5ED453957C4D33D"</td>
</tr><tr><td class="col41">
				reservation</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Rechtstreekse ticketinglink</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				reservation="<a href="https://esro5.basic-orange.be/digipolis/order.asp?evt=14041&amp;">https://esro5.basic-orange.be/digipolis/order.asp?evt=14041&amp;</a>|oc=2"</td>
</tr><tr><td class="col41">
				agefrom</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Leeftijdsklasse</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				agefrom="18"</td>
</tr><tr><td class="col41">
				performers</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Uitvoerders</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				performers="Cash Money; Dada Life; Davidov; Etienne de Crecy; Gus &amp;amp; Sense"</td>
</tr><tr><td class="col41">
				available_to</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Datum waarop het evenement verlopen is.</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				available_to="5/1/2010 12:00:00 AM"</td>
</tr><tr><td class="col41">
				created</td>
<td class="col42">
				x</td>
<td class="col43">
				Datum waarop het evenement werd aangemaakt /aangepast.</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				created="4/5/2010 7:12:58 PM"</td>
</tr><tr><td class="col41">
				latlng</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Latitude en longitude</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				latlng="51.038195;3.723034"</td>
</tr><tr><td class="col41">
				address</td>
<td class="col42">
				&nbsp;</td>
<td class="col43">
				Adres van de locatie (met standaard notering [straat][, ][zip][ ][gemeente][, ][landcode])</td>
<td class="col44">
				&nbsp;</td>
<td class="col44">
				address="Van Rysselberghedreef - Citadelpark 2 bus 1, 9000 Gent, BE"</td>
</tr></tbody></table><h3 class="rteleft">
	<a name="report" id="report"></a>report method response: "totalen"</h3>
<p class="rteleft">De report methode maakt het mogelijk om totalen te tonen binnen een zoekopdracht. Bijv. <a href="http://build.uitdatabank.be/api/events/report?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&amp;heading=Muziek&amp;regio=Provincie%20Limburg" target="_blank">http://build.uitdatabank.be/api/events/report?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&amp;heading=Muziek&amp;regio=Provincie%20Limburg</a></p>
<p class="rteleft">geeft alle concerten in Limburg ingedeeld:</p>
<ul><li class="rteleft">
		per rubriek (in dit geval pop en rock, klassiek enz.)</li>
<li class="rteleft">
		op basis van geografische gegevens (per regio, stad en locatie)</li>
<li class="rteleft">
		volgens leeftijdsklasse</li>
<li class="rteleft">
		per tijdseenheid (vb. vandaag, morgen, komende 30 dagen enz.)</li>
</ul><p class="rteleft">Dit maakt het mogelijk bij navigatie-items totalen te zetten en gebruikers de data te laten filteren ("drill down"). Een voorbeeld hiervan is de linkerkolom op UiTinVlaanderen.be die verschijnt bij de lijstoverzichten van evenementen. Bijv. <a href="http://www.uitinvlaanderen.be/agenda/r?query=muziek" target="_blank">http://www.uitinvlaanderen.be/agenda/r?query=muziek</a></p>
<p class="rteleft"><span class="emphasize">Request</span><br><a href="http://build.uitdatabank.be/api/events/report?key=45A4F389-EC2A-4B75-B006-78B55C8260FB&amp;heading=Muziek&amp;Regio=Provincie%20Limburg" target="_blank">http://build.uitdatabank.be/api/events/report?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C&amp;heading=Muziek&amp;Regio=Provincie%20Limburg</a></p>
<p class="rteleft"><span class="emphasize">Response</span></p>
<p><blockcode><cdbxml><report><headings><item id="66" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=66" name="Festivals" total="10"><item id="67" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=67" name="Muziek" total="10"></item></item></headings><geo><item id="18" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;regio=18" name="Provincie Limburg" total="10"><item id="358" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;regio=358" name="Haspengouw" total="3"><item id="173" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;regio=173" name="Hasselt" total="2"><item id="3500_HASSELT" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;cityid=3500_HASSELT" name="Hasselt" total="2"></item><item id="193" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;regio=193" name="Tongeren" total="1"><item id="3700_TONGEREN" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;cityid=3700_TONGEREN" name="Tongeren" total="1"></item></item><item id="361" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;regio=361" name="Maasland" total="1"><item id="184" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;regio=184" name="Lanaken" total="1"><item id="3620_LANAKEN" link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;heading=Muziek&amp;cityid=3620_LANAKEN" name="Lanaken" total="1"></item></item></item></item></item></item></geo><time><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=tomorrow" name="tomorrow" total="1"><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=thisweek" name="thisweek" total="3"><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=thisweekend" name="thisweekend" total="2"><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=nextweekend" name="nextweekend" total="2"><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=thismonth" name="thismonth" total="7"><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=next30days" name="next30days" total="9"><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=next3months" name="next3months" total="10"><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=next6months" name="next6months" total="10"><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;datetype=next12months" name="next12months" total="10"></item></item></item></item></item></item></item></item></item></time><age><item link="/events/search?key=9ff9633f-e27d-4096-90c9-bc8b7c0833ea&amp;regio=Provincie Limburg&amp;heading=Muziek&amp;agebetween=18..18" name="18-18" total="10"></item></age></report></cdbxml></blockcode></p>
<table cellspaging="0"><tbody><tr><th class="col21">
				Attribuut</th>
<th class="col22">
				Beschrijving</th>
</tr><tr><td class="col21">
				//headings</td>
<td class="col22">
				Het aantal evenementen binnen de zoekopdracht ingedeeld per rubriek en subrubriek. De headings zijn meertalig.</td>
</tr><tr><td class="col21">
				//geo</td>
<td class="col22">
				Het aantal evenementen binnen de zoekopdracht ingedeeld per regio, gemeente en evt. locatie in die gemeente (vb. DeSingel). De regio's en gemeenten zijn meertalig</td>
</tr><tr><td class="col21">
				//time</td>
<td class="col22">
				Alle evenementen binnen de zoekopdracht die vandaag, deze week, volgende week enz. plaatsvinden.</td>
</tr><tr><td class="col21">
				//age</td>
<td class="col22">
				Alle evenementen binnen de zoekopdracht ingedeeld per leeftijdscategorie.</td>
</tr><tr><td class="col21">
				//item/@name</td>
<td class="col22">
				De naam van de betreffende rubriek, regio/stad/locatie, tijdseenheid of leeftijdscategorie, vb. "pop en rock", "Maasland", "nextmonth", "4-5"</td>
</tr><tr><td class="col21">
				//item/@id</td>
<td class="col22">
				De interne ID van de betreffende rubriek, regio/stad/locatie, tijdseenheid of leeftijdscategorie.</td>
</tr><tr><td class="col21">
				//item/@total</td>
<td class="col22">
				Het totaal aantal event items voor de betreffende rubriek, regio/stad/locatie, tijdseenheid of leeftijdscategorie.</td>
</tr><tr><td class="col21">
				//item/@link</td>
<td class="col22">
				De UiTdatabank Search API "link" naar het lijstoverzicht voor het betreffende totaal.</td>
</tr></tbody></table><h3 class="rteleft">
	&nbsp;</h3>
<h3 class="rteleft">
	<a name="object" id="object"></a>object response (vanuit lijstrespresentatie)</h3>
<p class="rteleft">De detailrepresentatie van een specifiek object bevat de velden die (1) ook beschikbaar zijn in de lijstrepresentatie, (2) metadata velden die in feite niet relevant zijn voor output, maar (3) ook een aantal velden die meer informatie over het event verschaffen. Deze informatie kan relevant zijn om te tonen op een detailfiche, bijv. extra links naar afbeeldingen, videofragmenten of vertalingen, uitgebreide contactinformatie, tags, taal waarin een event wordt opgevoerd enz.</p>
<p class="rteleft">Een overzicht van alle elementen en attributen is beschikbaar op de pagina <a href="http://tools.uitdatabank.be/sites/default/files/u50/cdbxml_uitwisselingsformaat.pdf">Uitwisselingsformaat in xml</a>.</p>
<p class="rteleft"><span class="emphasize">Request</span><br><a href="http://build.uitdatabank.be/api/event/77C51021-C4D4-1499-2E01EE6F8E80B641?key=45A4F389-EC2A-4B75-B006-78B55C8260FB" target="_blank">http://build.uitdatabank.be/api/event/77C51021-C4D4-1499-2E01EE6F8E80B641?key=BAAC107B-632C-46C6-A254-13BC2CE19C6C</a></p>
<p class="rteleft"><span class="emphasize">Response</span></p>
<p><blockcode><cdbxml><events><event availablefrom="2009-05-25T00:00:00" availableto="2100-01-01T00:00:00" cdbid="77C51021-C4D4-1499-2E01EE6F8E80B641" createdby="bartluyckx" creationdate="2009-05-25T15:35:51" externalid="CDB:77C51021-C4D4-1499-2E01EE6F8E80B641" lastupdated="2010-05-12T15:47:41" lastupdatedby="Soetkin.Vanassche@cultuurnet.be" owner="Cultuurnet" private="false"><agefrom>6</agefrom><calendar><br><permanentopeningtimes><permanent><weekscheme><monday opentype="closed"><tuesday opentype="open"><openingtime from="09:00:00" to="17:00:00"></openingtime></tuesday><wednesday opentype="open"><openingtime from="09:00:00" to="17:00:00"></openingtime></wednesday><br><thursday opentype="open"><openingtime from="09:00:00" to="17:00:00"></openingtime></thursday><friday opentype="open"><openingtime from="09:00:00" to="17:00:00"></openingtime></friday><saturday opentype="open"><openingtime from="10:00:00" to="18:00:00"></openingtime></saturday><sunday opentype="open"><openingtime from="10:00:00" to="18:00:00"></openingtime></sunday></monday></weekscheme></permanent></permanentopeningtimes></calendar><categories><category catid="0.0.0.0.0" type="eventtype">Tentoonstelling</category><category catid="1.11.0.0.0" type="theme">Geschiedenis</category><category catid="2.2.2.0.0" type="targetaudience">Kinderen vanaf 6 jaar (6+)</category><category catid="6.4.0.0.0" type="publicscope">Internationaal</category></categories><contactinfo><mail><a href="mailto:grm@limburg.be">grm@limburg.be</a></mail><br><phone>+32 12 670 333</phone><url main="true"><a href="http://www.galloromeinsmuseum.be/">http://www.galloromeinsmuseum.be/</a></url></contactinfo><eventdetails><eventdetail lang="nl" xml:lang="nl"><calendarsummary> di, woe, do, vrij van 09:00 tot 17:00 za en zo van 10:00 tot 18:00 (ma gesloten) </calendarsummary><media><file main="true"><copyright>Gallo-Romeins Museum</copyright><filename>e704e70d-f9ef-4c83-a71d-f47809f84b0e.jpg</filename><filetype>jpeg</filetype><hlink><a href="http://media.uitdatabank.be/20090525/e704e70d-f9ef-4c83-a71d-f47809f84b0e.jpg">http://media.uitdatabank.be/20090525/e704e70d-f9ef-4c83-a71d-f47809f84b0e.jpg</a> </hlink></file></media><shortdescription>Het Gallo-Romeins Museum maakt middeleeuwen...</shortdescription></eventdetail></eventdetails><languages><language type="spoken">nl</language></languages><headings><heading id="74">Tentoonstellingen</heading><heading id="99">Tentoonstellingen met kinderen</heading></headings><location></location></event></events></cdbxml></blockcode></p>
<address>
<physical><city>Tongeren</city><country>BE</country><gis><xcoordinate>5.466428</xcoordinate><ycoordinate>50.781329</ycoordinate></gis><housenr>15</housenr><street>Kielenstraat</street><zipcode>3700</zipcode></physical></address>
<p><label cdbid="2E756F5B-E244-A388-430A85DB20BC7933">Provinciaal Gallo-Romeins Museum</label>  <organiser><label cdbid="2E756F5B-E244-A388-430A85DB20BC7933">Provinciaal Gallo-Romeins Museum</label> </organiser></p>
<table cellspaging="0"><tbody><tr><th class="col1">
				Attribuut</th>
<th class="col2">
				Verplicht</th>
<th class="col3">
				Meertalig*</th>
<th class="col3">
				Beschrijving</th>
</tr><tr><td class="col1">
				//event/@availablefrom</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De embargodatum. D.i. de datum vanaf wanneer het object mag gepubliceerd worden. De UiTdatabank Search API verstuurt enkel objecten waarvan de embargodatum overschreden is.</td>
</tr><tr><td class="col1">
				//event/@availableto</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De archiefdatum. D.i. de datum vanaf wanneer het event niet meer relevant is. Standaard is dit de dag nadat het event laatst plaatsvond. De archiefdatum is relevant voor het geval wanneer je event objecten in je eigen databank opslaat, zodat je adhv een archiveringscript het totaal aantal evenementen in jouw repository beperkt kan houden.</td>
</tr><tr><td class="col1">
				//event/@cdbid</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De ID die door de UiTdatabank aan het object werd toegekend.</td>
</tr><tr><td class="col1">
				//event/@createdby</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De naam van de auteur van het object</td>
</tr><tr><td class="col1">
				//event/@creationdate</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De datum waarop het object aan de UiTdatabank werd toegevoegd.</td>
</tr><tr><td class="col1">
				//event/@externalid</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De ID van het object in de brondatabank.</td>
</tr><tr><td class="col1">
				//event/@lastupdated</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De datum waarop het object laatst werd aangepast.</td>
</tr><tr><td class="col1">
				//event/@lastupdatedby</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De auteur van de laatste aanpassing.</td>
</tr><tr><td class="col1">
				//event/@owner</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De eigenaar van het object.</td>
</tr><tr><td class="col1">
				//event/@pctcomplete</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Het volledigheidspercentage. Dit getal wordt gebruikt in het standaard ranking algoritme van de UiTdatabank Search API en wordt getoond in de UiTdatabank invoeromgeving (<a href="http://www.uitdatabank.be">www.uitdatabank.be</a>)</td>
</tr><tr><td class="col1">
				//event/@published</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Is het item "gepubliceerd"? In het geval van een call naar de UiTdatabank Search API zullen enkel gepubliceerde events worden teruggezonden.</td>
</tr><tr><td class="col1">
				//event/@validator</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Wie stond in voor de goedkeuring van het event?</td>
</tr><tr><td class="col1">
				//event/@wfstatus</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				In welke "workflow status" bevindt het event zich?</td>
</tr><tr><td class="col1">
				//event/@isparent</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Is het event een "koepelaanbod", vb. Gentse Feesten. Als een event een koepelaanbod is kan op de detailfiche gezocht worden naar alle evenementen die in het kader van het betreffende event plaatsvinden door de titel van het event door te geven naar de API in de "keyword" input parameter.</td>
</tr><tr><td class="col1">
				//event/agefrom</td>
<td class="col2">
				&nbsp;</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Voor welke leeftijd is het event geschikt?</td>
</tr><tr><td class="col1">
				//event/calendar</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Tijdsinformatie op een gestructureerde manier weergegeven. Voor output is er een ongestructureerde weergave beschikbaar in //eventdetail/calendarsummary.</td>
</tr><tr><td class="col1">
				//event/categories</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De categorieën van het betreffende event: type, thema, doelgroep, publieksbereik ea. Voor meer informatie over de categorisatie zie de <a href="/docs/cdbxml">pagina met het datamodel en uitwisselingsformaat</a>.</td>
</tr><tr><td class="col1">
				//event/contactinfo</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Telefoonnrs, e-mailadressen en deeplinks waar men terecht kan voor meer informatie.</td>
</tr><tr><td class="col1">
				//eventdetail/@lang</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				In het eventdetail element wordt de "ongestructureerde" tekstuele informatie opgenomen. Standaard is de informatie beschikbaar in het Nederlands. Bijkomend zijn vertalingen mogelijk naar Frans, Engels en Duits.</td>
</tr><tr><td class="col1">
				//eventdetail/calendarsummary</td>
<td class="col2">
				x</td>
<td class="col3">
				X - wordt automatisch gegenereerd</td>
<td class="col3">
				Ongestructureerde weergave van de tijdsinformatie.</td>
</tr><tr><td class="col1">
				//eventdetail/performers</td>
<td class="col2">
				&nbsp;</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Door wie wordt het event opgevoerd, bijv. de regisseur, de muzikanten, enz. In het //performer element zit minstens de naam van de uitvoerder en evt de rol die ze spelen in het event, bijv trompettist, lezer, ...</td>
</tr><tr><td class="col1">
				//eventdetail/media</td>
<td class="col2">
				&nbsp;</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De thumbnail voor het event maar daarnaast bijkomende verwijzingen naar tal van andere externe objecten zoals videofragmenten, deeplinks naar reservatie informatie enz. Meer informatie vind je via de <a href="/docs/cdbxml">pagina met het datamodel en het uitwisselingsformaat</a>.</td>
</tr><tr><td class="col1">
				//eventdetail/price</td>
<td class="col2">
				&nbsp;</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De richtprijs voor het event en eventueel extra prijsinformatie. Als //price/pricevalue=0 dan is het een gratis event.</td>
</tr><tr><td class="col1">
				//eventdetail/shortdescription</td>
<td class="col2">
				&nbsp;</td>
<td class="col3">
				X - wordt aangeleverd door de invoerder</td>
<td class="col3">
				Bijkomende korte beschrijving over het event</td>
</tr><tr><td class="col1">
				//eventdetail/title</td>
<td class="col2">
				x</td>
<td class="col3">
				X - wordt aangeleverd door de invoerder</td>
<td class="col3">
				Titel van het event</td>
</tr><tr><td class="col1">
				//event/language</td>
<td class="col2">
				&nbsp;</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				Taal waarin het event wordt opgevoerd</td>
</tr><tr><td class="col1">
				//event/heading</td>
<td class="col2">
				&nbsp;</td>
<td class="col3">
				X - wordt automatisch gegenereerd</td>
<td class="col3">
				Rubriek waar het event in wordt ondergebracht</td>
</tr><tr><td class="col1">
				//event/location</td>
<td class="col2">
				x</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De locatie waar het event plaatsvindt. Dit bestaat uit het fysieke adres en minstens de naam van de locatie. Het is evenwel mogelijk dat een volledig overzicht van het Actor object hierin geïntegreerd wordt.</td>
</tr><tr><td class="col1">
				//event/organiser</td>
<td class="col2">
				&nbsp;</td>
<td class="col3">
				&nbsp;</td>
<td class="col3">
				De organisator van het event.</td>
</tr></tbody></table><p class="rteleft">*Meertaligheid: de informatie onder &lt;eventdetails&gt; wordt steeds in de beschikbare talen meegegeven, ongeacht of je een parameter 'lng' meegeeft in je query. Geef je in de parameter 'lng' in je query een andere taal mee, dan worden de &lt;headings&gt; in die specifieke taal weergegeven.</p>
<h3 class="rteleft">
	<a name="xmlview" id="xmlview"></a>xmlview method response: "detailrepresentatie"</h3>
<p class="rteleft">Dit is dezelfde representatie als object response. xmlview verstuurt een lijst van objecten, met alle attributen, geformatteerd op dezelfde wijze als object response.</p>
</div></div></div>  <div id="book-navigation-146" class="book-navigation">
    
        <div class="page-links clearfix">
              <a href="/docs/out/images" class="page-previous" title="Ga naar vorige pagina">‹ Methodes om afbeeldingen op te vragen</a>
                    <a href="/docs/uitdatabank-search-api-v1-old" class="page-up" title="Naar de bovenliggende pagina">omhoog</a>
                </div>
    
  </div>
  </div>

  
  
</div>
  </div>
</div>
  </div>
