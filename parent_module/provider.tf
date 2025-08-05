terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
    backend "azurerm" {
    resource_group_name = "sagar-rg"
    storage_account_name = "sagarstg909"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "9f2fc162-8625-4e93-8616-a608f22e0f7e"
}