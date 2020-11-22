provider "ovirt" {
  url = var.ovirt_url
  username  = var.ovirt_username
  password  = var.ovirt_password
}

terraform {
  backend "local" {
    path = "ovirt_terraform.tfstate"
  }
}

resource "ovirt_vm" "vm" {

  connection {
    host = var.vm_nic_ip_address
    user = var.ansible_user
  }

  provisioner "ansible" {
      plays {
        playbook {
          file_path = "${path.module}/ansible-data/playbooks/install-httpd.yaml"
          roles_path = [
              "${path.module}/ansible-data/roles"
          ]
        }
      }
      ansible_ssh_settings {
        insecure_no_strict_host_key_checking = var.insecure_no_strict_host_key_checking
      }
    }

    name                 = var.vm_name
    cluster_id           = var.cluster_id
    memory               = var.vm_memory
    template_id          = var.vm_template_id
    cores                = var.vm_cpu_cores

    initialization {
      authorized_ssh_key = var.vm_authorized_ssh_key
      host_name          = var.vm_hostname
      timezone           = var.vm_timezone
      dns_search         = var.vm_dns_search
      dns_servers        = var.vm_dns_servers

      nic_configuration {
        label              = var.vm_nic_device
        boot_proto         = var.vm_nic_boot_proto
        address            = var.vm_nic_ip_address
        gateway            = var.vm_nic_gateway
        netmask            = var.vm_nic_netmask
        on_boot            = var.vm_nic_on_boot
      }
    }
}
