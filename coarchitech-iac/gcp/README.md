## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | n/a |
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloudfunctions_function.function_wld](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function) | resource |
| [google_cloudfunctions_function_iam_member.invoker](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function_iam_member) | resource |
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_object.bucket_stage](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |
| [archive_file.function](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project"></a> [project](#input\_project) | Nombre del proyecto en GCP | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region en GCP | `string` | `"us-central1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_https_trigger_url"></a> [https\_trigger\_url](#output\_https\_trigger\_url) | https\_trigger\_url |

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | n/a |
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloudfunctions_function.function_wld](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function) | resource |
| [google_cloudfunctions_function_iam_member.invoker](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloudfunctions_function_iam_member) | resource |
| [google_storage_bucket.bucket](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket) | resource |
| [google_storage_bucket_object.bucket_stage](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object) | resource |
| [archive_file.function](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_available_memory_mb"></a> [available\_memory\_mb](#input\_available\_memory\_mb) | Memory (in MB), available to the function. Default value is 256. Possible values include 128, 256, 512, 1024, etc. | `string` | `"256"` | no |
| <a name="input_entry_point"></a> [entry\_point](#input\_entry\_point) | Name of the function that will be executed when the Google Cloud Function is triggered. | `string` | `"helloWorld"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment where resources will be created | `string` | `"sandbox"` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run. | `bool` | `true` | no |
| <a name="input_member"></a> [member](#input\_member) | Identities that will be granted the privilege in role. | `string` | `"allUsers"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Organization or entity owner of these resources | `string` | `"coarchitech"` | no |
| <a name="input_project"></a> [project](#input\_project) | ID Project ownerin GCP of these resources | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Region en GCP | `string` | n/a | yes |
| <a name="input_resource"></a> [resource](#input\_resource) | Identifier for resources | `string` | `"gcp-function"` | no |
| <a name="input_role"></a> [role](#input\_role) | The role that should be applied | `string` | `"roles/cloudfunctions.invoker"` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | The runtime in which the function is going to run. Eg. nodejs10, nodejs12, nodejs14, python37, python38, python39, dotnet3, go113, java11, ruby27 | `string` | `"nodejs14"` | no |
| <a name="input_storage_class"></a> [storage\_class](#input\_storage\_class) | The Storage Class of the new bucket. Supported values include: STANDARD, MULTI\_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. | `string` | `"STANDARD"` | no |
| <a name="input_trigger_http"></a> [trigger\_http](#input\_trigger\_http) | Boolean variable. Any HTTP request (of a supported type) to the endpoint will trigger function execution. Supported HTTP request types are: POST, PUT, GET, DELETE, and OPTIONS | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_https_trigger_url"></a> [https\_trigger\_url](#output\_https\_trigger\_url) | URL which triggers function execution. Returned only if trigger\_http is used. |
<!-- END_TF_DOCS -->