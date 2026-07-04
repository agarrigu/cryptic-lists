# cryptic-lists

## What is this?

Useful lists and tabulated data to help with cryptic crosswords.

## Contributing

Entries MUST be fodder, **not definitions**.
The only exception is hippology.tsv and ornithology.tsv (maybe textiles and geography),
the reason for this is pure vibes.
Entries SHOULD be singular unless the plural does not just add an 's' to the singular.

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
"Add entries" as the subject followed by a list of key value pairs with some useful info.
Separate keys and values with tabs.
No field is mandatory.
The fields in the example are not exhaustive.
The `date` field is the date the puzzle was published.
Dates should be in the format `YYYY-MM-DD, WEEKDAY`.

When contributing to README.md, or any .md document,
lines MUST be 100 chars or less.
Long lines SHOULD be broken at natural points like commas and periods.
If a line is more than 100 chars with no natural pauses, rephrase it.
There MUST never be more than one consecutive empty line.

Please run `./scripts/sort-tsvs.sh` before committing,
in order to keep the data sorted in alphabetical order.

## Lists and TSVs

- abbreviations.tsv: Abbreviations, acronyms and initialisations

- anthropology.tsv: Some noteworthy people

- botany.tsv: List of (mostly) flowers

- french.tsv: French words

- geography.tsv: Some geographical terms

- hippology.tsv: Some equine terms

- latin.tsv: Latin words and phrases

- ornithology.tsv: List of birds

- synonyms.tsv: Substitutions of fodder for whole words, **not definition **

- textiles.tsv: Fabrics and materials
