# Configure the Azure provider
terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.46.0"
    }
  }

  cloud {
    organization = "koichi-furukawa"
    workspaces {
      project = "product-A"
      name = "azure_ad_application"
    }
  }
}

provider "azuread" {}

# Microsoft Entra ID (Azure AD)
resource "azuread_application" "example" {
  display_name     = "Example Application"
  description      = "My example application"
}