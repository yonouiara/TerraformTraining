# Create a simple server
# Let's try to create our first COMPUTE INSTANCE RESOURCE
resource "openstack_compute_instance_v2" "myserver" {
    # A unique name for the resource, please use cec_id-server
    name = "myserver"
    # The name of the desired image for the server
    image_name = "CentOS-7"
    # The name of the desired flavor for the server
    flavor_name = "Micro-Small"
}
