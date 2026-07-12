# --- azurerm_eventgrid_namespace ---
output "eventgrid_namespaces_id" {
  description = "Map of id values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_id
}

output "eventgrid_namespaces_capacity" {
  description = "Map of capacity values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_capacity
}

output "eventgrid_namespaces_identity" {
  description = "Map of identity values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_identity
}

output "eventgrid_namespaces_inbound_ip_rule" {
  description = "Map of inbound_ip_rule values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_inbound_ip_rule
}

output "eventgrid_namespaces_location" {
  description = "Map of location values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_location
}

output "eventgrid_namespaces_name" {
  description = "Map of name values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_name
}

output "eventgrid_namespaces_public_network_access" {
  description = "Map of public_network_access values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_public_network_access
}

output "eventgrid_namespaces_resource_group_name" {
  description = "Map of resource_group_name values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_resource_group_name
}

output "eventgrid_namespaces_sku" {
  description = "Map of sku values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_sku
}

output "eventgrid_namespaces_tags" {
  description = "Map of tags values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_tags
}

output "eventgrid_namespaces_topic_spaces_configuration" {
  description = "Map of topic_spaces_configuration values across all eventgrid_namespaces, keyed the same as var.eventgrid_namespaces"
  value       = module.eventgrid_namespaces.eventgrid_namespaces_topic_spaces_configuration
}

# --- azurerm_eventgrid_namespace_topic ---
output "eventgrid_namespace_topics_id" {
  description = "Map of id values across all eventgrid_namespace_topics, keyed the same as var.eventgrid_namespace_topics"
  value       = module.eventgrid_namespace_topics.eventgrid_namespace_topics_id
}

output "eventgrid_namespace_topics_event_retention_in_days" {
  description = "Map of event_retention_in_days values across all eventgrid_namespace_topics, keyed the same as var.eventgrid_namespace_topics"
  value       = module.eventgrid_namespace_topics.eventgrid_namespace_topics_event_retention_in_days
}

output "eventgrid_namespace_topics_eventgrid_namespace_id" {
  description = "Map of eventgrid_namespace_id values across all eventgrid_namespace_topics, keyed the same as var.eventgrid_namespace_topics"
  value       = module.eventgrid_namespace_topics.eventgrid_namespace_topics_eventgrid_namespace_id
}

output "eventgrid_namespace_topics_name" {
  description = "Map of name values across all eventgrid_namespace_topics, keyed the same as var.eventgrid_namespace_topics"
  value       = module.eventgrid_namespace_topics.eventgrid_namespace_topics_name
}


