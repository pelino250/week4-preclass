# Pre-Class 2: a cloud server, written by you

There is no Terraform code in this folder on purpose. You write it from the
provider docs. No AI for Terraform, same rule as Formative 3.

Create your files here (`main.tf`, `variables.tf`, `outputs.tf`) and work only
with the cloud you have an account on.

## Checklist

- [ ] Network and subnet
- [ ] Firewall: SSH from your IP only (`curl ifconfig.me`), your app port from anywhere
- [ ] A small Linux VM that accepts your SSH public key
- [ ] Outputs named `public_ip` and `ssh_user`
- [ ] Region, VM size and your IP are variables, not hardcoded
- [ ] Nothing secret in the repo: no keys, no `.tfvars`, no state files

## Finding the image

- **Azure:** the VM's `source_image_reference` takes publisher, offer and sku.
  `az vm image list --publisher Canonical --all -o table`
- **AWS:** do not paste an AMI ID, it differs per region. Use an `aws_ami` data
  source filtered by Canonical's owner ID `099720109477` and an Ubuntu name
  pattern, with `most_recent = true`.

## Docs

Azure
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine
- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/4.0-upgrade-guide

AWS
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
- https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami

## When you are done

`terraform destroy`, then check the portal. Commit the `terraform/` work to
your own project repository for Formative 3.
