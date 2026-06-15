#!/usr/bin/env bash

pushd .git/hooks
if [[ ! -f pre-commit ]] ; then
	touch pre-commit
	echo '#!/usr/bin/env bash' > pre-commit
	chmod +x pre-commit
fi

# Do a for loop if there is more than one
popd
SORTTSVS_PATH=scripts/sort-tsvs.sh
if [[ ! -f $SORTTSVS_PATH ]] ; then
	echo "Script not found: $SORTTSVS_PATH" >&2
	echo 'Are you sure you are running this in the projects root directory?' >&2
	exit 1
fi
# We get from the second line to not include the shebang
# If more files are included we should not assume it exists and check instead
SORTTSVS=$(tail -n+2 $SORTTSVS_PATH)
pushd .git/hooks
echo "$SORTTSVS" >> pre-commit
echo "Updated pre-commit hooks"
