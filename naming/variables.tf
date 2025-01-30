variable "prefix" {
  description = "Préfixe du projet ou de l'organisation"
  type        = string
}

variable "environment" {
  description = "Environnement (dev, test, prod)"
  type        = string
}

variable "suffix" {
  description = "Suffixe optionnel (numéro, région, etc.)"
  type        = string
  default     = ""
}

variable "naming_conventions" {
  description = "Plan de nommage des ressources"
  type        = map(string)
  default = {
    "resource_group" = "{prefix}-{environment}-rg"
    "vnet"           = "{prefix}-{environment}-vnet"
    "subnet"         = "{prefix}-{environment}-subnet-{role}"
    "nsg"            = "{prefix}-{environment}-nsg-{role}"
    "storage"        = "{prefix}{environment}st{suffix}"
    "vm"             = "{prefix}-{environment}-vm-{role}"
    "aks"            = "{prefix}-{environment}-aks"
    "app_service"    = "{prefix}-{environment}-app"
    "app_gateway"    = "{prefix}-{environment}-appgw"
    "key_vault"      = "{prefix}-{environment}-kv"
  }
}

variable "role" {
  description = "Rôle spécifique pour la ressource (ex: web, db, app)"
  type        = string
  default     = ""
}
