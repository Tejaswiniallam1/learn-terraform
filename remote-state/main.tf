terraform {
  backend "s3" {
    bucket = "tejudevops77"
    key = "test/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "null_resource" "test" {}