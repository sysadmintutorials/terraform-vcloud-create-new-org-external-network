# vCloud Director Connection Variables
variable "vcd_user" {
    description = "vCloud user"
}

variable "vcd_pass" {
    description = "vCloud pass"
}

variable "vcd_url" {
    description = "vCloud url"
}

variable "vcd_max_retry_timeout" {
    description = "vCloud max retry timeout"
}

variable "vcd_allow_unverified_ssl" {
    description = "vCloud allow unverified ssl"
}

# vCloud Director External Network
variable "extnet_name" {
    description = "External Network Name"
}
variable "extnet_description" {
    description = "External Network Description"
}
variable "extnet_gw" {
    description = "External Network Gateway"
}
variable "extnet_mask" {
    description = "External Network Mask"
}
variable "extnet_dns1" {
    description = "External Network DNS1"
}
variable "extnet_dns2" {
    description = "External Network DNS2"
}
variable "extnet_suffix" {
    description = "External Network DNS Suffix"
}
variable "extnet_ip_pool_start" {
    description = "External Network IP Pool Start Address"
}
variable "extnet_ip_pool_end" {
    description = "External Network IP Pool End Address"
}
variable "extnet_vcenter" {
    description = "External Network vCenter Server"
}

# vCloud Director Organization Variables
variable "org_name" {
    description = "Organization Name"
}

variable "org_full_name" {
    description = "Organization Full Name"
}

variable "org_description" {
    description = "Organization Description"
}

# vCloud Director Organization VDC Variables
variable "vdc_alloc_model" {
    description = "VDC Allocation Model"
}
variable "vdc_net_pool" {
        description = "VDC Network Pool"
}
variable "vdc_pvdc_name" {
        description = "VDC Provider VDC Name"
}
variable "vdc_description" {
    description = "VDC Description"
}
variable "vdc_name" {
    description = "VDC Name"
}
variable "vdc_storage_name" {
        description = "VDC Storage Policy"
}
variable "vdc_storage_limit" {
        description = "VDC Storage Limit"
}
