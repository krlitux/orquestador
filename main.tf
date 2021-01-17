provider azurerm {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "${local.rsgr_infra}"
    storage_account_name = "${local.stac_infra}"
    container_name       = "${lower(var.environment)}"
    key                  = "${local.terraform_tfstate}"
  }
}

module "aspl01" {
  source = "git::https://github.com/krlitux/appservice_plan.git?ref=1.0.0"

  application_code = var.application_code
  environment      = var.environment
  location         = var.location
  aspl_sku_tier    = var.aspl_sku_tier
  aspl_sku_size    = var.aspl_sku_size
  aspl_kind        = var.aspl_kind
}

module "asfc01" {
  source     = "git::https://github.com/krlitux/appservice_for_container.git?ref=1.0.0"
  depends_on = [module.aspl01]

  application_code = var.application_code
  environment      = var.environment
  location         = var.location
  asfc_aspl_id     = module.aspl01.aspl_id
  container_type   = var.container_type
  container_image  = var.container_image
}