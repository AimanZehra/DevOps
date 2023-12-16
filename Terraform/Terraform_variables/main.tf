resource "local_file" "devops" {
	filename = "/home/ubuntu/DevOps/Terraform/Terraform_variables/devops_test.txt"
	content = "This is a devops test file"
}

resource "local_file" "devops-var" {
	filename = var.filename
	content = var.content
}
