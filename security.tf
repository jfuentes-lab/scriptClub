resource "akamai_appsec_configuration" "myconfig" {
  name        = "csgt"
  description = "this is a waf js injection config"
  group_id    = "grp_232339"
  contract_id = "ctr_1-5C13O2"
  host_names  = ["jfuentes-demosite.test.edgekey.net"]
}
resource "akamai_appsec_security_policy" "main_api_policy" {
 config_id     = akamai_appsec_configuration.myconfig.config_id
 security_policy_name   = "Main API Policy"
 security_policy_prefix = "mainapi"
}

resource "akamai_appsec_security_policy" "secondary_api_policy" {
  config_id     = akamai_appsec_configuration.myconfig.config_id
  security_policy_name   = "Secondary API Policy"
  security_policy_prefix = "secapi"
}

resource "akamai_appsec_waf_mode" "myconfig" {
  config_id = akamai_appsec_configuration.myconfig.config_id
  mode      = "KRS"
  security_policy_id = "90277"
}
