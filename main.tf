resource "azurerm_storage_blob" "delete_1stfile" {
  name                   = "1stfile.txt"
  storage_account_name   = "1stblob"
  storage_container_name = "1stcontainer"
  type                   = "Block"

  lifecycle {
    prevent_destroy = false
  }
}
