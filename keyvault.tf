data "azurerm_key_vault" "dev" {
  name                = "kv-dev"
  resource_group_name = "rg-dev"
}

data "azurerm_key_vault_secret" "mysql_password" {
  name         = "mysql-password"
  key_vault_id = data.azurerm_key_vault.dev.id
}

resource "azurerm_mysql_server" "example" {
  name                         = var.mysql_server_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  administrator_login          = var.mysql_admin_username
  administrator_login_password = data.azurerm_key_vault_secret.mysql_password.value
}
