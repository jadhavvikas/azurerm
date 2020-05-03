module "azurerm_private_dns_ptr_record" {
  source = "./modules/azurerm/r/azurerm_private_dns_ptr_record"

  name                = null
  records             = []
  resource_group_name = null
  tags                = {}
  ttl                 = null
  zone_name           = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
