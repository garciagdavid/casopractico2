# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
# crea un service principal y rellena los siguientes datos para autenticar
provider "azurerm" {
    features{}
    subscription_id= "5bfbb8db-2dfa-49fd-84a8-660b01b7aec0"
    client_id= "d1776ff8-c90a-4d3d-bd06-7c6843036891"
    client_secret= "AX9n9YZeJw0uLko~xb-UE4RHx-uMagWwU0"
    tenant_id= "899789dc-202f-44b4-8472-a6d40f9eb440"
}