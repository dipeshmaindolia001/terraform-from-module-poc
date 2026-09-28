variable "order_name" {
  type        = string
  description = "The name of the order"
}

variable "environment" {
  type        = string
  default     = "poc"
  description = "Deployment environment"
}
