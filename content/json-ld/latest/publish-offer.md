---
---

# Publish an offer

By default every offer is created with `"workflowstatus":"DRAFT"`

Offers with workflowstatus "DRAFT" are by default excluded from search results

To publish your offer, use the following method:

```
Header: Content-Type
Value: application/ld+json;domain-model=Publish
```

```
PATCH /events/{cdbid}
PATCH /places/{cdbid}
```



