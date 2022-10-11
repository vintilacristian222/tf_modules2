terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.26.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

module "ResourceGroup" {

    source = "./ResourceGroup"
    base_name = "terraformExample"
    location = "West US"
  
}

module "StorageAccount" {
    source = "./StorageAccount"
    base_name= "tf"
    resource_group_name = "teraformExample"
    location= "West US"

}