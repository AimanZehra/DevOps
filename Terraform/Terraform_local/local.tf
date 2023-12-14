# This is an example of a terraform code to automatically generate a text file.

resource "local_file" "Devops" {
        filename = "/home/ubuntu/Terraform/terraform-local/devops-automated.txt"
        content = "This is a test terraform file"
}