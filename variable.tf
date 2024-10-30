variable "name" {
  description = "Postgresql Database server name"
  type        = string
  default     = "devcrppluseus1"
}

variable "resource_group_name" {
  description = "Th resource group for database server"
  type        = string
  default     = "dev-ehr"
}

variable "location" {
  description = "The region or location in which Database is created"
  type        = string
  default     = "East US"
}

variable "engineVersion" {
  description = "Postgres version"
  type        = string
  default     = "11"
}

variable "sku_name" {
  description = "Sku name/resource-type for Database"
  type        = string
  default     = "B_Gen5_2"
}

variable "administrator_login" {
  description = "Database admin/super-user name"
  type        = string
  default     = "devpsychplus"
}

variable "administrator_login_password" {
  description = "Database admin/super-user password"
  type        = string
  default     = "dev@123456"
}

variable "ssl_enforcement_enabled" {
  description = "Establishing ssl connection to the database connection "
  type        = bool
  default     = true
}

variable "azure_start_ip_address" {
  description = "Allowing Azure services to access Database with starting ip address"
  type        = string
  default     = "0.0.0.0"
}

variable "azure_end_ip_address" {
  description = "Allowing Azure services to access Database with Ending ip address"
  type        = string
  default     = "0.0.0.0"
}

variable "client_start_ip_address" {
  description = "Allowing current client to access database server via pgAdmin with starting ip address"
  type        = string
  default     = "182.180.172.10"
}

variable "client_end_ip_address" {
  description = "Allowing current client to access database server via pgAdmin with ending ip address"
  type        = string
  default     = "182.180.172.10"
}

variable "database_name" {
  description = "Database name in Azure Databass postgres server "
  type        = string
  default     = "devpsychplus" 
}

variable "charset" {
  description = "Characters set for database"
  type        = string
  default     =  "UTF8" 
}

variable "collation" {
  description = "Collections for database characters"
  type        = string
  default     = "English_United States.1252" 
}

variable "create_mode" {
  description = "Database creation mode"
  type        = string
  default     = "Default"
}

variable "backup_retention_days" {
  description = "Database backup retenion days"
  type        = number
  default     = 7
}

variable "geo_redundant_backup_enabled" {
  description = "Geo redunant backup enabled or not"
  type        = bool
  default     = false 
}

variable "auto_grow_enabled" {
  description = "Database auto grow or not"
  type        = bool
  default     = true 
}

variable "infrastructure_encryption_enabled" {
  description = "Database encryption"
  type        = bool
  default     = false  
}

variable "storage_mb" {
  description = "Database storage"
  type        = number
  default     =  8192
}

variable "subnet_id" {
  description = "subnet id"
  type        = string
}

variable "database_virtual_network_rule" {
  description = "Database server virtual network rule name"
  type        = string 
  default     = "postgres_vnet_rule"
}

variable "ignore_missing_vnet_service_endpoint" {
  description = "ignore_missing_vnet_service_endpoint"
  type        = bool
  default     = true 
}