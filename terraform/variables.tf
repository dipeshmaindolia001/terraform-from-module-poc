variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "S3 Bucket Name"
  type        = string
}

variable "default_tags" {
  description = "Default tags matching enterprise standards"
  type        = map(string)
  default     = {}
}

variable "additional_tags" {
  description = "Additional tags specified by customer"
  type        = map(string)
  default     = {}
}
