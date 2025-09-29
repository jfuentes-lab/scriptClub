output "result" {
    value = "hello TF Script Club"
}

data "akamai_property" "my_property" {
    name = "jfuentes-scriptclub"
    group_id    = "299415"
    contract_id = "1-5C13O2"
    property_id = "1259379"
    product_id = "Fresca"
}

