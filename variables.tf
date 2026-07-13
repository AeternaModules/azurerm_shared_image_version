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
    deletion_of_replicated_locations_enabled = optional(bool)
    end_of_life_date                         = optional(string)
    exclude_from_latest                      = optional(bool)
    managed_image_id                         = optional(string)
    os_disk_snapshot_id                      = optional(string)
    replication_mode                         = optional(string)
    storage_account_id                       = optional(string)
    tags                                     = optional(map(string))
    target_region = list(object({
      disk_encryption_set_id      = optional(string)
      exclude_from_latest_enabled = optional(bool)
      name                        = string
      regional_replica_count      = number
      storage_account_type        = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions : (
        length(v.target_region) >= 1
      )
    ])
    error_message = "Each target_region list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.shared_image_versions : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 19 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

