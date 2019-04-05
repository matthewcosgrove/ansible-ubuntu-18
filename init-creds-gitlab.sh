#!/bin/bash

: ${1?: Must set first arg to access token for Gitlab with scope api}

cat <<EOF > creds-for-curl-gitlab.txt
# https://curl.haxx.se/docs/manpage.html#-K
--header "PRIVATE-TOKEN: $1"
EOF
