variable "resource_group_name" {
  description = "Req - name of the rg name"
  type = string
}

variable "location" {
  description = "req - location of Resource group here"
  type = string
}


#VM
variable "vm_name" {
    description = "req - name of vm"
    type = string
}

variable "vm_size" {
  description = "req - size of vm"
  type = string
}

variable "admin_username" {
    description = "req - vm admin user name"
    type = string
}

variable "admin_password" {
    description = "req - vm admin password "
    type = string
}

variable "os_disk_caching" {
    description = "req - os disk caching"
    type = string
  
}

variable "os_disk_storage_account_type" {
  description = "req - os disk storage account type"
    type = string
}
variable "source_img_ref_publisher" {
  description = "req - source img ref publisher"
    type = string
}

variable "source_img_ref_offer" {
  description = "req - source img ref offer"
    type = string
}

variable "source_img_ref_sku" {
  description = "req - source img ref sku"
    type = string
}

variable "source_img_ref_version" {
  description = "req - source img ref version"
    type = string
}