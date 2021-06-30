<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.7.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_s3_bucket"></a> [aws\_s3\_bucket](#module\_aws\_s3\_bucket) | ./aws/ |  |
| <a name="module_azure_function"></a> [azure\_function](#module\_azure\_function) | ./azure/ |  |
| <a name="module_gcp_function"></a> [gcp\_function](#module\_gcp\_function) | ./gcp/ |  |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_website_endpoint"></a> [aws\_website\_endpoint](#output\_aws\_website\_endpoint) | The website endpoint, if the bucket is configured with a website. If not, this will be an empty string. |
| <a name="output_azure_default_function_hostname"></a> [azure\_default\_function\_hostname](#output\_azure\_default\_function\_hostname) | Deployed function app hostname |
| <a name="output_gcp_https_trigger_url"></a> [gcp\_https\_trigger\_url](#output\_gcp\_https\_trigger\_url) | URL which triggers function execution. Returned only if trigger\_http is used. |
<!-- END_TF_DOCS -->