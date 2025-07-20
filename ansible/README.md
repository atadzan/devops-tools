## Installing Ansible on Ubuntu
```bash
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
```

## Installing Ansible on Debian
```bash
Debian 12 (Bookworm) -> Ubuntu 22.04 (Jammy) jammy
Debian 11 (Bullseye) -> Ubuntu 20.04 (Focal) focal
Debian 10 (Buster) -> Ubuntu 18.04 (Bionic) bionic

$ UBUNTU_CODENAME=jammy
$ wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
$ echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
$ sudo apt update && sudo apt install ansible
```