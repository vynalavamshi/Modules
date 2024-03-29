resource "azurerm_windows_virtual_machine" "vm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  // depends_on          = [azurerm_resource_group.rg]
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
  }

  source_image_reference {
    publisher = var.source_img_ref_publisher
    offer     = var.source_img_ref_offer
    sku       = var.source_img_ref_sku
    version   = var.source_img_ref_version
  }
}
