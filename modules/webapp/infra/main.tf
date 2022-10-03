resource "azurerm_resource_group" "rg" {
 name=var.rg
 location=var.location 
 tags = var.tags
}

resource "azurerm_service_plan" "plan" {
  name = var.plan
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  os_type =var.os_type
  sku_name = var.sku_name
tags = var.tags
}

resource "azurerm_windows_web_app" "appservice" {
  name                = var.appservice
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  service_plan_id     = azurerm_service_plan.plan.id
  https_only = true

  site_config {}
tags = var.tags
}
