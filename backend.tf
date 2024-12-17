terraform {
  backend "azurerm" {
    resource_group_name  = "pathkind-rg"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "pathkindtfstatestgacc"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    use_oidc             = true
    subscription_id      = "48cb4383-6e85-42cf-9d12-7fc574ee0b5f"
    client_id            = "22a8fdfc-ea52-4e9d-8a92-b418306f97f5"
    tenant_id            = "6ab50e79-eca6-4913-87ef-d8e572838838"
  }
}

