terraform {

  required_version = "~> 1.10"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.20, < 5.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "infrastructure" {
  name     = "rg-demo-app-free"
  location = "canadacentral"
}

resource "azurerm_service_plan" "example" {
  name                = "asp-f1"
  resource_group_name = azurerm_resource_group.infrastructure.name
  location            = azurerm_resource_group.infrastructure.location
  os_type             = "Linux"
  sku_name            = "F1"
}