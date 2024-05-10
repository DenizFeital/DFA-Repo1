terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "3.97.1"
        }
    }
backend "azurerm" {
    resource_group_name = "DFA-RG-ABC"
    storage_account_name = "dfatf"
    container_name = "dfacontainertf"
    key = "abc.dfakeyfile"
}
