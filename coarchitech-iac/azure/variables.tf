variable "environment" {
  description = "Environment where resources will be created"
  type        = string
  default     = "sandbox"
}
variable "organization" {
  description = "Organization or entity owner of these resources "
  type        = string
  default     = "coarchitech"
}
variable "project" {
  description = "Project owner of these resources "
  type        = string
  default     = "hands-on-terraform"
}
variable "resource" {
  description = "Identifier for resources"
  type        = string
  default     = "azure-function"
}
variable "region" {
  description = "define the region where the resources going to be created"
  type    = string
  default = "westus"
}
variable "account_tier" {
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  type        = string
  default     = "Standard"
}
variable "account_replication_type" {
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
  type        = string
  default     = "LRS"
}
variable "kind" {
  description = "The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created."
  type        = string
  default     = "FunctionApp"
}
variable "tier" {
  description = "Specifies the plan's pricing tier."
  type        = string
  default     = "Dynamic"
}
variable "size" {
  description = "Specifies the plan's instance size"
  type        = string
  default     = "Y1"
}
resource "random_string" "storage_name" {
  length  = 24
  upper   = false
  lower   = true
  number  = true
  special = false
}
