resource "aws_cloudwatch_log_group" "nginx" {
    name = "nginx"
}

resource "aws_cloudwatch_log_stream" "nginx" {
    name = "NginxLogStream"
    log_group_name = "${aws_cloudwatch_log_group.nginx.name}"
}
