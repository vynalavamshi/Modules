
#Resource_group 
variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}


#storage account
variable "storage_account_name" {

  description = "storage account name"
  type        = string
}
variable "account_tier" {
  description = "account tier"
  type        = string
}

variable "account_replication_type" {
  description = "account replication type"
  type        = string
}

#container
variable "storage_container" {
  description = "storage container"
  type        = string
}

variable "container_access_type" {
  description = "container access type"
  type        = string
}



#virtual machine
variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

#Os
variable "os_disk_caching" {
  type = string
}

variable "os_disk_storage_account_type" {
  type = string
}

#source_img_ref

variable "source_img_ref_publisher" {
  type = string
}

variable "source_img_ref_offer" {
  type = string
}

variable "source_img_ref_sku" {
  type = string
}

variable "source_img_ref_version" {
  type = string
}



#nic
variable "vnet_name" {
  description = "req vnet name here"
  type        = string
}

variable "address_space" {
  description = "req address space"
  type        = list(any)
}
variable "subnet_name" {
  description = "req vnet name here"
  type        = string
}


variable "address_prefixes" {
  description = "req vnet name here"
  type        = list(any)
}
variable "nic_name" {
  description = "req vnet name here"
  type        = string
}
variable "ip_config_name" {
  description = "req vnet name here"
  type        = string
}
variable "private_ip_address_allocation" {
  description = "req vnet name here"
  type        = string
}



# key vault

variable "key_vault_name" {
  type = string
}

variable "sku_name"{
    type = string

}
variable "soft_delete_retention_days" {
    type = number
}

variable "key_permissions" {
  type = list
}

variable "secret_permissions" {
    type = list 
}

variable "storage_permissions" {
  type = list 
}


# #role assignment
# variable "scopeid" {
#   type = string
# }

# variable "role_definition_id" {
#     type = string
# }

# variable "principal_id" {
#     type = string
# }