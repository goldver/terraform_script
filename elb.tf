provider "aws" {
    access_key = "${var.access_key}" 
    secret_key = "${var.secret_key}" 
    region = "eu-west-1"
}

# Create a new load balancer
resource "aws_elb" "elb" {
	name = "${var.aws_instance}-elb"
	cross_zone_load_balancing = true
	availability_zones = [
	"eu-west-1a",
	"eu-west-1b",
	"eu-west-1c"]

  listener {
	instance_port = 80
	instance_protocol = "http"
	lb_port = 80
	lb_protocol = "http"
  }

  listener {
	instance_port = 80
	instance_protocol = "http"
	lb_port = 443
	lb_protocol = "https"
	ssl_certificate_id = "arn:aws:iam::xxxxxxxxxxx:server-certificate/cloudfront/wildcard.xxxx.com"
  }

  health_check {
	healthy_threshold = 2
	unhealthy_threshold = 10
	timeout = 59
	target = "HTTP:80/alive"
	interval = 60
  }

# add an existing instances to the ELB
  # instances = [ "${var.instance_1}" ]
  # cross_zone_load_balancing = true
  # idle_timeout = 400
  # connection_draining = true
  # connection_draining_timeout = 400

  tags {
    Name = "${var.aws_instance}-elb"
  }
}


