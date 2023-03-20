resource "ibm_container_cluster" "harness_cluster" {
  name            = "harness-cluster"
  datacenter      = "dal10"
  machine_type    = "free"
  hardware        = "shared"
  #public_vlan_id  = "vlan"
  #private_vlan_id = "vlan"
  #subnet_id       = ["1154643"]

  default_pool_size = 1

  labels = {
    "creator" = "harness"
  }

  # webhook {
  #   level = "Normal"
  #   type  = "slack"
  #   url   = "https://hooks.slack.com/services/yt7rebjhgh2r4rd44fjk"
  # }
}
