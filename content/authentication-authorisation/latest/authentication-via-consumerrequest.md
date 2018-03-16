---
---

# Consumer Request Authentication

This method is described [here](http://oauthbible.com/#oauth-10a-one-legged) and is also known as 1-legged (or 2-legged) oauth

![1-legged oauth](/img/2leggednew.png "1-legged oauth")

With this form of authentication, there is no AccessToken or AccessTokenSecret. These are omitted from the request (or given as a blank string).

The Consumer Request is used when a Service Consumer performs an action that does not occur on behalf of 1 user. The step with the user authorization is also eliminated.

The Service Consumer signs the request through its consumerKey and consumerSecret.

## Preview PHP code to address Consumer Request Search API 2

The example code below uses the [oauth-subscriber](https://github.com/guzzle/oauth-subscriber) in [Guzzle 6](https://github.com/guzzle/guzzle) vfor authentication with UiTID. We recommend this PHP HTTP client, but you can also use others. More information about the installation of Guzzle and how to build requests can be found at: [http://docs.guzzlephp.org](http://docs.guzzlephp.org/en/stable/overview.html)

<script src="https://gist.github.com/stijnswaanen/4ed6757c57c9ca1c21fc84ad254781e8.js"></script>
