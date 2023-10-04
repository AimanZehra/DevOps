# Ansible

1. To install Ansible on an aws EC2 instace we use:\
    **sudo apt install ansible**
2. To check the version of installed Ansible we use:\
    **ansible --version**
3. To write the files in 10x target servers, we usually write 'Ansible playbooks'
4. But we can write this to create files using some simple commands as well for short files, and this is known as 'ansible adhoc commands'.

5. To run ansible adhoc commands we use:
    ansible inventory file location\
     example:\
    **ansible -i inventory 172.31.26.161**\
     **ansible -i inventory all -m "shell" -a "touch devops"**