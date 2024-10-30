#!/bin/sh

git filter-branch --env-filter '
OLD_EMAIL="your_old_email@users.noreply.github.com"
CORRECT_NAME="your_github_username"
CORRECT_EMAIL="your_actual_email@alum.us.es"


if [[ "$GIT_COMMITTER_EMAIL" == *"$OLD_EMAIL"* ]]; then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi


if [[ "$GIT_AUTHOR_EMAIL" == *"$OLD_EMAIL"* ]]; then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags