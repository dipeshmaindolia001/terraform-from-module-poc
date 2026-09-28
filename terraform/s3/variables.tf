variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "bucket_name" {
  type = string
}

variable "default_tags" {
  type    = map(string)
  default = {}
}

variable "additional_tags" {
  type    = map(string)
  default = {}
}
