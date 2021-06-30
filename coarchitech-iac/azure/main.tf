resource "azurerm_resource_group" "rg" {
  name     = "${var.environment}-${var.project}-rg"
  location = var.region
}

resource "azurerm_storage_account" "storage" {
  name                     = random_string.storage_name.result
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.region
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_app_service_plan" "asp" {
  name                = "${var.environment}-${var.project}-plan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.region
  kind                = var.kind
  sku {
    tier = var.tier
    size = var.size
  }
}

resource "azurerm_function_app" "functions" {
  name                       = "${var.environment}-${var.project}-app-function"
  location                   = var.region
  resource_group_name        = azurerm_resource_group.rg.name
  app_service_plan_id        = azurerm_app_service_plan.asp.id
  storage_account_name       = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
  version                    = "~3"
  app_settings = {
    https_only                   = true
    FUNCTIONS_WORKER_RUNTIME     = "node"
    WEBSITE_NODE_DEFAULT_VERSION = "~14"
    WEBSITE_RUN_FROM_PACKAGE     = "1"

  }
}
// Se crea el comando para el despliegue usando la libreria de func de npm
locals {
  publish_code_command = "cd ${abspath(path.module)}/app && func azure functionapp publish ${azurerm_function_app.functions.name}"
}

resource "null_resource" "function_app_publish" {
  provisioner "local-exec" {
    command = local.publish_code_command
  }
  depends_on = [local.publish_code_command, azurerm_function_app.functions]
  triggers = {
    publish_code_command = local.publish_code_command
  }
}

data "azurerm_function_app" "info_app" {
  name                = azurerm_function_app.functions.name
  resource_group_name = azurerm_resource_group.rg.name
}



