terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "state_file"
    storage_account_name = "statefilestorage123"
    container_name       = "statefilecontainer"
    key                  = "prod-statefile"
  }
}
provider "azurerm" {
  features {}
}
