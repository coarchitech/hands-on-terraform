provider "google" {
  # ID Project in GCP
  project = "coarchitech-318414"
  region  = "us-central1"
}
provider "aws" {}

provider "azurerm" {
  features {}
}