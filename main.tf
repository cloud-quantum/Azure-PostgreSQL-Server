resource "azurerm_postgresql_server" "postgres-server" {

  sku_name                          = var.sku_name
  name                              = var.name
  version                           = var.engineVersion
  location                          = var.location
  administrator_login               = var.administrator_login
  administrator_login_password      = var.administrator_login_password
  resource_group_name               = var.resource_group_name
  ssl_enforcement_enabled           = var.ssl_enforcement_enabled
  create_mode                       = var.create_mode
  backup_retention_days             = var.backup_retention_days
  auto_grow_enabled                 = var.auto_grow_enabled
  geo_redundant_backup_enabled      = var.geo_redundant_backup_enabled
  infrastructure_encryption_enabled = var.infrastructure_encryption_enabled
  storage_mb                        = var.storage_mb    

}

resource "azurerm_postgresql_firewall_rule" "azure-services-firewall" {

  resource_group_name = azurerm_postgresql_server.postgres-server.resource_group_name
  name                = "${var.name}-pg-azure-firewall"
  server_name         = azurerm_postgresql_server.postgres-server.name
  start_ip_address    = var.azure_start_ip_address
  end_ip_address      = var.azure_end_ip_address

}

resource "azurerm_postgresql_firewall_rule" "current-client-firewall" {
  resource_group_name = azurerm_postgresql_server.postgres-server.resource_group_name
  name                = "${var.name}-pg-client-firewall"
  server_name         = azurerm_postgresql_server.postgres-server.name
  start_ip_address    = var.client_start_ip_address
  end_ip_address      = var.client_end_ip_address
}

resource "azurerm_postgresql_database" "postgres-server-Database" {
  server_name = azurerm_postgresql_server.postgres-server.name
  resource_group_name = azurerm_postgresql_server.postgres-server.resource_group_name
  name                = var.database_name
  charset             = var.charset
  collation           = var.collation
}

resource "azurerm_postgresql_virtual_network_rule" "postgres-virtual-network-rule" {
  name                                 = var.database_virtual_network_rule
  resource_group_name                  = azurerm_postgresql_server.postgres-server.resource_group_name
  server_name                          = azurerm_postgresql_server.postgres-server.name
  subnet_id                            = var.subnet_id
  ignore_missing_vnet_service_endpoint = var.ignore_missing_vnet_service_endpoint
}