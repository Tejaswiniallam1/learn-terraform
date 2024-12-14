variable "instance_type" {
  default = "t3.micro"
}
variable "vpc_security_group_ids" {
  default = ["sg-0434fb24f059185a8"]
}
variable "zone_id" {
  default = "Z042604511V76I8BWBZWX"
}
variable "components" {
  default = ["frontend","backend","mysql"]
}