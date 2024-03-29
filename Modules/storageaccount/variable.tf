variable "resource_group_name" {
  description = "Req - name of the rg name"
  type = string
}

variable "location" {
  description = "req - location of Resource group here"
  type = string
}


#container
variable "storage_account_name" {
  description = "req - value for storage container"
  type = string
}

variable "account_tier" {
  description = "req - account tier"
  type = string
}

variable "account_replication_type" {
  description = "req - account replication type"
  type = string
}

variable "storage_container" {
  description = "req - storage container name"
  type = string
}

variable "container_access_type" {
  description = "req - container access type"
  type = string
}