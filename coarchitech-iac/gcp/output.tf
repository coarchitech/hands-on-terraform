# URL de consumo de la Cloud Function
output "https_trigger_url"{
    value = google_cloudfunctions_function.function_wld.https_trigger_url
    description = "https_trigger_url"
}