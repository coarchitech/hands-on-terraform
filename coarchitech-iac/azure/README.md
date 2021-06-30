<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.26 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 2.26 |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

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
| <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type) | Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. | `string` | `"LRS"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created. | `string` | `"Standard"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment where resources will be created | `string` | `"sandbox"` | no |
| <a name="input_kind"></a> [kind](#input\_kind) | The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created. | `string` | `"FunctionApp"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Organization or entity owner of these resources | `string` | `"coarchitech"` | no |
| <a name="input_project"></a> [project](#input\_project) | Project owner of these resources | `string` | `"hands-on-terraform"` | no |
| <a name="input_region"></a> [region](#input\_region) | define the region where the resources going to be created | `string` | `"westus"` | no |
| <a name="input_resource"></a> [resource](#input\_resource) | Identifier for resources | `string` | `"azure-function"` | no |
| <a name="input_size"></a> [size](#input\_size) | Specifies the plan's instance size | `string` | `"Y1"` | no |
| <a name="input_tier"></a> [tier](#input\_tier) | Specifies the plan's pricing tier. | `string` | `"Dynamic"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_app_default_hostname"></a> [function\_app\_default\_hostname](#output\_function\_app\_default\_hostname) | Deployed function app hostname |
| <a name="output_function_id"></a> [function\_id](#output\_function\_id) | Function Identifier |
| <a name="output_invoke_url"></a> [invoke\_url](#output\_invoke\_url) | Invoke URL of the created function |
<!-- END_TF_DOCS -->