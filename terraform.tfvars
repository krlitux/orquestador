#### Variables globales
application_code = "test"
environment      = "cert"
location         = ["cus"]

#### Variables para App Service Plan
aspl_sku_tier = "standard"
aspl_sku_size = "s1"
aspl_kind     = "linux"

#### Variables para App Service for Container
asfc_aspl_id    = module.aspl01.aspl_id
container_type  = "docker"
container_image = "tutum/hello-world"