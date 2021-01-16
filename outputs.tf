#### Modulo App Service Plan
output "aspl_name" {
  description = "Mapa con los nombres de los App Service Plan aprovisionados"
  value       = module.aspl01.aspl_name
}

output "aspl_tier" {
  description = "Mapa con los niveles de los App Service Plan aprovisionados"
  value       = module.aspl01.aspl_tier
}

output "aspl_id" {
  description = "Mapa con los IDs de los App Service Plan aprovisionados"
  value       = module.aspl01.aspl_id
}

####  App Service for Container
output "asfc_name" {
  description = "Nombre del recurso desplegado"
  value       = module.asfc01.asfc_name
}

output "asfc_id" {
  description = "ID del recurso desplegado"
  value       = module.asfc01.asfc_id
}

output "asfc_image" {
  description = "Imagen ingestada en el recurso"
  value       = module.asfc01.asfc_image
}
