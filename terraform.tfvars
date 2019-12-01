# vCloud Director Connection Variables

vcd_user = "terraform"
vcd_pass = "Password123"
vcd_url = "https://vcloud8director1.vmlab.local/api"
vcd_max_retry_timeout = "60"
vcd_allow_unverified_ssl = "true"

#vCloud Director External Network
extnet_name = "Terraform1-Lan"
extnet_description = "Terraform1 LAN - External VLAN"
extnet_gw = "192.168.10.1"
extnet_mask = "255.255.255.0"
extnet_dns1 = "8.8.8.8"
extnet_dns2 = "8.8.4.4"
extnet_suffix = "terraform1cust.local"
extnet_ip_pool_start = "192.168.10.16"
extnet_ip_pool_end = "192.168.10.31"
extnet_vcenter = "vcloud8vcenter" # vCenter Instance Name as it appears in vCloud Director


# vCloud Director Organization Variables
org_name = "Terraform1"
org_full_name = "My Terraform Organization"
org_description = "Terraform1 Create Org"

# vCloud Director Organization VDC Variables
vdc_alloc_model = "AllocationVApp" # Pay-As-You-Go
vdc_net_pool = "VMLAB pVDC A-VXLAN-NP"
vdc_pvdc_name = "VMLAB pVDC A"
vdc_name = "Terraform1-VDC-A"
vdc_description = "Terraform1 VDC Description"
vdc_storage_name = "Gold Storage Policy"
vdc_storage_limit = "102400"

