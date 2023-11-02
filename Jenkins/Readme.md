# Jenkins

## Installation on EC2 Instance
* Go to AWS Console
* Instances(running)
* Launch instances

![Jenkins](https://github.com/AimanZehra/DevOps/blob/main/Jenkins/Files/image.png)

## Install Jenkins
* Pre-Requisites:
```Plaintext
Java (JDK)
```
## Run the below commands to install Java and Jenkins
* Install Java

```Plaintext
sudo apt update
sudo apt install openjdk-11-jre
```
* Verify Java is Installed
```Plaintext
java -version
```
* Now, you can proceed with installing Jenkins
```Plaintext
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```

**NOTE: By default, Jenkins will not be accessible to the external world due to the inbound traffic restriction by AWS. Open port 8080 in the inbound traffic rules as show below.**

* EC2 > Instances > Click on
* In the bottom tabs -> Click on Security
* Security groups
* Add inbound traffic rules as shown in the image (you can just allow TCP 8080 as well, in my case, I allowed All traffic).

![Security Groups](https://github.com/AimanZehra/DevOps/blob/main/Jenkins/Files/image-1.png)

## Login to Jenkins using the below URL:
http://[public IP Address of EC2 Instance]:8080 
**[You can get the ec2-instance-public-ip-address from your AWS EC2 console page]**

Note: If you are not interested in allowing ```All Traffic``` to your EC2 instance 1. Delete the inbound traffic rule for your instance 2. Edit the inbound traffic rule to only allow custom TCP port ```8080```

After you login to Jenkins, - Run the command to copy the Jenkins Admin Password ```- sudo cat /var/lib/jenkins/secrets/initialAdminPassword``` - Enter the Administrator password

![Getting started with jenkins](https://github.com/AimanZehra/DevOps/blob/main/Jenkins/Files/image-2.png)

## Click on Install suggested plugins
![Alt text](https://github.com/AimanZehra/DevOps/blob/main/Jenkins/Files/image-3.png)\
**Wait for the Jenkins to Install suggested plugins**\

![Alt text](https://github.com/AimanZehra/DevOps/blob/main/Jenkins/Files/image-4.png)\
**Create First Admin User or Skip the step [If you want to use this Jenkins instance for future use-cases as well, better to create admin user]**\


![Alt text](https://github.com/AimanZehra/DevOps/blob/main/Jenkins/Files/image-5.png)\
**Jenkins Installation is Successful. You can now starting using the Jenkins**\
![Alt text](https://github.com/AimanZehra/DevOps/blob/main/Jenkins/Files/image-6.png)\

## Install the Docker Pipeline plugin in Jenkins:
* Log in to Jenkins.
* Go to Manage Jenkins > Manage Plugins.
* In the Available tab, search for "Docker Pipeline".
* Select the plugin and click the Install button.
* Restart Jenkins after the plugin is installed.

![Alt text](https://github.com/AimanZehra/DevOps/blob/main/Jenkins/Files/image-7.png)

**Wait for the Jenkins to be restarted.**

## Docker Slave Configuration
Run the below command to Install Docker

```
sudo apt update
sudo apt install docker.io
```

### Grant Jenkins user and Ubuntu user permission to docker deamon.
```
sudo su - 
usermod -aG docker jenkins
usermod -aG docker ubuntu
systemctl restart docker
```

**We can switch the user using the command:**
```
su - jenkins
```

**To ensure docker is ensatlled and runniung we can use the below command:**
```
docker run hello-world
```

Once you are done with the above steps, it is better to restart Jenkins.
```
http://<ec2-instance-public-ip>:8080/restart
```

**The docker agent configuration is now successful.**\

**Command to check on which specific instance jenkins is currently running:**
```
ps -ef | grep jenkins
```

**Command to check the jenkins log**
```
sudo journalctl -u jenkins
```


**Used docker as an agent in the jenkins project setup and found it very helpful in terms of cost and also in terms of efficiency.**