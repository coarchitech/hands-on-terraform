<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.7.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.7.0 |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.web_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acl"></a> [acl](#input\_acl) | Access control list: (private, public-read, public-read-write, aws-exec-read, authenticated-read,  log-delivery-write) | `string` | `"public-read"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment where resources will be created | `string` | `"sandbox"` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Organization or entity owner of these resources | `string` | `"coarchitech"` | no |
| <a name="input_project"></a> [project](#input\_project) | Project owner of these resources | `string` | `"hands-on-terraform"` | no |
| <a name="input_resource"></a> [resource](#input\_resource) | Identifier for resources | `string` | `"web"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname |
| <a name="output_bucket_domain_name"></a> [bucket\_domain\_name](#output\_bucket\_domain\_name) | The bucket domain name. Will be of format bucketname.s3.amazonaws.com |
| <a name="output_bucket_id"></a> [bucket\_id](#output\_bucket\_id) | The name of the bucket |
| <a name="output_bucket_regional_domain_name"></a> [bucket\_regional\_domain\_name](#output\_bucket\_regional\_domain\_name) | The bucket region-specific domain name. The bucket domain name including the region name |
| <a name="output_website_endpoint"></a> [website\_endpoint](#output\_website\_endpoint) | The website endpoint, if the bucket is configured with a website. If not, this will be an empty string. |
<!-- END_TF_DOCS -->