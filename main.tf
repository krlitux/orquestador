provider azurerm {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RSGRCUSTESTINFR01"
    storage_account_name = "staccustestinfr01"
    container_name       = "cert"
    key                  = "terraform.tfstate"
  }
}

/*module "aspl01" {
  source = "git::https://github.com/krlitux/appservice_plan.git?ref=1.0.0"

  application_code = var.application_code
  environment      = var.environment
  location         = var.location
  aspl_sku_tier    = var.aspl_sku_tier
  aspl_sku_size    = var.aspl_sku_size
  aspl_kind        = var.aspl_kind
}*/

/*module "asfc01" {
  source     = "git::https://github.com/krlitux/appservice_for_container.git?ref=1.0.0"
  depends_on = [module.aspl01]

  application_code = var.application_code
  environment      = var.environment
  location         = var.location
  asfc_aspl_id     = module.aspl01.aspl_id
  container_type   = var.container_type
  container_image  = var.container_image
}/*

/*module "azfd01" {
  source     = "git::https://github.com/krlitux/front_door.git?ref=1.1.0"
  depends_on = [module.asfc01]

  application_code      = var.application_code
  environment           = var.environment
  location              = var.location
  azfd_backend_latency  = var.azfd_backend_latency
  azfd_session_affinity = var.azfd_session_affinity
  azfd_backend          = var.azfd_backend
}*/
