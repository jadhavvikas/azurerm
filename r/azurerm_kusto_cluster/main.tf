terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_kusto_cluster" "this" {
  enable_disk_encryption  = var.enable_disk_encryption
  enable_streaming_ingest = var.enable_streaming_ingest
  location                = var.location
  name                    = var.name
  resource_group_name     = var.resource_group_name
  tags                    = var.tags

  dynamic "sku" {
    for_each = var.sku
    content {
      capacity = sku.value["capacity"]
      name     = sku.value["name"]
    }
  }

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

