resource "null_resource" "test" {
  count =10
}
#by providing count , resource will become list

output "test" {
  value = null_resource.test.*.id
}

# resource "aws_instance" "test" {
#   count                  = 3
#   ami                    = "ami-0b4f379183e5706b9"
#   instance_type          = "t3.micro"
#   vpc_security_group_ids = ["sg-0434fb24f059185a8"]
#
#   tags = {
#     Name = "test-${count.index}"
#   }
# }
variable "components" {
  default = ["frontend","backend","MySQL"]
}
resource "aws_instance" "test" {
  count                  = length(var.components)
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0434fb24f059185a8"]

  tags = {
    Name = element(var.components,count.index )
  }
}