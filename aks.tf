resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = var.dns_prefix_aks

  default_node_pool {
    name                 = var.aks_nodepool_name
    node_count           = 1
    vm_size              = var.aks_vm_size
    vnet_subnet_id       = azurerm_subnet.akssubnet.id # Link to the private subnet
    auto_scaling_enabled = var.aks_auto_scaling_enabled
    min_count            = var.aks_node_min_count
    max_count            = var.aks_node_max_count
  }


  identity {
    type = var.aks_identity_type
  }

  network_profile {
    network_plugin = var.aks_network_plugin # Use Azure CNI for networking
    #network_policy = "None"
  }

  tags = {
    Environment = var.aks_Environment
  }

  depends_on = [azurerm_resource_group.rg, azurerm_virtual_network.vnet01, azurerm_subnet.akssubnet]
}
