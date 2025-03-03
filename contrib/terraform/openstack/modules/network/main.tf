resource "openstack_networking_router_v2" "k8s" {
  name                = "${var.cluster_name}-router"
  count               = var.use_neutron == 1 && var.router_id == null ? 1 : 0
  admin_state_up      = "true"
  external_network_id = var.external_net
}

data "openstack_networking_router_v2" "k8s" {
  router_id = var.router_id
  count     = var.use_neutron == 1 && var.router_id != null ? 1 : 0
}

data "openstack_networking_network_v2" "k8s" {
  name                  = var.network_name
  count                 = 1
}
