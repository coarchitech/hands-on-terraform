module "aws_s3_bucket" {
  source = "./aws/"
}

module "gcp_function" {
  source  = "./gcp/"
  project = "coarchitech-318414"
  region  = "us-central1"
}
/*
module "azure_function" {
  source  = "./azure/"
}*/
