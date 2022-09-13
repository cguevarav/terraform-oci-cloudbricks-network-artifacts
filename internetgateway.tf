# Copyright (c) 2021 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# internetgateway.tf
#
# Purpose: The following script defines the Internet Gateway Artifact used in this project 
# Registry: https://registry.terraform.io/providers/hashicorp/oci/latest/docs/resources/core_internet_gateway


resource "oci_core_internet_gateway" "INETGateway" {
  count          = var.internet_gateway_present ? 1 : 0
  compartment_id = local.nw_compartment_ocid
  vcn_id         = oci_core_vcn.VCN.id

  enabled      = var.internet_gateway_enabled
  display_name = var.internet_gateway_display_name
}
