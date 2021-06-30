variable "project" {
  description = "ID Project ownerin GCP of these resources "
  type        = string  
}
variable "region" {
  description = "Region en GCP"
  type        = string  
}
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
variable "resource" {
  description = "Identifier for resources"
  type        = string
  default     = "gcp-function"
}
variable "storage_class" {
  description = "The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE."
  type        = string
  default     = "STANDARD"
}
variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run."
  type        = bool
  default     = true
}
variable "available_memory_mb" {
  description = "Memory (in MB), available to the function. Default value is 256. Possible values include 128, 256, 512, 1024, etc."
  type        = string
  default     = "256"
}
variable "entry_point" {
  description = "Name of the function that will be executed when the Google Cloud Function is triggered."
  type        = string
  default     = "helloWorld"
}
variable "runtime" {
  description = "The runtime in which the function is going to run. Eg. nodejs10, nodejs12, nodejs14, python37, python38, python39, dotnet3, go113, java11, ruby27"
  type        = string
  default     = "nodejs14"
}
variable "trigger_http" {
  description = "Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS"
  type        = bool
  default     = true
}
variable "role" {
  description = "The role that should be applied"
  type        = string
  default     = "roles/cloudfunctions.invoker"
}
variable "member" {
  description = "Identities that will be granted the privilege in role."
  type        = string
  default     = "allUsers"
}
