terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_private_dns_cname_record" "this" {
  name                = var.name
  record              = var.record
  resource_group_name = var.resource_group_name
  tags                = var.tags
  ttl                 = var.ttl
  zone_name           = var.zone_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      read   = timeouts.value["read"]
      update = timeouts.value["update"]
    }
  }

}

