variable "external_net" {}

variable "network_name" {}

variable "network_dns_domain" {}

variable "cluster_name" {}

variable "dns_nameservers" {
  type = list
}

variable "port_security_enabled" {
  type = bool
}

variable "subnet_cidr" {}

variable "subnetpool_id" {
  description = "Subnetpool ID block."
  type        = string
  default     = "be988956-1bfb-4828-b511-a58229fbd4ac"
}

variable "use_neutron" {}

variable "router_id" {}
