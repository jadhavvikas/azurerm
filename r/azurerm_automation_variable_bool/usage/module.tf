module "azurerm_automation_variable_bool" {
  source = "./modules/azurerm/r/azurerm_automation_variable_bool"

  automation_account_name = null
  description             = null
  encrypted               = null
  name                    = null
  resource_group_name     = null
  value                   = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
