module "azurerm_healthcare_service" {
  source = "./modules/azurerm/d/azurerm_healthcare_service"

  location            = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
