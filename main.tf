# main.tf

terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

# Example: create a text file
resource "local_file" "example" {
  filename = "${path.module}/example.txt"
  content  = "Hello from OpenTofu/Terraform! This is a sample text file."
}

# Another file just to show multiple resources
resource "local_file" "notes" {
  filename = "${path.module}/notes.txt"
  content  = <<EOT
This is another resource-managed text file.
You can put multi-line content here.
EOT
}

resource "null_resource" "example" {}
