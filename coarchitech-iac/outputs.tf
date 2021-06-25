/*output "bucket_regional_domain_name" {
  value       = module.bucket_web.bucket_regional_domain_name
  description = "The bucket region-specific domain name. The bucket domain name including the region name"
}
output "bucket_domain_name" {
  value       = module.bucket_web.bucket_domain_name
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com"
}
output "bucket_id" {
  value       = module.bucket_web.bucket_id
  description = "The name of the bucket"
}
output "bucket_arn" {
  value       = module.bucket_web.bucket_arn
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname"
}
output "website_endpoint" {
  value       = module.bucket_web.website_endpoint
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
}*/