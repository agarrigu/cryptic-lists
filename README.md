# cryptic-lists

## What is this?

Useful lists and tabulated data to help with cryptic crosswords.

Most entries are taken from the Metro cryptic or Guardian's Quiptics,
they are all seen examples.

## Contributing

Entries **must** be fodder, **not** definitions.
The only exception is hippology.tsv and ornithology.tsv (maybe textiles and geography),
the reason for this is pure vibes.

When adding entries the commit format should look like this:
```
Add entries

paper:  The Guardian
puzzle: Quiptic
date:   2024-02-04, Monday
number: 4242
setter: Marvin
notes:  incomplete
```
"Add entries" as the subject followed by a list of key value pairs with some useful info.
Separate keys and values with tabs.
No field is mandatory.
The fields in the example are not exhaustive.
The `date` field is the date the puzzle was published.
Dates should be in the format `YYYY-MM-DD, WEEKDAY`.

When contributing to README.md, or any .md document,
lines **must** be 100 chars or less.
Try to break up long lines in natural points like commas and periods.
If you write a line that's more than 100 chars with no natural pauses, rephrase it.

Please run `./scripts/sort-tsvs.sh` before committing,
in order to keep the data sorted in alphabetical order.

## Lists and TSVs

- abbreviations.tsv: Abbreviations, acronyms and initialisations

- anthropology.tsv: Some noteworthy people

- french.tsv: French words often found as fodder

- geography.tsv: Some geographical terms and their meanings

- hippology.tsv: Some equine terms and their meanings

- latin.tsv: Latin words and phrases often found as fodder

- ornithology.tsv: List of birds

- synonyms.tsv: Synonyms used for fodder, **not** for definition

- textiles.tsv: Fabrics and materials
