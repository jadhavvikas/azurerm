terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_app_service_custom_hostname_binding" "this" {
  app_service_name    = var.app_service_name
  hostname            = var.hostname
  resource_group_name = var.resource_group_name
  ssl_state           = var.ssl_state
  thumbprint          = var.thumbprint

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

