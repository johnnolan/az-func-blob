resource "azurerm_resource_group" "resource_group" {
  location = var.location
  name     = "${var.project}-${var.environment}-resource-group"
}

resource azurerm_storage_account "resource_group" {
  name                     = "${var.project}${var.environment}storage"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = azurerm_resource_group.resource_group.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_application_insights" "application_insights" {
  name                = "${var.project}-${var.environment}-application-insights"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  application_type    = "Node.JS"
}

resource azurerm_storage_container "blob_storage" {
  name                  = "${var.project}${var.environment}blob"
  storage_account_name  = azurerm_storage_account.resource_group.name
  container_access_type = "private"
}
