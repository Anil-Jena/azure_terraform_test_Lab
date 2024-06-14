resource "azurerm_network_security_group" "myterraformnsg" {
    name = var.nsgname
    resource_group_name = azurerm_resource_group.myTerraformGroup.name
    location = var.location

    security_rule {
        name = "SSH"
        priority = 100
        direction = "Inbound"
        access = "Allow"
        protocol = "TCP"
        source_port_range = "*"
        destination_port_range = "22"
        source_address_prefix = "*"
        destination_address_prefix = "*"       
    }

    tags = var.tags
}