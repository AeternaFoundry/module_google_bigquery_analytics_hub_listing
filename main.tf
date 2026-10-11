resource "google_bigquery_analytics_hub_listing" "bigquery_analytics_hub_listings" {
  for_each = var.bigquery_analytics_hub_listings

  data_exchange_id                    = each.value.data_exchange_id
  display_name                        = each.value.display_name
  listing_id                          = each.value.listing_id
  location                            = each.value.location
  allow_only_metadata_sharing         = each.value.allow_only_metadata_sharing
  categories                          = each.value.categories
  delete_commercial                   = each.value.delete_commercial
  deletion_policy                     = each.value.deletion_policy
  description                         = each.value.description
  discovery_type                      = each.value.discovery_type
  documentation                       = each.value.documentation
  icon                                = each.value.icon
  log_linked_dataset_query_user_email = each.value.log_linked_dataset_query_user_email
  primary_contact                     = each.value.primary_contact
  project                             = each.value.project
  request_access                      = each.value.request_access

  dynamic "bigquery_dataset" {
    for_each = each.value.bigquery_dataset != null ? [each.value.bigquery_dataset] : []
    content {
      dataset           = bigquery_dataset.value.dataset
      replica_locations = bigquery_dataset.value.replica_locations
      dynamic "selected_resources" {
        for_each = bigquery_dataset.value.selected_resources != null ? bigquery_dataset.value.selected_resources : []
        content {
          routine = selected_resources.value.routine
          table   = selected_resources.value.table
        }
      }
    }
  }

  dynamic "data_provider" {
    for_each = each.value.data_provider != null ? [each.value.data_provider] : []
    content {
      name            = data_provider.value.name
      primary_contact = data_provider.value.primary_contact
    }
  }

  dynamic "publisher" {
    for_each = each.value.publisher != null ? [each.value.publisher] : []
    content {
      name            = publisher.value.name
      primary_contact = publisher.value.primary_contact
    }
  }

  dynamic "pubsub_topic" {
    for_each = each.value.pubsub_topic != null ? [each.value.pubsub_topic] : []
    content {
      data_affinity_regions = pubsub_topic.value.data_affinity_regions
      topic                 = pubsub_topic.value.topic
    }
  }

  dynamic "restricted_export_config" {
    for_each = each.value.restricted_export_config != null ? [each.value.restricted_export_config] : []
    content {
      enabled               = restricted_export_config.value.enabled
      restrict_query_result = restricted_export_config.value.restrict_query_result
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

