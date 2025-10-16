##############################################
# AKAMAI PROPERTY CONFIGURATION
##############################################

# 1. CP Code
resource "akamai_cp_code" "my_cpcode" {
  name        = "jfuentes-scriptclub"
  group_id    = "grp_232339"
  contract_id = "ctr_1-5C13O2"
  product_id  = "prd_Fresca" 
}

# 2. Edge Hostname
resource "akamai_edge_hostname" "my_edgehost" {
  contract_id   = "ctr_1-5C13O2"
  group_id      = "grp_232339"
  product_id    = "prd_Fresca"
  edge_hostname = "scriptclub.jfuentes.com.edgesuite.net"
  ip_behavior   = "IPV4"
}

# 3. Property
resource "akamai_property" "my_property" {
  name        = "jfuentes-scriptclubv1"
  product_id  = "prd_Fresca"
  group_id    = "grp_232339"
  contract_id = "ctr_1-5C13O2"

  hostnames {
    cname_from             = "scriptclub.jfuentes.com"
    cname_to               = akamai_edge_hostname.my_edgehost.edge_hostname
    cert_provisioning_type = "CPS_MANAGED"
  }

  rule_format = "latest"
}