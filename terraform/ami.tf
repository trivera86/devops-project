data "aws_ami" "web_ami" {
  most_recent      = true

  filter {
    name   = "name"
    values = ["devops-project*"]
  }

  owners     = ["068980793254"]
}
