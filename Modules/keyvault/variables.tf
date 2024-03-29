#resource group
variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}


#Key_vault
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