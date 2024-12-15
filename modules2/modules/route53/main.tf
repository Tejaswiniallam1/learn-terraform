resource "aws_route53_record" "records" {
  zone_id = "Z042604511V76I8BWBZWX"
  name    = "test"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}