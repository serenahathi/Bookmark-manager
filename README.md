## Planned link structure
Links will be stored in array of links in Link class. 
Each link will be a hash having a key-value pairs of: name, tag, url and description.

## User Stories

```plain
As a Bookmark Manager User,
so I can see the saved websites,
I want to see the list of all saved links.
```
Domain model for this user story:
```plain
╔════════════╗  give me all links   ╔════════════╗
║            ║--------------------->║            ║
║ Controller ║   [array of links]   ║    Link    ║
║            ║<---------------------║            ║
╚════════════╝                      ╚════════════╝
```
```plain
As a Bookmark Manager User,
so I can save new websites,
I want to be able to add new links.
```
Domain model for this user story:

```plain
╔════════════╗  add a new link      ╔════════════╗
║            ║--------------------->║            ║
║ Controller ║   return this link   ║    Link    ║
║            ║<---------------------║            ║
╚════════════╝                      ╚════════════╝
```
```plain
As a Bookmark Manager User,
so I can delete the links that no longer interest me,
I want to be able to delete links.
```
Domain model for this user story:

```plain
╔════════════╗  delete    link      ╔════════════╗
║            ║--------------------->║            ║
║ Controller ║ return the del. link ║    Link    ║
║            ║<---------------------║            ║
╚════════════╝                      ╚════════════╝
```
```plain
As a Bookmark Manager User,
so I can change the links,
I want to be able to update existing links.
```
Domain model for this user story:

```plain
╔════════════╗  update    link      ╔════════════╗
║            ║--------------------->║            ║
║ Controller ║ return the upd. link ║    Link    ║
║            ║<---------------------║            ║
╚════════════╝                      ╚════════════╝
```
```plain
As a Bookmark Manager User,
so I can easily manage the links,
I want to tag links into categories.
```
Domain model for this user story:

```plain
╔════════════╗  tag    link         ╔════════════╗
║            ║--------------------->║            ║
║ Controller ║return the tagged link║    Link    ║
║            ║<---------------------║            ║
╚════════════╝                      ╚════════════╝
```
```plain
As a Bookmark Manager User,
so I can easily find a link that interest me,
I want to filter links by their tags.
```
Domain model for this user story:
```plain
╔════════════╗  filter links array  ╔════════════╗
║            ║--------------------->║            ║
║ Controller ║return the tagged link║    Link    ║
║            ║<---------------------║            ║
╚════════════╝                      ╚════════════╝
```
