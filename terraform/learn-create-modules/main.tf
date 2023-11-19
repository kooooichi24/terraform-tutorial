module "azuread-application" {
  source  = "./modules/azuread-application"

  display_name = "learn-create-modules"
  description  = "This is a sample application for creating modules."
}