## Docker

**Docker is a containerization platform that provides easy way to containerize your applications, which means, using Docker you can build container images, run the images to create containers and also push these containers to container regestries such as DockerHub, Quay.io and so on.**

## Docker LifeCycle

We can use the above Image as reference to understand the lifecycle of Docker.

There are three important things,

1. docker build -> builds docker images from Dockerfile
2. docker run -> runs container from docker images
3. docker push -> push the container image to public/private regestries to share the docker images.


## Terminologies

**Docker daemon**\
The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.

**Docker client**\
The Docker client (docker) is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.

**Docker Desktop**\
Docker Desktop is an easy-to-install application for your Mac, Windows or Linux environment that enables you to build and share containerized applications and microservices. Docker Desktop includes the Docker daemon (dockerd), the Docker client (docker), Docker Compose, Docker Content Trust, Kubernetes, and Credential Helper. For more information, see Docker Desktop.

**Docker registries**\
A Docker registry stores Docker images. Docker Hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default. You can even run your own private registry.

When you use the docker pull or docker run commands, the required images are pulled from your configured registry. When you use the docker push command, your image is pushed to your configured registry. Docker objects

When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects. This section is a brief overview of some of those objects.

**Dockerfile**\
Dockerfile is a file where you provide the steps to build your Docker Image.

**Images**\
An image is a read-only template with instructions for creating a Docker container. Often, an image is based on another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.

You might create your own images or you might only use those created by others and published in a registry. To build your own image, you create a Dockerfile with a simple syntax for defining the steps needed to create the image and run it. Each instruction in a Dockerfile creates a layer in the image. When you change the Dockerfile and rebuild the image, only those layers which have changed are rebuilt. This is part of what makes images so lightweight, small, and fast, when compared to other virtualization technologies.


## 1.Install Docker

We can create an Ubuntu EC2 Instance on AWS and run the below commands to install docker.

```plaintext
sudo apt update
sudo apt install docker.io -y
```

### 2.Start Docker and Grant Access
Start the Docker daemon and grant acess to the user they want to use to interact with docker and run docker commands.
Always ensure the docker daemon is up and running.

A easy way to verify your Docker installation is by running the below command

```plaintext
docker run hello-world
```
If the output says:

```plaintext
docker: Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Post "http://%2Fvar%2Frun%2Fdocker.sock/v1.24/containers/create": dial unix /var/run/docker.sock: connect: permission denied.
See 'docker run --help'.
```

This can mean two things,

1. Docker deamon is not running.
2. Your user does not have access to run docker commands.

## 3.Start Docker daemon
We use the below command to verify if the docker daemon is actually started and Active

```plaintext
sudo systemctl status docker
```
If we notice that the docker daemon is not running, we can start the daemon using the below command

```plaintext
sudo systemctl start docker
```

### 4.Grant Access to your user to run docker commands
To grant access to your user to run the docker command, you should add the user to the Docker Linux group. Docker group is create by default when docker is installed.

```plaintext
sudo usermod -aG docker ubuntu
```
In the above command ubuntu is the name of the user, we can change the username appropriately.

### 5. Docker is Installed, up and running 
Use the same command again, to verify that docker is up and running.

```plaintext
docker run hello-world
```

Output should look like:
```plaintext
....
....
Hello from Docker!
This message shows that your installation appears to be working correctly.
...
...
```

## Writing Docker file

### Login to Docker [Create an account with https://hub.docker.com/]

```plaintext
docker login
```

```plaintext
Login with your Docker ID to push and pull images from Docker Hub. If you don't have a Docker ID, head over to https://hub.docker.com to create one.
Username: abhishekf5
Password:
WARNING! Your password will be stored unencrypted in /home/ubuntu/.docker/config.json.
Configure a credential helper to remove this warning. See
https://docs.docker.com/engine/reference/commandline/login/#credentials-store

Login Succeeded
```

### Build the first Docker Image

we need to change the username accoringly in the below command

```plaintext
docker build -t aiman07/my-first-docker-image:v1
```

### Verify Docker Image is created
```plaintext
docker images
```

### Run the First Docker Container

```plaintext
docker build -t aiman07/my-first-docker-image
```

### Push the Image to DockerHub
docker push aiman07/my-first-docker-image