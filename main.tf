data "confluent_network" "network_lookup" {
  for_each = var.network_lookup

  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }
}

