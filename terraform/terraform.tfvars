aws_region  = "ap-south-1"
bucket_name = "blazop-order101-root-dipesh-2026"

default_tags = {
  App         = "OrderSystem"
  Environment = "Production"
  Capability  = "CloudStorage"
  CostCenter  = "CC-1010-IT"
  Source      = "ServiceNow-RITM0479090"
}

additional_tags = {
  Owner         = "Dipesh"
  PostMigration = "true"
}
