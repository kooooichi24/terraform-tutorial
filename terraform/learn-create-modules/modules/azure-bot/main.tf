# Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-rg"
  location = var.location
}

# Azure Bot
resource "azurerm_bot_service_azure_bot" "azure-bot" {
  name                = "${var.prefix}-bot"
  resource_group_name = azurerm_resource_group.rg.name
  location            = "global"
  microsoft_app_type  = var.microsoft_app_type
  microsoft_app_id    = var.microsoft_app_id
  sku                 = var.sku
}