module "azurerm_kubernetes_cluster" {
  source = "./modules/azurerm/d/azurerm_kubernetes_cluster"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
