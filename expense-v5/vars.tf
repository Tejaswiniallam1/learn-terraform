variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name          = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.small"
    }
  }
}
variable "vpc_security_group_ids" {
  default = ["sg-0434fb24f059185a8"]
}
variable "zone_id" {
  default = "Z042604511V76I8BWBZWX"
}