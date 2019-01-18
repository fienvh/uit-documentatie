{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww14160\viewh18000\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ---\
---\
\
# Ophalen van kaartsystemen van een event\
\
_Method_\
GET\
\
_URL_\
\{prefix\}/uitpas/cultureevent/\{cdbid\}/cardsystems\
\
Parameters:\
\
Geen \
\
_Authenticatie_\
\pard\pardeftab720\sl300\partightenfactor0
\cf0 Consumer request van de service consumer die het opvragen uitvoert\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 _Opmerking_\
Indien de opzoeking gebeurt door een balie medewerker worden enkel de ticket sales getoond die door de balie werden uitgevoerd, waarvan de balie organisator van het evenement is of waarvan de balie de locatie van het evenement is.\
\
_Required permission_\
In geval van consumer request:  **PERMISSION_EVENT - ACTION_READ**\
\
**Response**\
\
<u>Bij succes</u>\
HTTP 200 OK met een response body in XML formaat met daarin een code en een lijst van cardSystems, met daarin eventueel een lijst van distributionsKeys (bij manuele verdeelsleutels)\
\
<u>Bij fouten</u>\
HTTP 400 met een response body in XML formaat:\
\
| code | ErrorCode van de fout:<br>UNKNOWN_EVENT_CDBID<br>ACTION_NOT_ALLOWED |\
| message | Beschrijving van de fout |\
\
_Voorbeeld request_\
\
GET \{prefix\}/uitpas/cultureevent/\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 01a1fc4b-0ca0-44dc-a701-ba48e26f140d/cardsystems\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
\
_Voorbeeld response_\
\
\
~~~xml\
\pard\pardeftab720\sl360\partightenfactor0
\cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 <response>\
 \'a0\'a0\'a0<code>ACTION_SUCCEEDED</code>\
 \'a0\'a0\'a0<cardSystems>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0<cardSystem>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<id>1</id>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<name>UiTPAS Dender</name>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<distributionKeys>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<distributionKey>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<id>27</id>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<name>Speelplein HA</name>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<conditions>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<condition>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<definition>KANSARM</definition>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<operator>IN</operator>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<value>MY_CARDSYSTEM</value>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0</condition>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0</conditions>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<tariff>3.0</tariff>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<priceClasses>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<priceClass>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<name>Basistarief</name>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<price>10.0</price>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<tariff>3.0</tariff>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0</priceClass>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0</priceClasses>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0<automatic>false</automatic>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0</distributionKey>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0\'a0</distributionKeys>\
 \'a0\'a0\'a0\'a0\'a0\'a0\'a0</cardSystem>\
 \'a0\'a0\'a0</cardSystems>\
</response>\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 \
~~~\
}