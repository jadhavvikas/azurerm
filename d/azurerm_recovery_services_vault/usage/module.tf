module "azurerm_recovery_services_vault" {
  source = "./modules/azurerm/d/azurerm_recovery_services_vault"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
