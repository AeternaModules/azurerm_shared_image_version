output "shared_image_versions" {
  description = "All shared_image_version resources"
  value       = azurerm_shared_image_version.shared_image_versions
}
output "shared_image_versions_blob_uri" {
  description = "List of blob_uri values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.blob_uri]
}
output "shared_image_versions_deletion_of_replicated_locations_enabled" {
  description = "List of deletion_of_replicated_locations_enabled values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.deletion_of_replicated_locations_enabled]
}
output "shared_image_versions_end_of_life_date" {
  description = "List of end_of_life_date values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.end_of_life_date]
}
output "shared_image_versions_exclude_from_latest" {
  description = "List of exclude_from_latest values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.exclude_from_latest]
}
output "shared_image_versions_gallery_name" {
  description = "List of gallery_name values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.gallery_name]
}
output "shared_image_versions_image_name" {
  description = "List of image_name values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.image_name]
}
output "shared_image_versions_location" {
  description = "List of location values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.location]
}
output "shared_image_versions_managed_image_id" {
  description = "List of managed_image_id values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.managed_image_id]
}
output "shared_image_versions_name" {
  description = "List of name values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.name]
}
output "shared_image_versions_os_disk_snapshot_id" {
  description = "List of os_disk_snapshot_id values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.os_disk_snapshot_id]
}
output "shared_image_versions_replication_mode" {
  description = "List of replication_mode values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.replication_mode]
}
output "shared_image_versions_resource_group_name" {
  description = "List of resource_group_name values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.resource_group_name]
}
output "shared_image_versions_storage_account_id" {
  description = "List of storage_account_id values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.storage_account_id]
}
output "shared_image_versions_tags" {
  description = "List of tags values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.tags]
}
output "shared_image_versions_target_region" {
  description = "List of target_region values across all shared_image_versions"
  value       = [for k, v in azurerm_shared_image_version.shared_image_versions : v.target_region]
}

