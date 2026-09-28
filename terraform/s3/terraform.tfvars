aws_region  = "ap-south-1"
bucket_name = "blazop-order101-subfolder-s3-dipesh-2026"

default_tags = {
  App         = "GranularStorageService"
  Environment = "Staging"
  CostCenter  = "CC-S3-SUBFOLDER"
  Source      = "ServiceNow-RITM0479090"
}

additional_tags = {
  Owner    = "Dipesh"
  Verified = "true"
}
