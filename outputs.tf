output "Database_server" {
  description = "Database server"
  value       = azurerm_postgresql_server.postgres-server.name
}

output "Sku_Name" {
  description = "Sku name"
  value       = azurerm_postgresql_server.postgres-server.sku_name
}

output "Database_Admin_Name" {
  description = "Database admin name"
  value       = azurerm_postgresql_server.postgres-server.administrator_login
}

output "Database_Name" {
  description = "Database name"
  value       = azurerm_postgresql_database.postgres-server-Database.name 
}