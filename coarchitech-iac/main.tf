/*module "bucket_web" {
  source = "./aws/"
}*/

module "gcp"{
  source  = "./gcp/"
  region  = ""
  project = ""
}