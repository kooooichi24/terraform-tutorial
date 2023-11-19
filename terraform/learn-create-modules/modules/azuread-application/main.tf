# Microsoft Entra ID (Azure AD)
resource "azuread_application" "application" {
  display_name     = var.display_name
  description      = var.description
}