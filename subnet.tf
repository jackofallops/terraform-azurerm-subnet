resource "azurerm_subnet" "subnet" {
  name                      = "${var.service_name}-${var.subnet_name}-subnet"
  address_prefix            = "${cidrsubnet(var.vnet_address_space, var.subnet_bits, var.subnet_number)}"
  resource_group_name       = "${var.resource_group_name}"
  virtual_network_name      = "${var.vnet_name}"
  network_security_group_id = "${var.nsg_id}"
}
