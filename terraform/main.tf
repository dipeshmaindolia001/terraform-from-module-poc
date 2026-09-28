resource "terraform_data" "order_record" {
  input = {
    order_name  = var.order_name
    environment = var.environment
  }
}
