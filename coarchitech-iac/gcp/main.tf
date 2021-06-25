
data "archive_file" "function" {
  type        = "zip"
  source_dir  = "${abspath(path.root)}/gcp/app/function"
  output_path = "function/hello-world.zip"
}

resource "google_storage_bucket" "bucket" {
  name = "storage-stage-function"
  storage_class = "Standard"
  location  = "${var.region}"
  force_destroy = "true"
}

resource "google_storage_bucket_object" "bucket_stage" {
  name   = "hello-world.zip"
  bucket = "${google_storage_bucket.bucket.name}"
  source = "${data.archive_file.function.output_path}"
}

resource "google_cloudfunctions_function" "function_tracer" {
  name = "tracer-function"
  project = "${var.project}"
  region = "${var.region}"
  available_memory_mb = "256"
  entry_point = "helloWorld"
  runtime = "nodejs14"
  trigger_http = "true"
  source_archive_bucket = "${google_storage_bucket.bucket.name}"
  source_archive_object = "${google_storage_bucket_object.bucket_stage.name}"
}


# IAM entry for all users to invoke the function
resource "google_cloudfunctions_function_iam_member" "invoker" {
  project        = google_cloudfunctions_function.function_tracer.project
  region         = google_cloudfunctions_function.function_tracer.region
  cloud_function = google_cloudfunctions_function.function_tracer.name

  role   = "roles/cloudfunctions.invoker"
  member = "allUsers"
}