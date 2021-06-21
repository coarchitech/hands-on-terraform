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
  default     = "web"
}
variable "acl" {
  description = "Access control list: (private, public-read, public-read-write, aws-exec-read, authenticated-read,  log-delivery-write)"
  type        = string
  default     = "public-read"
}
locals {
  common_tags = (tomap({
    Environment  = var.environment
    Organization = var.organization
    Project      = var.project
  }))
}

