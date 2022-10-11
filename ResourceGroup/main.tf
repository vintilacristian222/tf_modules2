resource "azurerm_resource_group" "name" {
  name= "${var.base_name}-resourceGroup"
  location = var.location
}