---
---

# What is UiTiD?

UiTiD is an OAuth Service Provider.

End Users (Users) can, with their UiTiD profile via Service Consumers (or Consumers for short),  authenticate, create, view, edit and delete their profile. Consumers are all kinds of web applications: websites, mobile applications, widgets, ..

Service Consumers communicate with the Service Provider by means of a REST API whose security and authorization is based on the OAuth protocol.

Users first give permission to a Service Consumer to edit and read their personal data or their data in the UiT database. With the exception of nickname, profile photo and public activities, the user data is never shared with Consumers to whom they have not given permission.