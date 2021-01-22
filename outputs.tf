#### Modulo App Service Plan
output "aspl_name" {
  description = "Nombres de los App Service Plan aprovisionados"
  value       = module.aspl01.aspl_name
}

output "aspl_tier" {
  description = "Niveles de los App Service Plan aprovisionados"
  value       = module.aspl01.aspl_tier
}

output "aspl_id" {
  description = "IDs de los App Service Plan aprovisionados"
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

#### Front Door
/*output "azfd_id" {
  description = "Id del recurso desplegado"
  value       = module.azfd01.azfd_id
}

output "azfd_frontend" {
  description = "Hostname configurado en frontdoor"
  value       = module.azfd01.azfd_frontend
}*/
