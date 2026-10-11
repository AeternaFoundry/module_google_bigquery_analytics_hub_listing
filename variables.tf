variable "bigquery_analytics_hub_listings" {
  description = <<EOT
Map of bigquery_analytics_hub_listings, attributes below
Required:
    - data_exchange_id
    - display_name
    - listing_id
    - location
Optional:
    - allow_only_metadata_sharing
    - categories
    - delete_commercial
    - deletion_policy
    - description
    - discovery_type
    - documentation
    - icon
    - log_linked_dataset_query_user_email
    - primary_contact
    - project
    - request_access
    - bigquery_dataset (block):
        - dataset (required)
        - replica_locations (optional)
        - selected_resources (optional, block):
            - routine (optional)
            - table (optional)
    - data_provider (block):
        - name (required)
        - primary_contact (optional)
    - publisher (block):
        - name (required)
        - primary_contact (optional)
    - pubsub_topic (block):
        - data_affinity_regions (optional)
        - topic (required)
    - restricted_export_config (block):
        - enabled (optional)
        - restrict_query_result (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    data_exchange_id                    = string
    display_name                        = string
    listing_id                          = string
    location                            = string
    allow_only_metadata_sharing         = optional(bool)
    categories                          = optional(list(string))
    delete_commercial                   = optional(bool)
    deletion_policy                     = optional(string)
    description                         = optional(string)
    discovery_type                      = optional(string)
    documentation                       = optional(string)
    icon                                = optional(string)
    log_linked_dataset_query_user_email = optional(bool)
    primary_contact                     = optional(string)
    project                             = optional(string)
    request_access                      = optional(string)
    bigquery_dataset = optional(object({
      dataset           = string
      replica_locations = optional(set(string))
      selected_resources = optional(list(object({
        routine = optional(string)
        table   = optional(string)
      })))
    }))
    data_provider = optional(object({
      name            = string
      primary_contact = optional(string)
    }))
    publisher = optional(object({
      name            = string
      primary_contact = optional(string)
    }))
    pubsub_topic = optional(object({
      data_affinity_regions = optional(set(string))
      topic                 = string
    }))
    restricted_export_config = optional(object({
      enabled               = optional(bool)
      restrict_query_result = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

