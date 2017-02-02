LAB PROVIDERS / CIS : My first infra with Terraform on CIS

$ cd SOURCE_FOLDER/TerraformTraining/CIS

1. myserver : Code/configure and deploy your own open stack compute instance on CIS:

1.1. The configuration
$ cd CIS/myserver
# edit infra.tf and fill missing values

1.2 The terraform CLI
# the terraform CLI :
# Validates the Terraform files
$ terraform validate
# Generate and show an execution plan
$ terraform plan
# Builds or changes infrastructure
$ terraform deploy
# Inspect Terraform state or plan
$ terraform show
# Destroy Terraform-managed infrastructure
$ terraform destroy

2. Good practices :

$ cd ../somegoodpractices

2.1 Split your code in several tf files :
  - openstack.tf contains the openstack provider configuration
  - instances.tf contains the instances configuration.
  - variables contains variables.

2.2 Avoid hard-coding values like username, passwords, etc, by defining and using variables.

2.2.1 Define variables
Open and read variables.tf
The definition of an empty variable is :
variable "var_name" {}

2.2.2 Use variables in your configuration
Edit openstack.tf and look how variables are used.

2.2.3 Assign variables
From a file / command line flags / cli input
Have a look to terraform.tfvars
$ terraform plan -var 'password='
$ terraform apply


3. Ping and SSH myserver :

$ cd CIS/sshmyserver
What is missing to ssh your machine ?
  - a security group and rule to allow ssh
  - floating ip (a public one)
  - a key pair to perform SSH authentication.

Edit networks.tf
Add a security group
Add a security rule to open the ssh port

Edit instances.tf
Add a SSH key pair
Add a Floating IP

Add a look to output.tf
It define an output to show us the public IP address if the compute instance that we create.



$ terraform plan
$ terraform apply
Retrieve the public IP address
$ terraform show
$ chmod 0600 tf-labs.pem
$ ssh -i tf-labs.pem cloud-user@IP
