# Terraform - Create vCloud Organization with External Network
#### Date: 1-12-2019
#### Version: 1
#### Blog: www.sysadmintutorials.com
#### Twitter: @systutorials

## Description

Using Terraform I Automate the process of creating an External Network, vCloud Director Organization, Organization VDC and vApp

## File Listing & Description
1. main.tf<br>
1. terraform.tfvars<br>
1. variables.tf<br>

Full blog post explaining the entire Terraform code can be found here:<br>
https://www.sysadmintutorials.com/getting-started-with-terraform-and-vmware-vcloud-director/<br>
  
1. Main.tf contains the provider and resources used to build the environment<br>

2. terraform.tfvars contain the variable values. Change these to suit your environment<br>

3. variables.tf contain variable options. Currently only contains descriptions of the variables<br>
 
## Directions for use

Place all these files into one folder on your terraform host.

Type: terraform init to download the vcd provider<br>
Use: terraform plan to test the configuration against your vCloud Director instance (does not make any changes)<br>
Use: terraform apply to setup this vCloud Organization. First part will show a summary, type 'yes' to execute<br>
Use: terraform destroy to completely remove the vCloud Organization.
