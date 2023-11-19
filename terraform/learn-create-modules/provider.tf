# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    # azurerm = {
    #   source  = "hashicorp/azurerm"
    #   version = "~> 3.81.0"
    # }

    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.46.0"
    }
  }

  cloud {
    organization = "koichi-furukawa"
    workspaces {
      project = "product-A"
      name = "learn-create-modules"
    }
  }
}

# provider "azurerm" {
#   features {}
# }

provider "azuread" {
  client_id     = var.AZUREAD_ARM_CLIENT_ID
  client_secret = var.AZUREAD_ARM_CLIENT_SECRET
  tenant_id     = var.AZUREAD_ARM_TENANT_ID
}