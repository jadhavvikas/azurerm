module "azurerm_user_assigned_identity" {
  source = "./modules/azurerm/d/azurerm_user_assigned_identity"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
