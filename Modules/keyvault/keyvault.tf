data "azurerm_client_config" "current" {}


#Key_Vault
resource "azurerm_key_vault" "keyvault" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = false
  sku_name = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      var.key_permissions
      # "Get",
    ]

    secret_permissions = [
      # "Get",
      var.secret_permissions
    ]

    storage_permissions = [
      # "Get",
      var.storage_permissions
    ]
  }
}