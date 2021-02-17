#### Variables globales
application_code = "test"
environment      = "cert"
location         = ["eu2","cus"]

#### Variables para App Service Plan
aspl_sku_tier = "standard"
aspl_sku_size = "s1"
aspl_kind     = "linux"

#### Variables para App Service for Container
container_type  = "docker"
container_image = "tutum/hello-world"

#### Variables para Front Door
azfd_backend_latency  = 200
azfd_session_affinity = false
azfd_backend = [
  {
    host_name   = "asfceu2testcert01.azurewebsites.net",
    host_header = "asfceu2testcert01.azurewebsites.net",
    http_port   = "80",
    https_port  = "443",
    priority    = "1",
    weight      = "50"
  },
  {
    host_name   = "asfccustestcert01.azurewebsites.net",
    host_header = "asfccustestcert01.azurewebsites.net",
    http_port   = "80",
    https_port  = "443",
    priority    = "1",
    weight      = "50"
  }
]

#Fin de documento