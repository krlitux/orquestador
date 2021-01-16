#### Variables globales
variable application_code {
  description = "Código de aplicación a desplegar."
  type        = string
}

variable environment {
  description = "Especifica el ambiente en el que se desplegará la aplicación."
  type        = string
}

variable resource_correlative {
  description = "Especifica el número correlativo asignado al recurso."
  type        = string
  default     = "01"
}

variable base_correlative {
  description = "Especifica el numero correlativo asignado a la infraestructura base."
  type        = string
  default     = "01"
}

#### Variables para App Service Plan
variable container_type {
  description = "Especifica el numero correlativo asignado a la infraestructura base."
  type        = string
  default     = "docker"
}

variable location {
  description = "Código de la región a desplegar."
  type        = list(string)
}

variable aspl_sku_tier {
  description = "Especifica el nivel del Service Plan."
  type        = string
}

variable aspl_sku_size {
  description = "Especifica el tamaño del Service Plan."
  type        = string
}

variable aspl_kind {
  description = "Especifica el sistema  operativo al cual el Service Plan esta dirigido."
  type        = string
  validation {
    condition     = contains(["linux", "windows"], var.aspl_kind)
    error_message = "Only linux/windows values are allowed, see README."
  }
}

#### Variables para App Service for Container
variable container_type {
  description = "Especifica el numero correlativo asignado a la infraestructura base."
  type        = string
  default     = "docker"
}

variable location {
  description = "Código de la región a desplegar."
  type        = list(string)
}

variable container_image {
  description = "Especifica el nombre de la imagen desplegar."
  type        = string
}

variable asfc_aspl_id {
  description = "ID del App Service Plan creado por el módulo ASPL."
  type        = map
}
