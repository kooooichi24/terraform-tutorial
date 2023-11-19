output "client_id" {
  description = "The Client ID of the Application"
  value       = azuread_application.application.application_id
}