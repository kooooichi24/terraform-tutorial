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
resource "azurerm_resource_group" "koichi-furukawa-bot-test-rg" {
  name = "koichi-furukawa-bot-test-rg"
  location = "japaneast"
}

# Microsoft Entra ID (Azure AD)
resource "azuread_application_registration" "example" {
  display_name     = "Example Application"
  description      = "My example application"
}