terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "3.97.1"
        }
    }
backend "azurerm" {
    resource_group_name = "cloud-shell-storage-eastus"
    storage_account_name = "dfatf"
    container_name = "dfacontainertf"
    key = "abc.dfakeyfile"
}
}

provider "azurerm" {
  features {}
}
#Create Resource Group!!
resource "azurerm_resource_group" "DFA-RG-ABC" {
  name = "DFA-RG-ABC"
  location = "eastus"
}
