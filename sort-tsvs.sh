#!/usr/bin/env	bash

TSVS=*.tsv
HEADER_REGEX=$'^([A-Z-]{1,7}\.?\t)*[A-Z-]{1,7}\.?$'

[[ -z $TSVS ]] && echo 'No .tsv files found' >&2 && exit 1

for f in $TSVS ; do
	if [[ -n $(grep -E '\s' <<< "$TSVS") ]] ; then
		echo 'Error: File name should not contain space characters.'
		echo "Guilty file: $f"
		exit 1
	fi
	HEADER=$(head -n1 "$f")	
	if [[ ! "$HEADER" =~ $HEADER_REGEX ]] ; then
		echo 'Error: Unexpected or missing table header row' >&2
		exit 1
	fi
	tail -n+2 "$f" | sort -o "$f"
	sed -i "1i $HEADER" "$f"
	echo "Sorted $f"
done

