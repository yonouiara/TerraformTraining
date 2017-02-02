resource "openstack_compute_floatingip_v2" "myserver-public-ip" {
   pool = ""
}

# Create a simple server
# Let's try to create our first COMPUTE INSTANCE RESOURCE
resource "openstack_compute_instance_v2" "myserver" {
    # A unique name for the resource, please use cec_id-server
    name = ""
    # The name of the desired image for the server
    image_name = "CentOS-7"
    # The name of the desired flavor for the server
    flavor_name = "Micro-Small"
    # The name of a key pair to put on the server. The key pair must already be created and associated with the tenant's account.
    key_pair = ""

    security_groups = [""]

    network {
        name = ""
        floating_ip = ""
    }
}
