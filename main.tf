resource "azurerm_shared_image_version" "shared_image_versions" {
  for_each = var.shared_image_versions

  gallery_name                             = each.value.gallery_name
  image_name                               = each.value.image_name
  location                                 = each.value.location
  name                                     = each.value.name
  resource_group_name                      = each.value.resource_group_name
  blob_uri                                 = each.value.blob_uri
  deletion_of_replicated_locations_enabled = each.value.deletion_of_replicated_locations_enabled
  end_of_life_date                         = each.value.end_of_life_date
  exclude_from_latest                      = each.value.exclude_from_latest
  managed_image_id                         = each.value.managed_image_id
  os_disk_snapshot_id                      = each.value.os_disk_snapshot_id
  replication_mode                         = each.value.replication_mode
  storage_account_id                       = each.value.storage_account_id
  tags                                     = each.value.tags

  target_region {
    disk_encryption_set_id      = each.value.target_region.disk_encryption_set_id
    exclude_from_latest_enabled = each.value.target_region.exclude_from_latest_enabled
    name                        = each.value.target_region.name
    regional_replica_count      = each.value.target_region.regional_replica_count
    storage_account_type        = each.value.target_region.storage_account_type
  }
}

