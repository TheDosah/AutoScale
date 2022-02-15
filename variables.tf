variable "analytics_instance_id" {
  description = "(Required) The OCID of the AnalyticsInstance."
  type        = string
}

variable "display_name" {
  description = "(Required) (Updatable) Display Name of the Private Access Channel."
  type        = string
}

variable "subnet_id" {
  description = "(Required) (Updatable) OCID of the customer subnet connected to private access channel."
  type        = string
}

variable "vcn_id" {
  description = " (Required) (Updatable) OCID of the customer VCN peered with private access channel."
  type        = string
}

variable "private_source_dns_zones" {
  description = "(Required) (Updatable) List of Private Source DNS zones registered with Private Access Channel"
  type        = list(any)
}
