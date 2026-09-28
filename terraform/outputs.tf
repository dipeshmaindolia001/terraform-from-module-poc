output "deployed_order" {
  value       = terraform_data.order_record.output
  description = "The deployed order configuration record"
}
