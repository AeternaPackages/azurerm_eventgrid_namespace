locals {
  eventgrid_namespaces = { for k1, v1 in var.eventgrid_namespaces : k1 => { capacity = v1.capacity, identity = v1.identity, inbound_ip_rule = v1.inbound_ip_rule, location = v1.location, name = v1.name, public_network_access = v1.public_network_access, resource_group_name = v1.resource_group_name, sku = v1.sku, tags = v1.tags, topic_spaces_configuration = v1.topic_spaces_configuration } }

  eventgrid_namespace_topics = merge([
    for k1, v1 in var.eventgrid_namespaces : {
      for k2, v2 in coalesce(v1.eventgrid_namespace_topics, {}) :
      "${k1}/${k2}" => merge(v2, {
        eventgrid_namespace_id = module.eventgrid_namespaces.eventgrid_namespaces_id["${k1}"]
      })
    }
  ]...)
}

module "eventgrid_namespaces" {
  source               = "git::https://github.com/AeternaModules/azurerm_eventgrid_namespace.git?ref=v5.0.1"
  eventgrid_namespaces = local.eventgrid_namespaces
}

module "eventgrid_namespace_topics" {
  source                     = "git::https://github.com/AeternaModules/azurerm_eventgrid_namespace_topic.git?ref=v5.0.1"
  eventgrid_namespace_topics = local.eventgrid_namespace_topics
  depends_on                 = [module.eventgrid_namespaces]
}

