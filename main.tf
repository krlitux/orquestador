provider azurerm {
  features {}
}

module "aspl01" {
  source = "git::https://github.com/krlitux/appservice_plan.git?ref=master"

  application_code = var.application_code
  environment      = var.environment
  location         = var.location
  aspl_sku_tier    = var.aspl_sku_tier
  aspl_sku_size    = var.aspl_sku_size
  aspl_kind        = var.aspl_kind
}

module "asfc01" {
  source     = "git::https://github.com/krlitux/appservice_for_container.git?ref=master"
  depends_on = [module.aspl01]

  application_code = var.application_code
  environment      = var.environment
  location         = var.location
  asfc_aspl_id     = module.aspl01.aspl_id
  container_type   = var.container_type
  container_image  = var.container_image
}