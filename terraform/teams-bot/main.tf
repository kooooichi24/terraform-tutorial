# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  cloud {
    organization = "koichi-furukawa"
    workspaces {
      project = "product-A"
      name = "teams-bot"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "koichi-furukawa-bot-test" {
  name = "koichi-furukawa-bot-test"
  location = "japaneast"
}

# Microsoft Entra ID (Azure AD)
# resource "azuread_application" "koichi-furukawa-test-bot" {}