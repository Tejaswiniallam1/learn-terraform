terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
variable "fruits1" {
  default = {
    apple =10
    banana =20
  }
}
variable "fruits2" {
  default = {
    apple ={
      name ="apple"
      quantity =100
    }
    banana ={
      name = "banana"
      quantity =100
    }
  }
}

resource "null_resource" "test1" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command = "echo ${each.key} - ${each.value}"
  }
}