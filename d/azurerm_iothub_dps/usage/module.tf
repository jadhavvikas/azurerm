module "azurerm_iothub_dps" {
  source = "./modules/azurerm/d/azurerm_iothub_dps"

  name                = null
  resource_group_name = null
  tags                = {}

  timeouts = [{
    read = null
  }]
}
