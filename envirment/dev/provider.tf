terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "ToDoApp-Rg"
    storage_account_name = "babustore"
    container_name       = "todocontainer"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "cfae3337-c60d-4c4d-b519-15b04d63db89"
  features {}
}