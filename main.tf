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

data "tfe_outputs" "oci_compartment" {
  organization = var.tfe_org
  workspace = var.workspace_oci_compartment
}
