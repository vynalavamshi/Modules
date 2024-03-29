#resource group
resource_group_name = "devrg001"
location = "East Us"


#storage account
storage_account_name = "devstorageaccount002"
account_tier = "Standard"
account_replication_type = "LRS"
storage_container = "devstoragecontainer002"
container_access_type = "Private"


#VM
vm_name = "devvm002"
vm_size = "Standard_F2"
admin_username = "devVamshi@6678"
admin_password = "devVamshi@123"
os_disk_caching = "ReadWrite"
os_disk_storage_account_type = "Standard_LRS"
source_img_ref_publisher = "MicrosoftWindowsServer"
source_img_ref_offer = "WindowsServer"
source_img_ref_sku = "2016-Datacenter"
source_img_ref_version = "latest"


#vnet 
vnet_name = "devvnet002"
address_space = ["10.0.0.0/16"]
subnet_name = "devsubnet002"
address_prefixes = ["10.0.2.0/24"]

#nic
nic_name = "devnic002"
ip_config_name = "internal"
private_ip_address_allocation = "Dynamic"


#key-vault
key_vault_name = "devkeyvault002"
sku_name = "standard"
soft_delete_retention_days = 7
key_permissions = ["Get"]
secret_permissions = ["Get"]
storage_permissions = ["Get"]

# #role-assignment
# scopeid = data.azurerm_subscription.primary.id
# role_definition_id = "Reader"
# principal_id = data.azurerm_client_config.example.object_id