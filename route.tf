
# sett record to route 53
resource "aws_route53_record" "elb" {
	zone_id = "${var.record_zone_id}"
	name = "${var.record_name}"
	type = "${var.record_type}"
	ttl = "60"
	records = ["${aws_elb.elb.dns_name}"]
}

