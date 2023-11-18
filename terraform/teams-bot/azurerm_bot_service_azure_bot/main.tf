# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.81.0"
    }
  }

  cloud {
    organization = "koichi-furukawa"
    workspaces {
      project = "product-A"
      name = "azurerm_bot_service_azure_bot"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "bot-test-rg" {
  name = "bot-test-rg"
  location = "japaneast"
}

# Azure Bot
resource "azurerm_bot_service_azure_bot" "example" {
  name                = "koichi-furukawa-azure-bot-test"
  resource_group_name = azurerm_resource_group.bot-test-rg.name
  location            = "global"
  microsoft_app_type  = "MultiTenant"
  microsoft_app_id    = "6a72ef09-60c3-4e4d-9b01-cfdf184bd17d"
  sku                 = "F0"
}