
resource "aws_launch_configuration" "lc" {
	name = "lc-${var.lc_name}" 
	image_id = "${var.ami}" 
	instance_type = "${var.instance_type}"
	key_name = "${var.key_name}"
	iam_instance_profile = "s3_chef_reader"
	security_groups = [
	"sg-xxxxxxxx"
	]

	lifecycle {
		create_before_destroy = true
	}
    user_data = "${file("${var.user_data}.txt")}"
}

resource "aws_autoscaling_group" "asg" {
	availability_zones = ["eu-west-1a", "eu-west-1b",  "eu-west-1c"]
	name = "asg-${var.aws_instance}"
	load_balancers = ["${aws_elb.elb.id}"]
	min_elb_capacity = "${var.min_elb_capacity}"
	max_size = "${var.max_size}"
	min_size = "${var.min_size}"
	health_check_grace_period = 300
	health_check_type = "ELB"
	desired_capacity = "${var.desired_capacity}"
	launch_configuration = "${aws_launch_configuration.lc.id}"
	depends_on = ["aws_launch_configuration.lc"]

	tag {
		key = "Name"
		value = "asg-${var.aws_instance}"
		propagate_at_launch = true
	}
}