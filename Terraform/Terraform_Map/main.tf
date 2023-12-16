resource "local_file" "devops" {
        filename = "/home/ubuntu/DevOps/Terraform/Terraform_Map/devops_test.txt"
        content = var.content_map["content1"]
}

resource "local_file" "devops-var" {
        filename = var.filename
        content = var.content_map["content2"]
}
