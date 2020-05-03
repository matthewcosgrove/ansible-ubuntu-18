#!/bin/bash
set -eu
: ${GITLAB_ACCESS_TOKEN?: Must set GITLAB_ACCESS_TOKEN to token with api scope for read/write public key}
: ${GITHUB_ACCESS_TOKEN?: Must set GITHUB_ACCESS_TOKEN to token with write:public_key scope for read/write public key}
./install.sh
./init-creds-gitlab.sh ${GITLAB_ACCESS_TOKEN}
./init-creds-github.sh ${GITHUB_ACCESS_TOKEN}
# TODO: Switch these around when find time to split packages into prereqs for day 1 and day2ops
ansible-playbook provision-day2ops.yml --ask-become-pass
ansible-playbook provision-day1ops-git-config.yml
ansible-playbook provision-day1ops.yml --ask-become-pass
./delete-creds.sh
