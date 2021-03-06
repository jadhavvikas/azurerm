terraform {
  required_providers {
    azurerm = ">= 2.8.0"
  }
}

data "azurerm_mssql_database" "this" {
  name      = var.name
  server_id = var.server_id

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      read = timeouts.value["read"]
    }
  }

}

