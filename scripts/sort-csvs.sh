#!/usr/bin/env	bash

CSVS=*.csv
HEADER_REGEX=$'^([A-Z-]{1,7}\.?,)*[A-Z-]{1,7}\.?$'

if [[ -z $CSVS ]] ; then
	echo 'No .csv files found' >&2
	echo 'Are you sure you are running this in the correct directory?' >&2
	exit 1
fi

for f in $CSVS ; do
	if [[ -n $(grep -E '\s' <<< "$CSVS") ]] ; then
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

