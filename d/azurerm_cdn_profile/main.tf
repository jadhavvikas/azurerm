terraform {
  required_providers {
    azurerm = ">= 2.2.0"
  }
}

data "azurerm_cdn_profile" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

