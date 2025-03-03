output "router_id" {
  value = "%{if var.use_neutron == 1} ${var.router_id == null ? element(concat(openstack_networking_router_v2.k8s.*.id, [""]), 0) : var.router_id} %{else} %{endif}"
}

output "network_id" {
  value = element(concat(data.openstack_networking_network_v2.k8s.*.id, [""]),0)
}
