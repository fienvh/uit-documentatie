---
---

# Een pagina volgen

  {server}/page/{uid}/follow

* Methode: POST
* Authenticatie: UserAccessToken


## Parameters

activityPrivate |   Boolean |   zichtbaarheid van activiteit voor volgen van pagina, default true |

## Response

### Succes

HTTP 200 OK met een response body in XML formaat.

* code: status code string: ACTION\_SUCCEEDED
* message: detail boodschap

### Fout

HTTP status code, eventueel aangevuld met een XML body met extra informatie.

* HTTP 403 Forbidden
* HTTP Bad Request

* code: Status code string: PAGE\_NOT\_FOUND, ACTION\_NOT\_ALLOWED |  
* message: detail bij de foutmelding  

## Voorbeeld

Request

**<span style="font-size: 13px; font-family: Arial; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">POST {prefix}/page/56b48143-2d84-4041-bbce-9e8e80952cce/follow

Response

**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"><?xml version="1.0" encoding="UTF-8" standalone="yes"?></span>  
<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"><response></span>  
<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <code>ACTION\_SUCCEEDED</code></span>  
<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <message>CultureFeedUser [fe9df655-59d8-436a-bc38-664f4796d498] is following page [56b48143-2d84-4041-bbce-9e8e80952cce]</message></span>  
<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"></response></span>**
