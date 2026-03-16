# Checklist yaml format

Outline of the expected yaml format for representing the checklists.

```
title: # checklist title
full_markdown_url: # direct link to the raw markdown for the checklist
lite_markdown_url: # direct link to lite version of the raw markdown for the checklist
version: # the version indicator of the checklist
## site this is currently REPO and markdown formatted
checklists_site_url: https://rsspdc.org
checklists_repo_url: https://gitlab.com/rsspdc/checklists
## checklists_repo_link:
intro: |
checklist_items: # a 'mapping' / 'dictionary' named for each theme / area in the checklist
  sourcecontrol: # The theme / area of the checklist, names are from a defined list
    title: "Source control" # The title of the theme
    emoji: 📒 # The designated emoji that represents the theme
    tagline: > # The theme's one sentence tag line question
      *How can you keep track of the history of your project and collaborate on it?*
    pre_notes: # test (markdown) to include before the checklist items and before the details section
    checklist_items: # Items in the checklist that can be checked
      overall: # top level bullet point for this theme
        content: | # Markdown text for the top-level bullet point for this theme
          Uses [git](https://git-scm.com/) (or other source control tool such as [fossil](https://fossil-scm.org/home/doc/trunk/www/index.wiki))
        checked: false # Checkbox toggle - Does this theme clear at least the bronze tier? if so set to true.
      tiers: # levels at which the checklist can be completed
        bronze: # one section for each of bronze, silver, gold, and platinum
          content: >
            Project has README file that either contains directly or links to resources which answer these questions:
          difficulty: easy # Subjective difficulty descriptor for box centests
          checked: false # Checkbox toggle - Does the project meet the bronze standard for this theme? If so set to true.
          subparts: # Some checklist items have additional sub-checklists some number of which may need to be completed in order to check the box at that tier
            - content: # Text to appear for this sub-part
              checked: false # has the citeria for this sub part been met?
            - content: # multiple of these can be included here as a 'sequence of mappings'
              checked: false
    post_notes: # test (markdown) to include after the checklist items and before the details section
    details: # Text - generally Markdown, but HTML list tags are made use of for their flexibility.
  licensing:
  documentation:
  makingcitable:
  testing:
  automation:
  review:
  distribution:
  portability:
  energyefficiency:
  governance:
```


## Reminder of yaml multiline string syntax

This is used a fair bit in the yaml checklists so I thought it worth highlighting

```
key: | # literal blocks retain line breaks
  This line
  that line
```

this line
that line

```
key: > # Folded block remove them between lines
  this line 
  that line
```

this line that line

```
key: >+ # The + modifier includes a linebrake at the end of a string
key: |- # The - modifier does not include a linebrake at the end of a string
```

```
"\n" # Double quotes are interolated so you can used escaped special characters
'\n' # Single quotes are not so you will get a literal \n not a newline if using them.
```
