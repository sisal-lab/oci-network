terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = ">= 4"
    }
    tfe = {
      version = "~> 0.30.2"
    }
  }
}

locals {
  compartment_id = data.tfe_outputs.oci_compartment.values.compartment.id
}

data "tfe_outputs" "oci_compartment" {
  organization = var.tfe_org
  workspace = var.workspace_oci_compartment
}

resource "oci_core_vcn" "main" {
  #Required
  compartment_id = local.compartment_id
  
  cidr_blocks = values(var.private_subnets)
  
  #Optional
  display_name = var.name
}

resource "oci_core_subnet" "private_subnets" {
  for_each = var.private_subnets
  
  #Required
  vcn_id = oci_core_vcn.main.id
  compartment_id = oci_core_vcn.main.compartment_id
  cidr_block = each.value

  #Optional
  display_name = each.key
  prohibit_public_ip_on_vnic = true
}
