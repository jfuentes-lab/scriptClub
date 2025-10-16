
output "group_id" {
  description = "this is for group id that was specified"
  value       = data.akamai_group.my_group_id.id
}


output "property_ids" {
  description = "list properties for group id"
  value       = [for p in data.akamai_properties.my_properties.properties : p.property_id]
}


output "appsec_configuration_ids" {
  description = "lists  security ids for groups"
  value       = data.akamai_appsec_configuration.all-configurations.output_text
}