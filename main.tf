data "akamai_group" "my_group_id" {
    group_name  = "TC East-1-5C13O2"
    contract_id = "ctr_1-5C13O2"
}
output "my_group_id" {
    value = data.akamai_group.my_group_id
}

data "akamai_properties" "my_properties" {
    group_id    = "grp_299415"
    contract_id = "ctr_1-5C13O2"
}

output "my_properties" {
  value = data.akamai_properties.my_properties
}

data "akamai_appsec_configuration" "all-configurations" {
}

output "configuration-list" {
  value = data.akamai_appsec_configuration.all-configurations.output_text
}

