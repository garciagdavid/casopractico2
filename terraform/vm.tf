# Creamos una máquina virtual
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_virtual_machine

resource "azurerm_linux_virtual_machine" "myMVs" {
    count               = length(var.mvs)
    name                = "${var.mvs[count.index]}"
    resource_group_name = azurerm_resource_group.rg.name
    location            = azurerm_resource_group.rg.location
    size                = "${var.vm_size[count.index]}"
    admin_username      = "adminUsername"
    network_interface_ids = [ azurerm_network_interface.myNic[count.index].id ]
    disable_password_authentication = true
    computer_name = "${var.mvs[count.index]}"
    

    admin_ssh_key {
        username   = "adminUsername"
        public_key = file(var.public_key_path)
    }

    os_disk {
        name                    = "${var.mvs[count.index]}-disk"
        caching                 = "ReadWrite"
        storage_account_type    = "Standard_LRS"
    }

    plan {
        name      = "centos-8-stream-free"
        product   = "centos-8-stream-free"
        publisher = "cognosys"
    }

    source_image_reference {
        publisher = "cognosys"
        offer     = "centos-8-stream-free"
        sku       = "centos-8-stream-free"
        version   = "1.2019.0810"
    }

    boot_diagnostics {
        storage_account_uri = azurerm_storage_account.stAccount.primary_blob_endpoint
    }

    tags = {
        environment = "CP2"
    }

}