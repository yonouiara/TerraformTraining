# Configure the OpenStack Provider
provider "openstack" {
   # The Identity authentication URL
  auth_url = "${var.auth_url}"
  # The Name of the Tenant (Identity v2) or Project (Identity v3) to login with
  tenant_name = "${var.tenant_name}"
  # The Username to login with.
  user_name = "${var.user_name}"
  # The Password to login with
  password = "${var.password}"
}
