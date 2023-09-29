# Deploying an Application on AWS EC2 Instance

## Test the project locally
1. Clone the project
2. Setup the following environment variables - (.env) file
3. Initialise and start the project

## Set up an AWS EC2 instance
1. Create an IAM user & login to your AWS Console
    Access Type - Password
    Permissions - Admin
2. Create an EC2 instance
    Select an OS image - Ubuntu
    Create a new key pair & download .pem file
    Instance type - t2.micro
3. Connecting to the instance using ssh

(ssh -i instance.pem ubunutu@<IP_ADDRESS>)

## Configuring Ubuntu on remote VM
1. Updating the outdated packages and dependencies
(sudo apt update)

2. Install Git
3. Configure Package


## Deploying the project on AWS
1. Clone the project in the remote VM
2. Setup the following environment variables - (.env) file
3. Initialise and start the project


NOTE - We will have to edit the inbound rules in the security group of our EC2, in order to allow traffic from our particular port