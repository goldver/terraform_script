
# resource "aws_instance" "instance" {

#     count = "${var.count}" 
#     ami = "${var.ami}" 
#     instance_type = "${var.instance_type}"
#     key_name = "${var.key_name}"
#     iam_instance_profile = "${var.iam_instance_profile}"

#     security_groups = [
#       "webapp"
#     ]

#     tags {
#         Name = "${var.aws_instance}"
#         stackdriver_monitor = "false"
#     }
#     user_data = "${file("${var.user_data}.txt")}"
# }

# resource "aws_elb_attachment" "elb_attachment" {
#     count = "${var.count}"    
#     elb      = "${aws_elb.elb.id}" # Elb name
#     instance = "${element(aws_instance.instance.*.id, count.index)}"
#     #instance = "${aws_instance.webapp_test.id}" # for a single instance
# }

