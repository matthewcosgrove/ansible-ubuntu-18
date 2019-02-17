Set up on a vanilla OS install kind of be like..

```
sudo apt-get install git vim
git clone https://github.com/matthewcosgrove/ansible-ubuntu-18
cd ansible-ubuntu-18/
./install.sh
./init-creds.sh ${GITLAB_ACCESS_TOKEN?: Must set GITLAB_ACCESS_TOKEN to token with api scope for read/write public key}
ansible-playbook playbook.yml --ask-become-pass
./delete-creds.sh
# to check packages installed
# - name: show them
#   debug: var=ansible_facts.packages
```
