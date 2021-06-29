module "aws_s3_bucket" {
  source = "./aws/"
}
module "gcp_function" {
  source  = "./gcp/"  
}
module "azure_function" {
  source  = "./azure/"
}