module "azurerm_virtual_network_gateway" {
  source = "./modules/azurerm/d/azurerm_virtual_network_gateway"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
