terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "cfae3337-c60d-4c4d-b519-15b04d63db89"
  features {}
}
