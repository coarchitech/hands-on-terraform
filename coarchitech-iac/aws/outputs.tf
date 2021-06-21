output "bucket_regional_domain_name" {
  value       = aws_s3_bucket.web_bucket.bucket_regional_domain_name
  description = "The bucket region-specific domain name. The bucket domain name including the region name"
}
output "bucket_domain_name" {
  value       = aws_s3_bucket.web_bucket.bucket_domain_name
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com"
}
output "bucket_id" {
  value       = aws_s3_bucket.web_bucket.id
  description = "The name of the bucket"
}
output "bucket_arn" {
  value       = aws_s3_bucket.web_bucket.arn
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname"
}
output "website_endpoint" {
  value       = aws_s3_bucket.web_bucket.website_endpoint
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
}