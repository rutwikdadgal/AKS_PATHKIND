# Service Principal
variable "subscription_id" {
  description = "Azure Subscription ID"
}

variable "client_id" {
  description = "Service principal ID"
}

variable "client_secret" {
  description = "Service Principal secret"
}

variable "tenant_id" {
  description = "Azure Service principal tenant_id"
}

# Resource group
variable "resource_group_location" {
  type        = string
  description = "Resource group location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group location"
}

#vnet
variable "virtual_network01_name" {
  description = "Name of the second virtual network"
  type        = string
}

variable "vnet01_address_space" {
  description = "Address space for the second virtual network"
  type        = list(string)
}

#Subnet
variable "subnet1_vnet01_name" {
  description = "Name of the second subnet in VNet02"
  type        = string
}

variable "subnet1_vnet01_address_prefix" {
  description = "Address prefix for the second subnet in VNet02"
  type        = list(string)
}

#aks
variable "aks_name" {
  type        = string
  description = "aks name"
}

variable "dns_prefix_aks" {
  type        = string
  description = "dns prefix of aks"
}

variable "aks_nodepool_name" {
  type        = string
  description = "aks nodepool name"
}

variable "aks_node_count" {
  type = number
}

variable "aks_vm_size" {
  type        = string
  description = "aks vm nodes size"
}

variable "aks_auto_scaling_enabled" {
  type        = bool
  description = "autoscating true or false"
}

variable "aks_node_min_count" {
  type        = number
  description = "min node count"
}

variable "aks_node_max_count" {
  type        = number
  description = "max node count"
}

variable "aks_identity_type" {
  type        = string
  description = "managed identity type"
}

variable "aks_network_plugin" {
  type        = string
  description = "network plugin type"
}

variable "aks_Environment" {
  type        = string
  description = "aks environment"
}



