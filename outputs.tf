output "bigquery_analytics_hub_listings_id" {
  description = "Map of id values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no id are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_analytics_hub_listings_allow_only_metadata_sharing" {
  description = "Map of allow_only_metadata_sharing values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no allow_only_metadata_sharing are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.allow_only_metadata_sharing if v.allow_only_metadata_sharing != null }
}
output "bigquery_analytics_hub_listings_bigquery_dataset" {
  description = "Map of bigquery_dataset values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no bigquery_dataset are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => one(v.bigquery_dataset) if v.bigquery_dataset != null && length(v.bigquery_dataset) > 0 }
}
output "bigquery_analytics_hub_listings_categories" {
  description = "Map of categories values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no categories are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.categories if v.categories != null && length(v.categories) > 0 }
}
output "bigquery_analytics_hub_listings_commercial_info" {
  description = "Map of commercial_info values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no commercial_info are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.commercial_info if v.commercial_info != null && length(v.commercial_info) > 0 }
}
output "bigquery_analytics_hub_listings_data_exchange_id" {
  description = "Map of data_exchange_id values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no data_exchange_id are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.data_exchange_id if v.data_exchange_id != null && length(v.data_exchange_id) > 0 }
}
output "bigquery_analytics_hub_listings_data_provider" {
  description = "Map of data_provider values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no data_provider are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => one(v.data_provider) if v.data_provider != null && length(v.data_provider) > 0 }
}
output "bigquery_analytics_hub_listings_delete_commercial" {
  description = "Map of delete_commercial values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no delete_commercial are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.delete_commercial if v.delete_commercial != null }
}
output "bigquery_analytics_hub_listings_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_analytics_hub_listings_description" {
  description = "Map of description values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no description are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bigquery_analytics_hub_listings_discovery_type" {
  description = "Map of discovery_type values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no discovery_type are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.discovery_type if v.discovery_type != null && length(v.discovery_type) > 0 }
}
output "bigquery_analytics_hub_listings_display_name" {
  description = "Map of display_name values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no display_name are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "bigquery_analytics_hub_listings_documentation" {
  description = "Map of documentation values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no documentation are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.documentation if v.documentation != null && length(v.documentation) > 0 }
}
output "bigquery_analytics_hub_listings_icon" {
  description = "Map of icon values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no icon are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.icon if v.icon != null && length(v.icon) > 0 }
}
output "bigquery_analytics_hub_listings_listing_id" {
  description = "Map of listing_id values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no listing_id are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.listing_id if v.listing_id != null && length(v.listing_id) > 0 }
}
output "bigquery_analytics_hub_listings_location" {
  description = "Map of location values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no location are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bigquery_analytics_hub_listings_log_linked_dataset_query_user_email" {
  description = "Map of log_linked_dataset_query_user_email values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no log_linked_dataset_query_user_email are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.log_linked_dataset_query_user_email if v.log_linked_dataset_query_user_email != null }
}
output "bigquery_analytics_hub_listings_name" {
  description = "Map of name values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no name are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigquery_analytics_hub_listings_primary_contact" {
  description = "Map of primary_contact values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no primary_contact are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.primary_contact if v.primary_contact != null && length(v.primary_contact) > 0 }
}
output "bigquery_analytics_hub_listings_project" {
  description = "Map of project values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no project are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_analytics_hub_listings_publisher" {
  description = "Map of publisher values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no publisher are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => one(v.publisher) if v.publisher != null && length(v.publisher) > 0 }
}
output "bigquery_analytics_hub_listings_pubsub_topic" {
  description = "Map of pubsub_topic values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no pubsub_topic are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => one(v.pubsub_topic) if v.pubsub_topic != null && length(v.pubsub_topic) > 0 }
}
output "bigquery_analytics_hub_listings_request_access" {
  description = "Map of request_access values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no request_access are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.request_access if v.request_access != null && length(v.request_access) > 0 }
}
output "bigquery_analytics_hub_listings_restricted_export_config" {
  description = "Map of restricted_export_config values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no restricted_export_config are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => one(v.restricted_export_config) if v.restricted_export_config != null && length(v.restricted_export_config) > 0 }
}
output "bigquery_analytics_hub_listings_state" {
  description = "Map of state values across all bigquery_analytics_hub_listings, keyed the same as var.bigquery_analytics_hub_listings except keys with no state are omitted"
  value       = { for k, v in google_bigquery_analytics_hub_listing.bigquery_analytics_hub_listings : k => v.state if v.state != null && length(v.state) > 0 }
}

