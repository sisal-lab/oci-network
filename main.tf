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
