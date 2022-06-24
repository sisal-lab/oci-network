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
