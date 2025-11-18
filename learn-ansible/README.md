# Generate SSH Public and Private Key in Ansible Server
ssh-keygen

# Public Key of Ansible Server
cat ~/.ssh/id_ed25519.pub

# Copy and add Public key of the Ansible server into target servers in known_hosts for login without credentials
~/.ssh/known_hosts

# In Ansible Server

# Test ssh without credentials
ssh <private ip address of target server>

# Create inventory file add hostname
echo "<private ip address of target server>" >> inventory

# Adhoc Ansible Server Commands
ansible -i inventory -m "shell" -a "touch devopsclass"
ansible -i inventory -m "shell" -a "ls -altr"
ansible -i inventory webservers -m "shell" -a "nproc"

# Create first Playbook - first-playbook.yml
---
- name: Install and Start nginx
  hosts: all
  become: true

  tasks:
    - name: Install nginx
      #shell: apt install nginx
      apt:
        name: nginx
        state: present

    - name: Start nginx
      #shell: systemctl start nginx
      service:
        name: nginx
        state: started
# Ansible Playbook
ansible-playbook -i inventory first-playbook.yml


