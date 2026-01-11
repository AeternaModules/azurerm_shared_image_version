variable "shared_image_versions" {
  description = <<EOT
Map of shared_image_versions, attributes below
Required:
    - gallery_name
    - image_name
    - location
    - name
    - resource_group_name
    - target_region (block):
        - disk_encryption_set_id (optional)
        - exclude_from_latest_enabled (optional)
        - name (required)
        - regional_replica_count (required)
        - storage_account_type (optional)
Optional:
    - blob_uri
    - deletion_of_replicated_locations_enabled
    - end_of_life_date
    - exclude_from_latest
    - managed_image_id
    - os_disk_snapshot_id
    - replication_mode
    - storage_account_id
    - tags
EOT

  type = map(object({
    gallery_name                             = string
    image_name                               = string
    location                                 = string
    name                                     = string
    resource_group_name                      = string
    blob_uri                                 = optional(string)
    deletion_of_replicated_locations_enabled = optional(bool, false)
    end_of_life_date                         = optional(string)
    exclude_from_latest                      = optional(bool, false)
    managed_image_id                         = optional(string)
    os_disk_snapshot_id                      = optional(string)
    replication_mode                         = optional(string, "Full")
    storage_account_id                       = optional(string)
    tags                                     = optional(map(string))
    target_region = object({
      disk_encryption_set_id      = optional(string)
      exclude_from_latest_enabled = optional(bool, false)
      name                        = string
      regional_replica_count      = number
      storage_account_type        = optional(string, "Standard_LRS")
    })
  }))
}

