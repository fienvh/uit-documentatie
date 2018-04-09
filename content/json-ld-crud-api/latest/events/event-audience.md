---
---

# Event - audience

* Can contain one of the following: `everyone`, `members`, `education`.
* When not specified, this will default to `everyone`. The search api excludes by default all offers with audienceType `members` and `education`.

**Example**

```
"audience": {
  "audienceType": "members"
}
```
