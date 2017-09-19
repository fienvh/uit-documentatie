---
---

# UDB3 Schema

## Resource collections

Resource collections should always be plural, and end in a trailing slash because they represent a directory of resources.

Examples:
- Get all events: `GET /events/`
- Add a new event: `POST /events/`

## Filtering resource collections

Resource collections are always filtered using query parameters.

Examples:
- Get all places with a specific postalCode: `GET /places/?postalCode=...`

## Resource detail

Resources are subdirectories of their collection, identified by an id or slug.
They have no trailing slash.

Examples:
- Get a specific event: `GET /events/{eventId}`
- Update a specific event: `PUT /events/{eventId}`
- Delete a specific event: `DELETE /events/{eventId}`

## Singletons

Singletons are resources of which only one can ever exist. Singletons are thus always singular.
They have no trailing slash, as they represent a single resource.

Examples:
- Get info about the current user: `GET /user`
- Update the title of an event: `PUT /events/{eventId}/title`

## POST vs PUT vs PATCH

Use `POST` requests when creating new resources in a collection, and when you don't know the resource id beforehand.
Send all data using a JSON payload.
For example: `POST /events/`, `POST /places/`, ...

Use `PUT` requests when creating/updating resources in a collection, and when you already know the resource id.
Send any additional data in a JSON payload just like a `POST` request.
For example: `PUT /events/{eventId}/labels/{labelName}`

Additionally, use `PUT` requests when making partial changes to resources. Structure the request so the property being updated acts as a singleton.
Send any additional data in a JSON payload just like a `POST` request.
For example: `PUT /events/{eventId}/title`, ...

When linking two resources to each other, use a `PUT` request to a resource in a collection OR a singleton (many vs single), on the parent resource.
For example: `PUT /events/{eventId}/labels/{labelName}` for one-to-many relations, `PUT /events/{eventId}/organizer` for one-to-one relations.

Never use `PATCH`.

## DELETE

Specify the resource id in the URL, never in a JSON payload.
For example: `DELETE /events/{eventId}`, `DELETE /events/{eventId}/labels/{labelName}`

## Casing

Endpoints should use casing that matches their use in request and response content. Do not use kebab-case to slug multiple words. Wildcards are camelcased, starting with a lowercase letter.

Example: The path to update the `typicalAgeRange` property of an event with a given `eventId`.

    PUT /events/{eventId}/typicalAgeRange
