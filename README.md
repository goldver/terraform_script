Terraform basic scripts for AWS infrastructure management: EC2s, Load Balancer, Autoscaling group, Route53 records 
==================

Attributes
==================

| Key | Type | Description | Default |
| --- | ---- | ----------- | ------- |
| ['access_key'] | String | Access key from AMS >> AIM  | 'xxxxxxxxxxxxxxxxx' |
| ['secret_key'] | String | Secret key from AMS >> AIM | 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx' |

| ['ami'] | String | Image ID > AMIs | 'ami-xxxxxxxx' |

| ['record_zone_id'] | String | Zone ID from route53 >> example.com | 'xxxxxxxxxxxxxx' |
| ['record_name'] | String | Url >> for example: https://test.com | 'test' |
| ['record_type'] | String | Record type | CNAME |

| ['lc_name'] | String | Set hash of AMI >> variable ami | '7a87f209' |
| ['min_elb_capacity'] | String | Minimum capacity of load balancer | '0' |
| ['max_size'] | String | Max number of instances | '5' |
| ['min_size'] | String | Min number of instances | '2' |
| ['desired_capacity'] | String | Desired number of instances | '2' |

| ['aws_instance'] | String | Name of future instance | 'test' |
| ['instance_type'] | String | Instance type | 'c3.large' |
| ['key_name'] | String | Key for instance creation | 'xxxxxxxxxx' |
| ['iam_instance_profile'] | String | Chef reader to run a Chef provisioning | 's3_chef_reader' |
| ['user_data'] | String | User data for inializing instance | 'user-data' |

| ['instance_1'] | String | To add a specific instance | 'i-xxxxxxxx' |
| ['count'] | String | How many instances to create | '2' |

Usage
==================
Just include these scripts under separate directory and run:

    terraform plan
    terraform apply
	
Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Michael Vershinin

Support
-------------------
goldver@gmail.com