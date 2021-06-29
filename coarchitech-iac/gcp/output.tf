# URL de consumo de la Cloud Function
output "https_trigger_url" {
  value       = google_cloudfunctions_function.function_wld.https_trigger_url
  description = "URL which triggers function execution. Returned only if trigger_http is used."
}