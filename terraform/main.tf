

/*resource "aws_security_group" "ingress" {

}*/

resource "aws_autoscaling_policy" "web" {
  name                   = "web-scaling-policy"
  scaling_adjustment     = 4
  adjustment_type        = "ChangeInCapacity"
  cooldown               = 300
  autoscaling_group_name = "${aws_autoscaling_group.web.name}"
}

resource "aws_launch_configuration" "web" {
  image_id = "${data.aws_ami.web_ami.id}"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.web.id}"]
}

resource "aws_autoscaling_group" "web" {
  availability_zones        = "${var.availability_zones}"
  name                      = "${var.asg_name}"
  max_size                  = 5
  min_size                  = 2
  health_check_grace_period = 300
  health_check_type         = "ELB"
  force_delete              = true
  launch_configuration      = "${aws_launch_configuration.web.name}"
}

resource "aws_autoscaling_attachment" "web_asg_attachment" {
  autoscaling_group_name = "${aws_autoscaling_group.web.id}"
  elb                    = "${aws_elb.web.id}"
}
