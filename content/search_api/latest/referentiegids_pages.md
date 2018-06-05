---
---

# Referentiegids: zoeken op pagina's

### validatedpageadmin_count
Geeft aan het aantal validated page admins aan. (enkel van toepassing het kader van scholen pagina's).
~~~
/search/rest/search/page?q=validatedpageadmin_count:1
~~~
~~~
<item type="page">
<activity type="validatedpageadmin" count="1"/>
~~~


### pageadmin_count
Geeft aan het aantal page admins aan.
~~~
/search/rest/search/page?q=pageadmin_count:1
~~~
~~~
<item type="page">
<activity type="pageadmin" count="1"/>
~~~

### pagefollow_count
Geeft aan het aantal page followers aan.

Pagina met minstens 1 follower:
~~~
/search/rest/search/page?q=pagefollow_count:[1 TO *]
~~~
~~~
<item type="page">
<activity type="pagefollow" count="3"/>
~~~

### pagemember_count
Geeft aan het aantal page members aan.

Pagina met minstens 1 follower:
~~~
/search/rest/search/page?q= pagemember_count:[1 TO *]
~~~
~~~
<item type="page">
<activity type="pagefollow" count="3"/>
~~~

### Official
Geeft aan of het om een officiele pagina gaat of niet. true of false (in te stellen in admin dashboard).

~~~
/search/rest/search/page?q=official:true
~~~
~~~
<officialPage>true</officialPage>
~~~