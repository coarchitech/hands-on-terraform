output "function_app_default_hostname" {
  value       = azurerm_function_app.functions.default_hostname
  description = "Deployed function app hostname"
}
output "invoke_url" {
  value = contains(data.azurerm_function_app.info_app.connection_string, "name")
  description = "Invoke URL of the created function"
}
output "function_id" {
  value = data.azurerm_function_app.info_app.id
  description = "Function Identifier"
}