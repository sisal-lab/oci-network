variable "tenancy_ocid" {
  type = string
}

variable "region" {
  type = string
}

variable "user_ocid" {
  type = string
}

variable "private_key" {
  type = string
  sensitive = true
}

variable "fingerprint" {
  type = string
}

variable "tfe_token" {
  type = string
  sensitive = true
}

variable "tfe_org" {
  type = string
}

variable "workspace_oci_compartment" {
  type = string
}


variable "name" {
  type = string
}

variable "private_subnets" {
  type = map(string)
}

variable "public_subnets" {
  type = map(string)
}
