resource "oci_analytics_analytics_instance_private_access_channel" "this" {
  #Required
  analytics_instance_id = var.analytics_instance_id
  display_name          = var.display_name

  dynamic "private_source_dns_zones" {
    for_each = var.private_source_dns_zones

    content {
      #Required
      dns_zone = private_source_dns_zones.value["dns_zone"]

      #Optional
      description = lookup(private_source_dns_zones.value, "description", null)
    }
  }

  subnet_id = var.subnet_id
  vcn_id    = var.vcn_id
}

