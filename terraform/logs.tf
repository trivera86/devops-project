resource "aws_cloudwatch_log_group" "nginx" {
    name = "nginx"
}

resource "aws_cloudwatch_log_strean" "nginx" {
    name = "NginxLogStream"
    log_group_name = "${aws_cloudwatch_log_group.nginx.name}"
}
