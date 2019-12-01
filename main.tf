# Connect VMware vCloud Director Provider
provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_pass
  org                  = "System"
  url                  = var.vcd_url
  max_retry_timeout    = var.vcd_max_retry_timeout
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
}

# Create new External Network

resource "vcd_external_network" "extnet" {
  name        = var.extnet_name
  description = var.extnet_description

    vsphere_network {
    name    = var.extnet_name
    type    = "DV_PORTGROUP"
    vcenter = var.extnet_vcenter
  }

  ip_scope {
    gateway    = var.extnet_gw
    netmask    = var.extnet_mask
    dns1       = var.extnet_dns1
    dns2       = var.extnet_dns2
    dns_suffix = var.extnet_suffix

    static_ip_pool {
      start_address = var.extnet_ip_pool_start
      end_address   = var.extnet_ip_pool_end
    }
  }
}

# Create new vCloud Org
resource "vcd_org" "org-name" {
  name                = var.org_name
  full_name           = var.org_full_name
  description         = var.org_description
  is_enabled          = "true"
  delete_recursive    = "true"
  delete_force        = "true"
  can_publish_catalogs = "false"
  depends_on = [vcd_external_network.extnet]
}

# Create new VDC

resource "vcd_org_vdc" "vdc-name" {
  name        = var.vdc_name
  description = var.vdc_description
  org         = var.org_name

  allocation_model = var.vdc_alloc_model
  network_pool_name = var.vdc_net_pool
  provider_vdc_name = var.vdc_pvdc_name

  compute_capacity {
    cpu {
      allocated = 0
    }
    memory {
      allocated = 0
    }
  }

  storage_profile {
    name = var.vdc_storage_name
    limit = var.vdc_storage_limit
    default = true
  }

  cpu_guaranteed = 0
  memory_guaranteed = 0
  cpu_speed = 2000
  network_quota = 10
  enabled = true
  enable_thin_provisioning = true
  enable_fast_provisioning = false
  delete_force = true
  delete_recursive = true 

  depends_on = [vcd_org.org-name]
}

 # Org External Network
 resource "vcd_network_direct" "netdirect" {
   org = var.org_name
   vdc = var.vdc_name
   name = "Terraform1-Lan"
   external_network = "Terraform1-Lan"
   depends_on = [vcd_org_vdc.vdc-name]
 }

 # Org vApp - Servers
 resource "vcd_vapp" "vapp" {
   name = "Servers"
   org = var.org_name
   vdc = var.vdc_name
   depends_on = [vcd_network_direct.netdirect]
 }
