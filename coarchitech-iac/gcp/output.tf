output "https_trigger_url"{
    value = google_cloudfunctions_function.function_tracer.https_trigger_url
    description = "https_trigger_url"
}