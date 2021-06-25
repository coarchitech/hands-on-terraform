<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.26 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.64.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.1.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_service_plan.asp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan) | resource |
| [azurerm_function_app.functions](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/function_app) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [null_resource.function_app_publish](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [random_string.storage_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string) | resource |
| [azurerm_function_app.info_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/function_app) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | `"dev"` | no |
| <a name="input_location"></a> [location](#input\_location) | n/a | `string` | `"westus"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `"coarchitech"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_app_default_hostname"></a> [function\_app\_default\_hostname](#output\_function\_app\_default\_hostname) | Deployed function app hostname |
| <a name="output_function_id"></a> [function\_id](#output\_function\_id) | n/a |
| <a name="output_invoke_url"></a> [invoke\_url](#output\_invoke\_url) | n/a |
<!-- END_TF_DOCS -->