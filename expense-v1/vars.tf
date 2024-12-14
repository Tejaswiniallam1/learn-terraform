resource "aws_instance" "frontend" {
  ami                    = ami-0b4f379183e5706b9
  instance_type          = "t3.micro"
  vpc_security_group_ids = [sg-0434fb24f059185a8]

  tags = {
    Name = "frontend.dev"
  }
}
resource "aws_instance" "backend" {
  ami                    = ami-0b4f379183e5706b9
  instance_type          = "t3.micro"
  vpc_security_group_ids = [sg-0434fb24f059185a8]

  tags = {
    Name = "backend.dev"
  }
}
resource "aws_instance" "mysql" {
  ami                    = ami-0b4f379183e5706b9
  instance_type          = "t3.micro"
  vpc_security_group_ids = [sg-0434fb24f059185a8]

  tags = {
    Name = "mysql.dev"
  }
}