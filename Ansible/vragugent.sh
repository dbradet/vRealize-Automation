export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/root/bin
yum -y install epel-release
yum -y install ansible git
cd /tmp
echo "localhost ansible_connection=local" >> /etc/ansible/hosts
git clone https://github.com/dbradet/vRealize-Automation/Ansible/
cd ansible-examples/$Playbook/
ansible-playbook site.yml
