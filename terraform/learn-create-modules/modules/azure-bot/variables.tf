variable "prefix" {
  type        = string
  description = "Prefix for all resources"
}

variable "location" {
  type        = string
  description = "Location for all resources"
  default     = "japaneast"
}

variable "microsoft_app_id" {
  type        = string
  description = "Microsoft App ID (Client ID)"
}

variable "microsoft_app_type" {
  type        = string
  description = "Microsoft App Type"
  default     = "MultiTenant"
}

variable "sku" {
  type        = string
  description = "SKU"
  default     = "F0"
}