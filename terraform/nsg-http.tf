resource "azurerm_network_security_rule" "http_myip" {
  name                        = "Allow-HTTP-MyIP"
  description                 = "Allow http access from Salman PC "
  priority                    = 1010
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "67.71.45.201"
  destination_address_prefix  = "*"
  resource_group_name         = data.azurerm_resource_group.lab.name
  network_security_group_name = "practice-lab-vm01NSG"
}
