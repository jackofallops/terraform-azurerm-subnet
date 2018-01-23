variable "vnet_address_space" {
  description = "(Required) The network prefix / CIDR range in use by the Virtual Network this subnet belongs to"
}

variable "subnet_bits" {
  description = "(Required) Number of bits to add to the virtual network address space mask for this subnet."
}

variable "location" {
  description = "Azure location string - see 'az account list-locations' output for valid strings"
}

variable "service_name" {
  description = "(Required) Name of the service to which this resource belongs"
}

variable "environment" {
  description = "(Required) The environment in which this resource is located"
  default     = "development"
}

variable "resource_group_name" {
  description = "(Required) Name of the resource group this subnet will be a member of - This is the name of the Resource Group to which the Virtual Network belongs"
}

variable "vnet_name" {
  description = "(Required) The name of the parent Virtual Network this subnet is part of"
}

variable "nsg_id" {
  description = "(Optional) ID of the Network Security Group that applies to this subnet - default is an empty string, pass a fully qualified NSG ID to apply to the subnet level"
  default     = ""
}

variable "subnet_number" {
  description = "(Required) Subnet number for the new subnet, be mindful of subnet boundaries and subnet_bits values. Be mindful that this is an offset from the first valid subnet of the address space, not an absolute number"
}

variable "subnet_name" {
  description = "(Required) The purpose of this subnet e.g. webtier.  DNS compliant strings only"
}
