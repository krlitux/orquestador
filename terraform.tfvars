#### Variables globales
application_code = "test"
environment      = "desa"
location         = ["eu2"]

#### Variables para App Service Plan
aspl_sku_tier = "standard"
aspl_sku_size = "s1"
aspl_kind     = "linux"

#### Variables para App Service for Container
container_type  = "docker"
container_image = "tutum/hello-world"

#### Variables para Front Door
#azfd_backend_latency  = 200 #3er escenario
#azfd_session_affinity = false #3er escenario
/*azfd_backend = [
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
] */#2do escenario

#Fin de documento