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
    deletion_of_replicated_locations_enabled = optional(bool) # Default: false
    end_of_life_date                         = optional(string)
    exclude_from_latest                      = optional(bool) # Default: false
    managed_image_id                         = optional(string)
    os_disk_snapshot_id                      = optional(string)
    replication_mode                         = optional(string) # Default: "Full"
    storage_account_id                       = optional(string)
    tags                                     = optional(map(string))
    target_region = list(object({
      disk_encryption_set_id      = optional(string)
      exclude_from_latest_enabled = optional(bool) # Default: false
      name                        = string
      regional_replica_count      = number
      storage_account_type        = optional(string) # Default: "Standard_LRS"
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_shared_image_version's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SharedImageVersionName] !regexp.MustCompile(`^([0-9]{1,10}\.[0-9]{1,10}\.[0-9]{1,10})$`).MatchString(value) && value != "latest" && value != "recent"
  # path: gallery_name
  #   source:    [from validate.SharedImageGalleryName] !r.MatchString(value)
  # path: gallery_name
  #   source:    [from validate.SharedImageGalleryName] length > 80
  # path: image_name
  #   source:    [from validate.SharedImageName] !regexp.MustCompile(`^[A-Za-z0-9._-]+$`).MatchString(value)
  # path: image_name
  #   source:    [from validate.SharedImageName] length > 80
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: target_region.disk_encryption_set_id
  #   source:    [from validate.DiskEncryptionSetID] !ok
  # path: target_region.disk_encryption_set_id
  #   source:    [from validate.DiskEncryptionSetID] err != nil
  # path: target_region.storage_account_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: blob_uri
  #   source:    validation.IsURLWithScheme(...) - no translation rule yet, add one
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] !ok
  # path: storage_account_id
  #   source:    [from commonids.ValidateStorageAccountID] err != nil
  # path: end_of_life_date
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: managed_image_id
  #   source:    validation.Any(...) - no translation rule yet, add one
  # path: replication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

