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

resource "aws_s3_bucket" "subfolder_bucket" {
  bucket = var.bucket_name

  tags = merge(
    var.default_tags,
    var.additional_tags,
    {
      "Subfolder" = "terraform/s3"
      "ManagedBy" = "BlaZop-Platform"
      "Order"     = "order_101"
    }
  )
}

output "subfolder_bucket_id" {
  description = "The ID of the S3 bucket created from /terraform/s3"
  value       = aws_s3_bucket.subfolder_bucket.id
}
