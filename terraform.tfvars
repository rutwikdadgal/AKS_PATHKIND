# service principal

# resource group
resource_group_name     = "Pathkind-RG1"
resource_group_location = "Central India"

# Vnet
virtual_network01_name = "AKS_VNET"
vnet01_address_space   = ["172.17.0.0/16"]

# subnets
subnet1_vnet01_name           = "AKSSUBNET"
subnet1_vnet01_address_prefix = ["172.17.2.0/24"]

# AKS
aks_name                 = "Pathkind-AKS"
dns_prefix_aks           = "aks-cluster"
aks_nodepool_name        = "aksnodepool"
aks_node_count           = 1
aks_vm_size              = "Standard_D2s_v3"
aks_auto_scaling_enabled = true
aks_node_min_count       = 1
aks_node_max_count       = 5
aks_identity_type        = "SystemAssigned"
aks_network_plugin       = "kubenet"
aks_Environment          = "staging"
