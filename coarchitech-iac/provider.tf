provider "google" {
  project = "coarchitect"
  region  = "us-central1"
}
provider "aws" {}

provider "azurerm" {
  features {}
}