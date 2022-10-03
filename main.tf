terraform{
  backend"azurerm"{}
}

provider "azurerm" {
  features {}

}

module "webapp" {
  source     = "./modules/webapp/infra"
  rg         = "rg-name-ambiente"
  location   = "location"
  plan       = "service-plan-ambiente"
  os_type    = "Windows"
  sku_name   = "sku-name"
  appservice = "appservice-name-ambiente"
  tags = {
    Name     = "terraform-"
    Ambiente = "dev"
  }

}

