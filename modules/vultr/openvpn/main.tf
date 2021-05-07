terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.2.0"
    }
  }
}

resource "vultr_instance" "openvpn" {
  hostname = var.instance_name
  label = var.instance_name
  region = var.region
  plan = var.plan
  os_id = var.os_id
  ssh_key_ids = var.ssh_key_ids
}
