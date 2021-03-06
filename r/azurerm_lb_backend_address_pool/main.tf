terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_lb_backend_address_pool" "this" {
  loadbalancer_id     = var.loadbalancer_id
  name                = var.name
  resource_group_name = var.resource_group_name

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

