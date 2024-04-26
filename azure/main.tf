module "azure-databricks" {
  source                    = "dataforgelabs/azure-databricks/dataforge"
  version                   = "1.0.1"
  subscription_id           = var.subscription_id
  tenant_id                 = var.tenant_id
  application_client_id     = var.application_client_id
  application_client_secret = var.application_client_secret
  environment_prefix        = var.environment_prefix
  region                    = var.region
}

output "workspace_url" {
  value = module.azure-databricks.workspace_url
}