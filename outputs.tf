# --- azurerm_eventgrid_namespace ---
output "eventgrid_namespaces" {
  description = "All eventgrid_namespace resources"
  value       = module.eventgrid_namespaces.eventgrid_namespaces
}
output "eventgrid_namespaces_capacity" {
  description = "List of capacity values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.capacity]
}
output "eventgrid_namespaces_identity" {
  description = "List of identity values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.identity]
}
output "eventgrid_namespaces_inbound_ip_rule" {
  description = "List of inbound_ip_rule values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.inbound_ip_rule]
}
output "eventgrid_namespaces_location" {
  description = "List of location values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.location]
}
output "eventgrid_namespaces_name" {
  description = "List of name values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.name]
}
output "eventgrid_namespaces_public_network_access" {
  description = "List of public_network_access values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.public_network_access]
}
output "eventgrid_namespaces_resource_group_name" {
  description = "List of resource_group_name values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.resource_group_name]
}
output "eventgrid_namespaces_sku" {
  description = "List of sku values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.sku]
}
output "eventgrid_namespaces_tags" {
  description = "List of tags values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.tags]
}
output "eventgrid_namespaces_topic_spaces_configuration" {
  description = "List of topic_spaces_configuration values across all eventgrid_namespaces"
  value       = [for k, v in module.eventgrid_namespaces.eventgrid_namespaces : v.topic_spaces_configuration]
}


# --- azurerm_eventgrid_namespace_topic ---
output "eventgrid_namespace_topics" {
  description = "All eventgrid_namespace_topic resources"
  value       = module.eventgrid_namespace_topics.eventgrid_namespace_topics
}
output "eventgrid_namespace_topics_event_retention_in_days" {
  description = "List of event_retention_in_days values across all eventgrid_namespace_topics"
  value       = [for k, v in module.eventgrid_namespace_topics.eventgrid_namespace_topics : v.event_retention_in_days]
}
output "eventgrid_namespace_topics_eventgrid_namespace_id" {
  description = "List of eventgrid_namespace_id values across all eventgrid_namespace_topics"
  value       = [for k, v in module.eventgrid_namespace_topics.eventgrid_namespace_topics : v.eventgrid_namespace_id]
}
output "eventgrid_namespace_topics_name" {
  description = "List of name values across all eventgrid_namespace_topics"
  value       = [for k, v in module.eventgrid_namespace_topics.eventgrid_namespace_topics : v.name]
}



