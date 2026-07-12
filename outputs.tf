output "shared_image_versions_blob_uri" {
  description = "Map of blob_uri values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.blob_uri }
}
output "shared_image_versions_deletion_of_replicated_locations_enabled" {
  description = "Map of deletion_of_replicated_locations_enabled values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.deletion_of_replicated_locations_enabled }
}
output "shared_image_versions_end_of_life_date" {
  description = "Map of end_of_life_date values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.end_of_life_date }
}
output "shared_image_versions_exclude_from_latest" {
  description = "Map of exclude_from_latest values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.exclude_from_latest }
}
output "shared_image_versions_gallery_name" {
  description = "Map of gallery_name values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.gallery_name }
}
output "shared_image_versions_image_name" {
  description = "Map of image_name values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.image_name }
}
output "shared_image_versions_location" {
  description = "Map of location values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.location }
}
output "shared_image_versions_managed_image_id" {
  description = "Map of managed_image_id values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.managed_image_id }
}
output "shared_image_versions_name" {
  description = "Map of name values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.name }
}
output "shared_image_versions_os_disk_snapshot_id" {
  description = "Map of os_disk_snapshot_id values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.os_disk_snapshot_id }
}
output "shared_image_versions_replication_mode" {
  description = "Map of replication_mode values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.replication_mode }
}
output "shared_image_versions_resource_group_name" {
  description = "Map of resource_group_name values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.resource_group_name }
}
output "shared_image_versions_storage_account_id" {
  description = "Map of storage_account_id values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.storage_account_id }
}
output "shared_image_versions_tags" {
  description = "Map of tags values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.tags }
}
output "shared_image_versions_target_region" {
  description = "Map of target_region values across all shared_image_versions, keyed the same as var.shared_image_versions"
  value       = { for k, v in azurerm_shared_image_version.shared_image_versions : k => v.target_region }
}

