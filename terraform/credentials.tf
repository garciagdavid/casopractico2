# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
# crea un service principal y rellena los siguientes datos para autenticar
provider "azurerm" {
  features {}
  subscription_id = "<SUBSCRIPTION_ID>"
  client_id       = "<APP_ID>"         # se obtiene al crear el service principal
  client_secret   = "<CLIENT_SECRET>"  # se obtiene al crear el service principal
  tenant_id       = "<TENANT_ID>"      # se obtiene al crear el service principal
}