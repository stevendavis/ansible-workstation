# Setup a workstation with Ansible

This repo contains an ansible playbook to setup an Ubuntu workstation with BioInformatics software and utilities.

## How to use

Install Ansible
```
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
```

Clone the repo and run locally, like this:
```
git clone https://github.com/stevendavis/ansible-workstation.git
cd ansible-workstation
ansible-playbook  -vv   -K  local.yml
```

Or pull and run the Ansible playbook
```
sudo ansible-pull -U https://github.com/stevendavis/ansible-workstation.git
```

If you see permission errors, try this:
```
sudo bash -c 'chown ${SUDO_USER} /home/${SUDO_USER}/.ansible'
sudo bash -c 'chown ${SUDO_USER} /home/${SUDO_USER}/.ansible/pull'
sudo bash -c 'chown ${SUDO_USER} /home/${SUDO_USER}/.ansible/tmp'
```
