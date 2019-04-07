#!/bin/bash

${GITLAB_ACCESS_TOKEN?: Must set GITLAB_ACCESS_TOKEN to token with api scope for read/write public key}
${GITHUB_ACCESS_TOKEN?: Must set GITHUB_ACCESS_TOKEN to token with write:public_key scope for read/write public key}
./install.sh
./init-creds-gitlab.sh ${GITLAB_ACCESS_TOKEN?: Must set GITLAB_ACCESS_TOKEN to token with api scope for read/write public key}
./init-creds-github.sh ${GITHUB_ACCESS_TOKEN?: Must set GITHUB_ACCESS_TOKEN to token with write:public_key scope for read/write public key}
ansible-playbook playbook.yml --ask-become-pass
./delete-creds.sh
