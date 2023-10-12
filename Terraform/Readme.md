## Install Terraform

**To deploy infrastructure with Terraform:**

![IAC Terraform](image-1.png)

**Scope** - Identify the infrastructure for your project.\
**Author** - Write the configuration for your infrastructure.\
**Initialize** - Install the plugins Terraform needs to manage the infrastructure.\
**Plan** - Preview the changes Terraform will make to match your configuration.\
**Apply** - Make the planned changes.


### Linux: 

Ensure that our system is up to date and we have installed the gnupg, software-properties-common, and curl packages installed. we will use these packages to verify HashiCorp's GPG signature and install HashiCorp's Debian package repository.

```plaintext
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```

Install the HashiCorp GPG key.

```plaintext
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
```

Verify the key's fingerprint.

```plaintext
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
```

Add the official HashiCorp repository to your system. The lsb_release -cs command finds the distribution release codename for your current system, such as buster, groovy, or sid.

```plaintext
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
```

Download the package information from HashiCorp.

```plaintext
sudo apt update
```

Install Terraform from the new repository.

```plaintext
sudo apt-get install terraform
```
