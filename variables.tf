# Secure params ######################
variable "access_key" 					{ default = "xxxxxxxxxxxxxxxxx" } # Access key from AMS >> AIM 
variable "secret_key" 					{ default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" } # Secret key from AMS >> AIM 

# Image - AMI ########################
variable "ami" 							{ default = "ami-xxxxxxxx" } # Image ID > AMIs

# Route53 params #####################
variable "record_zone_id"  				{ default = "xxxxxxxxxxxxxx" } # Zone ID from route53 >> gett.com
variable "record_name"  				{ default = "test" } # Url >> for example: https://test.com
variable "record_type"  				{ default = "CNAME" } # Record type

# Auto Scaling group #################
variable "lc_name"  				    { default = "7a87f209" } # Set hash of AMI >> variable ami
variable "min_elb_capacity"             { default = "0" } # Minimum capacity of load balancer
variable "max_size"                     { default = "5" } # Max number of instances
variable "min_size"                     { default = "2" } # Min number of instances
variable "desired_capacity"				{ default = "2" } # Desired number of instances

# Instance params ####################
variable "aws_instance" 				{ default = "test" } # Name of future instance
variable "instance_type" 				{ default = "c3.large" } # Instance of future type
variable "key_name" 					{ default = "xxxxxxxxxx" } # Key for instance creation
variable "iam_instance_profile" 		{ default = "s3_chef_reader" } # Chef reader to run a Chef provisioning
variable "user_data" 					{ default = "user-data" } # user data for inializing instance

#variable "instance_1" 					{ default = "i-xxxxxxxx"} # To add a specific instance
variable "count" 						{ default = "2" } # How many instances to create