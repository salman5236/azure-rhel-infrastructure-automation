data "azurerm_resource_group" "lab" {
  name = "practice-lab-rg"
}

output "lab_resource_group" {
  value = {
    name     = data.azurerm_resource_group.lab.name
    location = data.azurerm_resource_group.lab.location
  }
}
