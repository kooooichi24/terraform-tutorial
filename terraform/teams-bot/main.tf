# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.46.0"
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

provider "azuread" {
  tenant_id = "ecdef7d4-4b94-49e2-929a-66b12f1a55a1"
}

# Resource Group
resource "azurerm_resource_group" "koichi-furukawa-bot-test-rg" {
  name = "koichi-furukawa-bot-test-rg"
  location = "japaneast"
}

# Microsoft Entra ID (Azure AD)
resource "azuread_application" "example" {
  display_name     = "Example Application"
  description      = "My example application"
}