resource "azurerm_storage_account" "prod_stg" {
  name                     = var.stg
  location                 = var.location
  resource_group_name      = var.RG
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}