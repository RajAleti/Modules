terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.13.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
        
  }
}

module "ResourceGroup" {
    source = "./ResourceGroup"
    base_name = "TerraformExample01"
    location = "West US"
  
}

module "StorageAccount" {
   
    source = "./StorageAccount"
    base_name = "TerraformExample01"
    resource_group_name = module.ResourceGroup.rg_name_out
    location = "West US"

  
}