data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                = "my-keyvault"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
}

data "azurerm_key_vault_secret" "mysql_password" {
  name         = "mysql-admin-password"
  key_vault_id = azurerm_key_vault.kv.id
}

variable "mysql_admin_password" {
  description = "MySQL admin password"
  type        = string
  sensitive   = true
  default     = data.azurerm_key_vault_secret.mysql_password.value
}
