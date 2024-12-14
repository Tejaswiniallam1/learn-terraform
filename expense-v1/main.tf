resource "aws_instance" "frontend" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0434fb24f059185a8"]

  tags = {
    Name = "frontend.dev"
  }
}
resource "aws_route53_record" "frontend" {
  zone_id = "Z042604511V76I8BWBZWX"
  name    = "frontend.dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0434fb24f059185a8"]

  tags = {
    Name = "backend.dev"
  }
}
resource "aws_route53_record" "backend" {
  zone_id = "Z042604511V76I8BWBZWX"
  name    = "backend.dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0434fb24f059185a8"]

  tags = {
    Name = "mysql.dev"
  }
}
resource "aws_route53_record" "mysql" {
  zone_id = "Z042604511V76I8BWBZWX"
  name    = "mysql.dev"
  type    = "A"
  ttl     = 300
  records = [aws_instance.mysql.private_ip]
}