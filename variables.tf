variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "aks_subnet_name" {
  description = "AKS subnet name"
  type        = string
}

variable "db_subnet_name" {
  description = "Database subnet name"
  type        = string
}

variable "aks_cluster_name" {
  description = "AKS cluster name"
  type        = string
}

variable "mysql_server_name" {
  description = "MySQL server name"
  type        = string
}

variable "mysql_admin_username" {
  description = "MySQL admin username"
  type        = string
}

variable "mysql_admin_password" {
  description = "MySQL admin password"
  type        = string
  sensitive   = true
}
