module "azurerm_mariadb_server" {
  source = "./modules/azurerm/d/azurerm_mariadb_server"

  name                = null
  resource_group_name = null

  timeouts = [{
    read = null
  }]
}
