terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

resource "azurerm_cosmosdb_cassandra_keyspace" "this" {
  account_name        = var.account_name
  name                = var.name
  resource_group_name = var.resource_group_name
  throughput          = var.throughput

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

