terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f47677a8-89c6-4bf2-b96b-8bbcdd5fb6d9"
  # Configuration options
}