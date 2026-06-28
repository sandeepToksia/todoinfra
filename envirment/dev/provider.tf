terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "e3b67f9a-6610-49b8-97c2-f6ba3fafacc5"
  features {}
}
