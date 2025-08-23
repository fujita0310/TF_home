output "bucket_name" {
  value = aws_s3_bucket.site.bucket
}

output "cloudfront_arn" {
  value = aws_cloudfront_distribution.cdn.arn
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

output "cloudfront_id" {
  value = aws_cloudfront_distribution.cdn.id
}

output "website_url" {
  value = "https://${aws_cloudfront_distribution.cdn.domain_name}"
}

output "cf_distribution_id" {
  value       = aws_cloudfront_distribution.cdn.id
  description = "CloudFront distribution ID"
}