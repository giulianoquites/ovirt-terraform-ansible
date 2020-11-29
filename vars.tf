variable "ovirt_url" {
    description = "oVirt API URL"
    default = "https://ovirt.mmagnani.lab/ovirt-engine/api"
}
variable "ovirt_username" {
    description = "oVirt Admin user"
    default     = "admin@internal"
}
variable "ovirt_password" {
    description = "oVirt Admin password"
    default     = "awesomepass"
}

variable "ansible_user" {
    description = "Ansible user"
    default     = "root"
}

# Basic
variable "vm_name" {
  description = " A unique name for the VM"
  default     = "webserver"
}
variable "cluster_id" {
  description = "The ID of cluster the VM belongs to"
  default     = "4749f2ae-ab54-11ea-9510-2c4d544b0bd1"
}
variable "vm_template_id" {
  description = "The ID of template the VM based on"
  default     = "4e079033-534c-4e50-a304-b14e5d9024b7"
}
variable "vm_memory" {
  description = "The amount of memory of the VM (in metabytes)"
  default     = "4096"
}
variable "vm_cpu_cores" {
  description = "The amount of cores"
  default     = "4"
}
variable "vm_cpu_sockets" {
  description = "The amount of sockets"
  default     = "1"
}
variable "vm_cpu_threads" {
  description = " The amount of threads"
  default     = "1"
}

# VM initialization

##https://github.com/msmagnanijr.keys
variable "vm_authorized_ssh_key" {
  description = "The ssh key for the VM"
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDPD3DSuiXFuOz5HZqtgYbEdQcFYEtF0dOg2hiDwzKzBmB4vJhcqjbUCQrBSs0TCR1ZCKd5GlIw+Ju30tf9r+kakJeCU7DRIJTAWyT8Ne2IWaSPpSmp3pwwFvYGidUMxyOGHrD49aNbmBNQhWmGeOmSeFAcLvl345/KSsnbxE4M74FNfx2i8XYryb2dJ5j1ojW36YXu2ZJYdRKoGca82byiKRH4hh79Utc0ilO2FwWdmi0nBTvn+fU/UsT/xNvXCO23E7xkLc7ezdeXvRKiajLYy8AeHbIMQW8gkbLc3fa3Uexocf3w0jejzAm9eDF9QqCOb6Q9G3RLn5m4voJuu+gGWtw5QsMpyk99CLr6kXWjDbcUn/YA2oUfOXLZ4mXFWsdKoFC/kzZtFk9CWtjiRk8JVCGellBgewS6zDJ4itPZeSO3YTzJLetr97hNIvTxqQkVqQfnjbOqrs6bRxyU52B2OHADNQROPqAETjUamIyovtbn3uo5x0pU4URSzee34jc= mmagnani@localhost.localdomain"
}
variable "vm_hostname" {
  description = "The hostname for the VM"
  default     = "webserver.mmagnani.lab"
}
variable "vm_timezone" {
  description = "The timezone for the VM"
  default     = "America/Sao_Paulo"
}
variable "vm_user_name" {
  description = "The user name for the VM"
  default     = ""
}
variable "vm_custom_script" {
  description = "Set the custom script for the VM"
  default     = ""
}
variable "vm_dns_search" {
  description = "The dns server for the VM"
  default     = "mmagnani.lab"
}
variable "vm_dns_servers" {
  description = "The dns server for the VM"
  default     = "10.0.0.144 10.0.0.1 8.8.8.8"
}

# Initialization - Nic Configurations
variable "vm_nic_device" {
  description = "The vNIC to apply this configuration."
  default     = "ens3"
}
variable "vm_nic_boot_proto" {
  description = "The boot protocol for the vNIC configuration."
  default     = "static"
}
variable "vm_nic_ip_address" {
  description = "The IP address for the vNIC"
  default     = "10.0.0.172"
}
variable "vm_nic_gateway" {
  description = "The gateway for the vNIC"
  default     = "10.0.0.1"
}
variable "vm_nic_netmask" {
  description = "The netmask for the vNIC"
  default     = "255.255.255.0"
}
variable "vm_nic_on_boot" {
  description = "The flag to indicate whether the vNIC will be activated at VM booting"
  default     = "true"
}
variable "insecure_no_strict_host_key_checking" {
  default = false
}
