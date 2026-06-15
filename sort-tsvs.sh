#!/usr/bin/env	bash

TSVS=*.tsv
HEADER_REGEX=$'^([A-Z-]{1,7}\.?\t)*[A-Z-]{1,7}\.?$'

if [[ -z $TSVS ]] ; then
	echo 'No .tsv files found' >&2
	echo 'Are you sure you are running this in the correct directory?' >&2
	&& exit 1

for f in $TSVS ; do
	if [[ -n $(grep -E '\s' <<< "$TSVS") ]] ; then
		echo 'Error: File name should not contain space characters.' >&2
		echo "Guilty file: $f" >&2
		continue
	fi
	HEADER=$(head -n1 "$f")	
	if [[ ! "$HEADER" =~ $HEADER_REGEX ]] ; then
		echo 'Error: Unexpected or missing table header row' >&2
		echo "Guilty file: $f" >&2
		continue
	fi
	tail -n+2 "$f" | sort -o "$f"
	sed -i "1i $HEADER" "$f"
	echo "Sorted $f"
done

