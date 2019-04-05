#!/bin/bash

: ${1?: Must set first arg to access token for Github with scope write:public_key}

# worth a read https://stackoverflow.com/questions/33794842/forcing-curl-to-get-a-password-from-the-environment
cat <<EOF > creds-for-curl-github.netrc
machine api.github.com login matthewcosgrove password $1
EOF
