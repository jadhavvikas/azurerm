module "azurerm_subscription" {
  source = "./modules/azurerm/d/azurerm_subscription"

  subscription_id = null

  timeouts = [{
    read = null
  }]
}
