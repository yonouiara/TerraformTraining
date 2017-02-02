# Configure the OpenStack Provider
provider "openstack" {
   # The Identity authentication URL
  auth_url = ""
  # The Name of the Tenant (Identity v2) or Project (Identity v3) to login with
  tenant_name = ""
  # The Username to login with.
  user_name = "ynouiara"
  # The Password to login with
  password = ""
}

# Create a simple server
# Let's try to create our first COMPUTE INSTANCE RESOURCE
resource "openstack_compute_instance_v2" "my-server" {
    # A unique name for the compute instance resource
    name = ""
    # The name of the desired image for the server
    image_name = ""
    # The name of the desired flavor for the server
    flavor_name = ""
    # The name of a key pair to put on the server. The key pair must already be created and associated with the tenant's account.
}

# Other openstack resources we could use
# openstack_compute_floatingip_v2
# openstack_compute_keypair_v2
# openstack_compute_secgroup_v2
# openstack_compute_servergroup_v2
# openstack_compute_volume_attach_v2
