output "shared_image_versions_id" {
  description = "Map of id values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shared_image_versions_blob_uri" {
  description = "Map of blob_uri values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.blob_uri if v.blob_uri != null && length(v.blob_uri) > 0 }
}
output "shared_image_versions_deletion_of_replicated_locations_enabled" {
  description = "Map of deletion_of_replicated_locations_enabled values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.deletion_of_replicated_locations_enabled if v.deletion_of_replicated_locations_enabled != null }
}
output "shared_image_versions_end_of_life_date" {
  description = "Map of end_of_life_date values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.end_of_life_date if v.end_of_life_date != null && length(v.end_of_life_date) > 0 }
}
output "shared_image_versions_exclude_from_latest" {
  description = "Map of exclude_from_latest values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.exclude_from_latest if v.exclude_from_latest != null }
}
output "shared_image_versions_gallery_name" {
  description = "Map of gallery_name values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.gallery_name if v.gallery_name != null && length(v.gallery_name) > 0 }
}
output "shared_image_versions_image_name" {
  description = "Map of image_name values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.image_name if v.image_name != null && length(v.image_name) > 0 }
}
output "shared_image_versions_location" {
  description = "Map of location values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.location if v.location != null && length(v.location) > 0 }
}
output "shared_image_versions_managed_image_id" {
  description = "Map of managed_image_id values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.managed_image_id if v.managed_image_id != null && length(v.managed_image_id) > 0 }
}
output "shared_image_versions_name" {
  description = "Map of name values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "shared_image_versions_os_disk_snapshot_id" {
  description = "Map of os_disk_snapshot_id values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.os_disk_snapshot_id if v.os_disk_snapshot_id != null && length(v.os_disk_snapshot_id) > 0 }
}
output "shared_image_versions_replication_mode" {
  description = "Map of replication_mode values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.replication_mode if v.replication_mode != null && length(v.replication_mode) > 0 }
}
output "shared_image_versions_resource_group_name" {
  description = "Map of resource_group_name values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "shared_image_versions_storage_account_id" {
  description = "Map of storage_account_id values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "shared_image_versions_tags" {
  description = "Map of tags values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "shared_image_versions_target_region" {
  description = "Map of target_region values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.target_region if v.target_region != null && length(v.target_region) > 0 }
}

