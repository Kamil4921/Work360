resource "azurerm_resource_group" "Work360-rg" {
  location = "West Europe"
  name     = "Work360-rg"
  
  tags = {
    environment = var.env_id
    src = var.src_key
  }
}