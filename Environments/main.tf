data "azurerm_client_config" "current" {}

data "azurerm_resource_group" "resourcegroupname" {
  name = var.resource_group_name
}


#storage account
module "azurerm_storage_account" {
  source                   = "../Modules/storageaccount"
  resource_group_name      = data.resource_group_name.name
  location                 = var.location
  storage_account_name     = var.storage_account_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type


  #container
  storage_container     = var.storage_container
  container_access_type = var.container_access_type
}



#virtual machine

module "azurerm_windows_virtual_machine" {
  source = "../Modules/virtual machine"

  #resource
  resource_group_name = var.resource_group_name
  location            = var.location

  vm_name        = var.vm_name
  vm_size        = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password

  #OS disk
  os_disk_caching              = var.os_disk_caching
  os_disk_storage_account_type = var.os_disk_storage_account_type


  #source img reference
  source_img_ref_publisher = var.source_img_ref_publisher
  source_img_ref_offer     = var.source_img_ref_offer
  source_img_ref_sku       = var.source_img_ref_sku
  source_img_ref_version   = var.source_img_ref_version
}


#vnet
module "azurerm_virtual_network" {
  source = "../Modules/vnetwork"

  resource_group_name = var.resource_group_name
  location            = var.location

  #vnet
  vnet_name     = var.vnet_name
  address_space = var.address_space

  #subnet
  subnet_name      = var.subnet_name
  address_prefixes = var.address_prefixes

  #nic
  nic_name = var.nic_name

  #ip config in nic
  ip_config_name                = var.ip_config_name
  private_ip_address_allocation = var.private_ip_address_allocation

}


#key vault
module "azurerm_key_vault" {
  source = "../Modules/keyvault"
  key_vault_name = var.key_vault_name
  resource_group_name = var.resource_group_name
  location = var.location
  soft_delete_retention_days = var.soft_delete_retention_days
  sku_name = var.sku_name
  key_permissions = var.key_permissions
  secret_permissions = var.secret_permissions
  storage_permissions = var.storage_permissions
}


# module "azurerm_role_assignment" {
#   source = "../Modules/roleassignment"
#   role_definition_id = var.role_definition_id
#   principal_id = var.principal_id
#   scopeid = var.scopeid
# }
