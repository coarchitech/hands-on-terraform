output "aws_website_endpoint" {
  value       = module.aws_s3_bucket.website_endpoint
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
}
output "gcp_https_trigger_url" {
  value       = module.gcp_function.https_trigger_url
  description = "URL which triggers function execution. Returned only if trigger_http is used."
}
output "azure_default_function_hostname" {
  value       = module.azure_function.function_app_default_hostname
  description = "Deployed function app hostname"
}
