# SSH key to use for access to nodes
public_key_path = "~/.ssh/id_rsa.pub"

# image to use for bastion, masters, standalone etcd instances, and nodes
image = "Featured-Ubuntu20"

# user on the node (ex. core on Container Linux, ubuntu on Ubuntu, etc.)
ssh_user = "ubuntu"

# 0|1 bastion nodes
number_of_bastions = 0

#flavor_bastion = "<UUID>"

# standalone etcds
number_of_etcd = 0

# masters
number_of_k8s_masters = 1

# Uncomment and set a previously created IP (or list) for the master nodes
# k8s_master_fips = ["149.xxx.xxx.xxx"]

number_of_k8s_masters_no_etcd = 0

number_of_k8s_masters_no_floating_ip = 0

number_of_k8s_masters_no_floating_ip_no_etcd = 0

flavor_k8s_master = "4"

master_allowed_ports = [{"protocol" = "tcp", "port_range_min" = 80, "port_range_max" = 80, "remote_ip_prefix" = "0.0.0.0/0"}, {"protocol" = "tcp", "port_range_min" = 443, "port_range_max" = 443, "remote_ip_prefix" = "0.0.0.0/0"}]

# nodes
# for debugging purposes we can create nodes with floating ip
# in production better use nodes with no floating ip

number_of_k8s_nodes = 1

number_of_k8s_nodes_no_floating_ip = 0

flavor_k8s_node = "4"

# # Uncomment when all nodes will be GPU nodes
# # If you wish to use this var for another reason, add the ansible groups as a comma seperated list
# # E.g "additional-group-1,additional-group2,etc"
# supplementary_node_groups = "gpu-node"

# BEGIN HYBRID CLUSTER CONFIG

# # Set to true by default, but we make it explicit here
# port_security_enabled = true

# # Must be uncommented and set to 0 to use the k8s_nodes variable
# number_of_k8s_nodes = 0
# number_of_k8s_nodes_no_floating_ip = 0

# # "<cluster-name>-k8s-node-" will be prepended to each key name and used to create the instance name.
# # E.g the first item below would result in an instanced named "<cluster-name>-k8s-node-nf-cpu-1"
# # For a full list of options see ./contrib/terraform/openstack/README.md#k8s_nodes
# k8s_nodes = {
#   "nf-cpu-1" = {
#     "az" = "nova"
#     "flavor": "4"
#     "floating_ip": false
#   },
#   "nf-cpu-2" = {
#     "az" = "nova"
#     "flavor": "4"
#     "floating_ip": false
#   },
#   "nf-gpu-1" = {
#     "az" = "nova"
#     "flavor": "10"
#     "floating_ip": false
#     "extra_groups": "gpu-node"
#   },
#   "nf-gpu-2" = {
#     "az" = "nova"
#     "flavor": "10"
#     "floating_ip": false
#     "extra_groups": "gpu-node"
#   },
# }

# END HYBRID CLUSTER CONFIG

# GlusterFS
# either 0 or more than one
#number_of_gfs_nodes_no_floating_ip = 0
#gfs_volume_size_in_gb = 150
# Container Linux does not support GlusterFS
#image_gfs = "<image name>"
# May be different from other nodes
#ssh_user_gfs = "ubuntu"
#flavor_gfs_node = "<UUID>"

# Jetstream 2
external_net = "3fe22c05-6206-4db2-9a13-44f04b6796e6"

floatingip_pool = "public"

# list of availability zones available in your OpenStack cluster
# IU
az_list = ["nova"]
az_list_node = ["nova"]

bastion_allowed_remote_ips = ["0.0.0.0/0"]

# if you only access from a subset of IPs, set this accordingly for
# more security
k8s_allowed_remote_ips = ["0.0.0.0/0"]

# have Kubernetes traffic use the internal IP
use_access_ip = 0

# This is now un-necessary because we use the auto_allocated_network which is preconfigured
# network_dns_domain = "xxx000000.projects.jetstream-cloud.org."

# Reuse the auto allocated router, we do not want to waste floating IPs by having un-necessary routers
# REPLACE with your `auto_allocated_router` ID (use `openstack router list`)
router_id = "15cc195f-02d4-4d9b-ae24-5b2e9e52a13a"

# Reuse the auto-allocated network
use_existing_network = true
network_name = "auto_allocated_network"

# Default subnetpool ID for JetStream2; Let neutron (openstack) do the CIDR
# book-keeping for you
subnetpool_id = "be988956-1bfb-4828-b511-a58229fbd4ac"
