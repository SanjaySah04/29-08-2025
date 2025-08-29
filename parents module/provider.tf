terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "29-08rg"
    storage_account_name = "storageacc290825"
    container_name       = "2908container"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "d8d16aa2-049b-4efb-86e5-355bf361e7c4"
  features {}
}