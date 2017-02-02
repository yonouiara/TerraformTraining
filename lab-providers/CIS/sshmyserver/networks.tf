# Manages a V2 neutron security group resource within OpenStack.
resource "openstack_networking_secgroup_v2" "mysecgroup" {
  # A unique name for the security group. Changing this creates a new security group.
  name = "cec_id-secgroup"
  # Description security group for  TerraformTraining
  description = "balababla"
}

#Manages a V2 neutron security group rule resource within OpenStack.
resource "openstack_networking_secgroup_rule_v2" "ssh-sec-rule" {
  # The direction of the rule, valid values are ingress or egress.
  direction = ""
  # The layer 3 protocol type, valid values are IPv4 or IPv6
  ethertype = ""
  # The layer 4 protocol type, valid values are tcp, udp or icmp
  protocol = ""
  # The lower part of the allowed port range, valid integer value needs to be between 1 and 65535
  port_range_min =
  # The higher part of the allowed port range, valid integer value needs to be between 1 and 65535
  port_range_max =
  # The remote CIDR, the value needs to be a valid CIDR (i.e. 192.168.0.0/16).
  remote_ip_prefix = ""
  # The security group id the rule should belong to, the value needs to be an Openstack ID of a security group in the same tenant
  security_group_id = ""
}
