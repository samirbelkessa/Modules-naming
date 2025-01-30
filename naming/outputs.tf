output "resource_group_name" {
  value = replace(var.naming_conventions["resource_group"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
}

output "vnet_name" {
  value = replace(var.naming_conventions["vnet"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
}

output "subnet_name" {
  value = replace(var.naming_conventions["subnet"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
           |> replace("{role}", var.role)
}

output "nsg_name" {
  value = replace(var.naming_conventions["nsg"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
           |> replace("{role}", var.role)
}

output "storage_account_name" {
  value = replace(var.naming_conventions["storage"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
           |> replace("{suffix}", var.suffix)
}

output "vm_name" {
  value = replace(var.naming_conventions["vm"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
           |> replace("{role}", var.role)
}

output "aks_name" {
  value = replace(var.naming_conventions["aks"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
}

output "app_service_name" {
  value = replace(var.naming_conventions["app_service"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
}

output "app_gateway_name" {
  value = replace(var.naming_conventions["app_gateway"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
}

output "key_vault_name" {
  value = replace(var.naming_conventions["key_vault"], "{prefix}", var.prefix)
           |> replace("{environment}", var.environment)
}
