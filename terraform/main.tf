terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "order_bucket" {
  bucket = var.bucket_name

  tags = merge(
    var.default_tags,
    var.additional_tags,
    {
      "ManagedBy" = "BlaZop-Platform"
      "Order"     = "order_101"
    }
  )
}

output "bucket_id" {
  description = "The ID of the S3 bucket created from /terraform"
  value       = aws_s3_bucket.order_bucket.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.order_bucket.arn
}
