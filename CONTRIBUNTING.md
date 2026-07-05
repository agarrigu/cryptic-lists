# Contributing

## Entry Philosophy

Entries MUST be fodder, **not definitions**.
The only exception is hippology.tsv and ornithology.tsv (maybe textiles and geography),
the reason for this is pure vibes.
Entries SHOULD be singular unless the plural does not just add an 's' to the singular.
Files MUST be sorted in alphabetical order.
Files MUST NOT contain duplicates.

## Commit format

When adding entries the commit message should look like this:
```
Add entries

paper:  The Guardian
puzzle: Quiptic
date:   2024-02-04, Monday
number: 4242
setter: Marvin
notes:  incomplete
```
The subject should be "Add entries" followed by a list of key value pairs with some useful info.
Separate keys and values with tabs.
No field is mandatory.
The fields in the example are not exhaustive.
The `date` field is the date the puzzle was published.
Dates should be in the format `YYYY-MM-DD, WEEKDAY`.

Run `./scripts/sort-tsvs.sh` before committing,
in order to keep the data sorted in alphabetical order.

## Markdown format

Lines MUST be 100 chars or less.
Long lines SHOULD be broken at natural points like commas and periods.
If a line is more than 100 chars with no natural pauses, rephrase it.
There MUST NOT be two or more consecutive empty line.
