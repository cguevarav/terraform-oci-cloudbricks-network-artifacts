# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# datasource.tf
#
# Purpose: The following script defines the NAT Gateway used in this project
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_nat_gateway


resource "oci_core_nat_gateway" "NATGateway" {
  count          = var.nat_gateway_present ? 1 : 0
  compartment_id = local.nw_compartment_ocid
  vcn_id         = oci_core_vcn.VCN.id
  display_name   = var.nat_gateway_display_name
}
