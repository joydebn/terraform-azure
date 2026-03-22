output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

output "mysql_server_name" {
  value = azurerm_mysql_flexible_server.mysql.name
}
