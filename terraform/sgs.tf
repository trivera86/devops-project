
resource "aws_security_group" "web" {
    name = "ec2-web-sg"
    description = "Web Security Group"
}

resource "aws_security_group_rule" "web_ingress_http" {
  type            = "ingress"
  from_port       = 80
  to_port         = 80
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.web.id}"
}
resource "aws_security_group_rule" "web_ingress_https" {
  type            = "ingress"
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks     = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.web.id}"
}
