# Ansible

**What is Ansible?** 
Ansible is an automation tool designed for orchestrating infrastructure, applications, and networks. It uses a declarative language to describe system configurations and automates tasks without the need for agents on remote systems. Ansible is known for its simplicity, flexibility, and scalability, making it a popular choice for DevOps teams.

**Key Concepts:**

**Inventory:** Ansible uses an inventory file to define and organize your target nodes. This file lists the hosts you want to manage and categorizes them into groups.\
**Playbooks:** Playbooks are written in YAML and define a set of tasks to be executed on one or more hosts. They describe the desired state of a system.\
**Modules:** Ansible modules are reusable, standalone scripts that perform specific tasks. Modules are executed on target nodes to bring them to the desired state.


**https://blog.devops.dev/automate-your-infrastructure-with-ansible-a-step-by-step-guide-a85223c6f02f**





*  To install Ansible on an aws EC2 instace (Master Node) we use:\

``` 
    sudo apt update
    sudo apt install ansible
```
*  To check the version of installed Ansible we use:\

```
    ansible --version
```

*  Create and edit the host file (**The Ansible hosts file is a configuration file that contains a list of hosts or servers that Ansible can manage. The hosts file is located at /etc/ansible/hosts on the Ansible control node, and it is used to define the inventory of hosts that Ansible can manage.**)

```
    sudo mkdir /etc/ansible
    sudo nano /etc/ansible/hosts
```

*  To write the files in 10x target servers, we usually write 'Ansible playbooks'
*  But we can write this to create files using some simple commands as well for short files, and this is known as 'ansible adhoc commands'.

*  To run ansible adhoc commands we use:
    ansible inventory file location\
     example:\
    **ansible -i inventory 172.31.26.161**\
     **ansible -i inventory all -m "shell" -a "touch devops"**


