module "azurerm_shared_image" {
  source = "./modules/azurerm/d/azurerm_shared_image"

  gallery_name        = null
  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
