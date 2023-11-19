module "azuread-application" {
  source  = "./modules/azuread-application"

  display_name = "learn-create-modules"
  description  = "This is a sample application for creating modules."
}

module "azure-bot" {
  source  = "./modules/azure-bot"

  prefix             = "learn-create-modules"
  microsoft_app_id   = module.azuread-application.application.application_id
}