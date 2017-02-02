LAB PROVIDERS : AWS :

$ cd SOURCE_FOLDER/TerraformTraining/AWS

You'll learn to :
  - create a EC2 instance through a terraform configuration
  - access this new instance through SSH
  - import a resource (optional)
  - create a VPC (optional)

1. My Server

1.1 AWS configuration
$ cd myserver
# Have a look to tf files and

Retrieve you AWS SECRETS (USER and KEY).
 - Don't use your root account
 - Create a new user
 - Create a group with EC2Full strategy

Select the Francfort region (eu-central-1).

update terraform.tfvars

1.2 Create your server

# the terraform CLI :
# Validates the Terraform files
$ terraform validate
# Generate and show an execution plan
$ terraform plan
# Builds or changes infrastructure
$ terraform apply
$ terraform show
$ terraform destroy

-> Have a look to your AWS console
-> Try to SSH : ssh -i aws-tf-labs.pem ec2-user@INSTANCE_IP_ADDRESS
Is it working ? Why ?

1.2 Create ssh key
Create localy a SSH key : ssh-keygen -t rsa -b 4096 -C "ynouiara@cisco.com"
For the name use : cloud-corner-key
Create it in instances.tf
resource "aws_key_pair" "cloud-corner-key" {
  key_name = "cloud-corner"
  public_key = "the content of your public key"
}

1.3 Create a SSH security rule ressource for allowing SSH, you can use this template :

resource "aws_security_group_rule" "allow_ssh" {
    type = "ingress"
    from_port =
    to_port =
    protocol = ""
    cidr_blocks = [""]

    security_group_id = ""
}

To go further :

2. Networking : use Terraform to create a VPC, networking

2.1
Update main.tf
# Generate and show an execution plan
$ terraform plan
# Builds or changes infrastructure
$ terraform deploy
$ terraform show
$ terraform destroy

3. Import
Import an existing ressource :

#The terraform import command is used to import existing infrastructure.

#The command currently can only import one resource at a time. This means you can't yet point Terraform import to an entire collection of resources such as an AWS VPC and import all of it. A future version of Terraform will be able to do this.
$ terraform import aws_instance.mywebserver id
$ terraform show
# As a result of the above command, the resource is put into the state file. If you run terraform plan, you should see Terraform plan your resource for destruction. You now have to create a matching configuration so that Terraform doesn't plan a destroy.
$ terraform plan
#backup a plan
$ terraform state -state aws.bak
# destroy
$ terraform apply
