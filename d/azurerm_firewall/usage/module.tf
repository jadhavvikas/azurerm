module "azurerm_firewall" {
  source = "./modules/azurerm/d/azurerm_firewall"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
