# Region donde se desea generar la infraestructura
variable "region"{
  description = "Region en GCP"
  type        = string
  default     = "us-central1"
}
# Nombre del proyecto GCP
variable "project"{
  description = "Nombre del proyecto en GCP"
  type        = string
}
