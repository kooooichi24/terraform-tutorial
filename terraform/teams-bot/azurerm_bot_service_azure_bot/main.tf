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
