resource "aws_s3_bucket" "web_bucket" {
  bucket = "${var.environment}-${var.project}-${var.resource}-s3"
  acl    = var.acl
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "",
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "*"
        },
        "Action" : "s3:GetObject",
        "Resource" : "arn:aws:s3:::${var.environment}-${var.project}-${var.resource}-s3/*"
      }
    ]
  })
  website {
    index_document = "index.html"
    error_document = "index.html"
  }
  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST", "GET"]
    allowed_origins = ["${var.environment}-${var.project}-${var.resource}-s3"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
  tags = merge({ Name = "${var.environment}-${var.project}-${var.resource}-s3" }, local.common_tags, )
}