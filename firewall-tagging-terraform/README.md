# Firewall Tagging - Terraform
<p>firewall-tagging-terraform.tf</p>

### Terraform setup for deploying a custom VPC with virtual machines restricted to traffic from approved locations.

## Challenge
###  1 VPC, 3 regions 2 Windows VMs, 2 Linux VMs
### Linux VM 1 is only accessible in Iowa | Linux VM 2 is only accessible in Sao Paulo | Create a third Linux VM, accessible in both Iowa and Sao Paulo