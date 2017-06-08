---
---

# Authenticatie via Consumer Request

Deze methode wordt [hier](http://oauth.googlecode.com/svn/spec/ext/consumer_request/1.0/drafts/2/spec.html) beschreven en staat ook bekend als 2-legged oauth.

![2-legged oauth](/img/2legged.png "2-legged oauth")

Bij deze vorm van authenticatie is er geen accesToken of accessTokenSecret. Deze worden uit de request weggelaten (of als lege string meegegeven).

De Consumer Request wordt gebruikt wanneer een Service Consumer een actie uitvoert die niet namens 1 gebruiker gebeurt. De stap met de gebruikers autorisatie valt dus ook weg.

De Service Consumer tekent de request door middel van zijn consumerKey en consumerSecret.

## Voorbeeld PHP code

In onderstaande voorbeeld code wordt gebruik gemaakt van de [oauth-subscriber](https://github.com/guzzle/oauth-subscriber) in Guzzle 6 voor de authenticatie met UiTID. 

    <?php
     
    use GuzzleHttp\Client;
    use GuzzleHttp\HandlerStack;
    use GuzzleHttp\Subscriber\Oauth\Oauth1;
    use GuzzleHttp\Psr7;
    use GuzzleHttp\Exception\RequestException;
     
    require __DIR__ . '/vendor/autoload.php';
     
    // Settings UiTID
    $key = '1fc6b3fcde6e612ede360715045713f3';
    $secret	= 'e626845f1e95db4330a2a8803d83edf5';
    $base_url = 'https://www.uitid.be/';
     
    $stack = HandlerStack::create();
    $middleware = new Oauth1([
        'consumer_key'    => $key,
        'consumer_secret' => $secret,
        'token'           => '',
        'token_secret'    => ''
    ]);
    $stack->push($middleware);
     
    $client = new Client([
        'base_uri' => $base_url,
        'handler' => $stack,
        'auth' => 'oauth'
    ]);
     
    try {
      // Set the "auth" request option to "oauth" to sign using oauth
      $response = $client->get('uitid/rest/searchv2/search', ['query' => [
        'q' => '*:*',
        'start' => 0,
        'rows' => 50,
        'sort' => 'startdate asc',
        'fq' => 'category_name:Concert OR city:Leuven',
        'group	' => 'event'
      ]]);
      $response = (string)$response->getBody();
      $xml = simplexml_load_string($response);
      $namespaces = $xml->getNameSpaces(true);
      $cdb = $xml->children($namespaces['cdb']);
      $records = (string) $cdb->nofrecords;
      echo '<pre>';print_r($cdb);echo '</pre>';
     
    } catch (RequestException $e) {
        echo Psr7\str($e->getRequest());
        if ($e->hasResponse()) {
            echo Psr7\str($e->getResponse());
        }
    }
