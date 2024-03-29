# resource "azurerm_resource_group" "rg" {
#   name     = "devrg001"
#   location = "East US"
# }


#storage account
resource "azurerm_storage_account" "storageaccountname" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  depends_on = [ azurerm_resource_group.rg ]
}


#storage container
resource "azurerm_storage_container" "storagecontainer" {
  name                  = var.storage_container
  storage_account_name  = var.storage_account_name
  container_access_type = var.container_access_type
  depends_on = [ azurerm_resource_group.rg,azurerm_storage_account.storageaccountname ]
}
