
# Generaciòn de archivo .ZIP con funcion JS 
data "archive_file" "function" {
  type        = "zip"
  source_dir  = "${abspath(path.root)}/gcp/app/function"
  output_path = "./gcp/app/function/hello-world.zip"
}
# Creaciòn de Storage Bucket para almacenar el .ZIP de la funcion JS
resource "google_storage_bucket" "bucket" {
  name = "storage-stage-function"
  storage_class = "Standard"
  location  = "${var.region}"
  force_destroy = "true"
}
# Cargue del archivo .ZIP con la funcion JS en el Storage Bucket
resource "google_storage_bucket_object" "bucket_stage" {
  name   = "hello-world.zip"
  bucket = "${google_storage_bucket.bucket.name}"
  source = "${data.archive_file.function.output_path}"
}
# Creacion de Cloud Funcion a partir del archivo .ZIP del Storage Bucket
resource "google_cloudfunctions_function" "function_wld" {
  name = "function-wld"
  project = "${var.project}"
  region = "${var.region}"
  available_memory_mb = "256"
  entry_point = "helloWorld"
  runtime = "nodejs14"
  trigger_http = "true"
  source_archive_bucket = "${google_storage_bucket.bucket.name}"
  source_archive_object = "${google_storage_bucket_object.bucket_stage.name}"
}
# Creacion y referencia de IAM entry allUsers con el rol invocador
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function_wld.project
  region         = google_cloudfunctions_function.function_wld.region
  cloud_function = google_cloudfunctions_function.function_wld.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}