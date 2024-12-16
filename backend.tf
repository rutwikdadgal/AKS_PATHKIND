terraform {
  backend "azurerm" {
    resource_group_name  = "pathkind-rg"
    storage_account_name = "pathkindtfstatestgacc"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}