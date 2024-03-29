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

variable location {
  description = "Código de la región a desplegar."
  type        = list(string)
}

#### Variables para App Service Plan
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

variable container_image {
  description = "Especifica el nombre de la imagen desplegar."
  type        = string
}

#### Variables para Front Door
/*variable azfd_backend_latency {
  description = "Tiempo en milisegundos que frontdoor tomará en cuenta para considerar un backend saludable."
  type        = number
  default     = 0
}

variable azfd_session_affinity {
  description = "Permite dirigir el tráfico subsiguiente de una sesión de usuario al mismo backend de la aplicación."
  type        = bool
  default     = false
}*/ #3er ecenario

/*variable azfd_backend {
  description = "Variables para backend: host_name, host_header, http_port, https_port, priority, weight"
  type = list(object({
    host_name   = string
    host_header = string
    http_port   = string
    https_port  = string
    priority    = string
    weight      = string
  }))
}*/ #2do escenario
