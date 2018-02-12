## User Stories

```plain
As a Bookmark Manager User,
so I can see the saved websites,
I want to see the list of saved links.
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
```plain
As a Bookmark Manager User,
so I can delete the links that no longer interest me,
I want to be able to delete links.

As a Bookmark Manager User,
so I can change the links,
I want to be able to update existing links.

As a Bookmark Manager User,
so I can easily manage the links,
I want to tag links into categories.

As a Bookmark Manager User,
so I can easily find a link that interest me,
I want to filter links by their tags.
```
