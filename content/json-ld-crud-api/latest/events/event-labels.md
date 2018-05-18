---
---

# Event - labels

## labels (visible)

* Can contain one or more labels
* When a private label is used without permission, a validation message will be shown
* When an unknown label is used, a new label will be created in UiTdatabank

**Example**

```
"labels": [
  "label1",
  "label2"
]
```

## hiddenLabels

* A hiddenLabel is not shown on public agenda's
* Can contain one or more labels
* When a private label is used without permission, a validation message will be shown
* When an unknown label is used, a new label will be created in UiTdatabank with property `visible:false`

**Example**

```
"hiddenLabels": [
  "hiddenLabel1",
  "hiddenLabel2"
]
```
