---
---
 <a id="9" name="9"></a>9. Volgers van een pagina verwijderen
=============================================================

 
    <pre class="rteleft"> {server}/page/{uid}/follower/remove 

 * Methode:   
 POST  * Authenticatie:   
 UserAccessToken. ## Parameters <


<th scope="col"> Parameter</th> <th scope="col"> Type</th> <th scope="col"> Beschrijving</th> <th scope="col"> Verplicht</th> </thead><tbody>
 userId |   String |   uid van CultureFeed gebruiker |   x |  </tbody></


## Response
 ### Succes
 HTTP 200 OK met een response body in XML formaat. Velden: <


 code |   Status code string: ACTION\_SUCCEEDED |  
 message |   Detail bij foutcode |  </tbody></


 HTTP status code, eventueel aangevuld met een XML body met extra informatie. <


 HTTP 403 Forbidden |   ACCESS\_DENIED, USER\_NOT\_FOUND, ACTION\_NOT\_ALLOWED | </tbody></


## Voorbeeld 

Request
  
**<span style="font-size: 13px; font-family: Arial; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">POST {prefix}/page/**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline;">56b48143-2d84-4041-bbce-9e8e80952cce</span>**/follower/remove</span>  
**<span style="font-size: 13px; font-family: Arial; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">userId=</span>******<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;">fe9df655-59d8-436a-bc38-664f4796d498</span>**

Response

**<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"><?xml version="1.0" encoding="UTF-8" standalone="yes"?></span>  
<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"><response></span>  
<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <code>ACTION\_SUCCEEDED</code></span>  
<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"> <message>User [fe9df655-59d8-436a-bc38-664f4796d498] is no longer following page [56b48143-2d84-4041-bbce-9e8e80952cce]</message></span>  
<span style="font-size: 13px; font-family: 'Courier New'; background-color: transparent; vertical-align: baseline; white-space: pre-wrap;"></response></span>**

