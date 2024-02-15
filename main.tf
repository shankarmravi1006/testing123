resource "azurerm_resource_group" "example" {
  name     = "RG-Day2"
  location = "Eastus"
}

resource "azurerm_public_ip" "iptest" {
  name = "ip-test"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location
  allocation_method = "Static" 
}

output "ip-add" {
  value = azurerm_public_ip.iptest.ip_address
}