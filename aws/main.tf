module "aws-databricks" {
  source                           = "dataforgelabs/aws-databricks/dataforge"
  version                          = "1.0.4"
  databricks_account_id            = var.databricks_account_id
  databricks_client_id             = var.databricks_client_id
  databricks_client_secret         = var.databricks_client_secret
  databricks_workspace_admin_email = var.databricks_workspace_admin_email
  environment_prefix               = var.environment_prefix
  iam_access_key                   = var.iam_access_key
  iam_secret_key                   = var.iam_secret_key
  region                           = var.region
}

output "workspace_url" {
  value = module.aws-databricks.workspace_url
}

output "instance_profile_arn" {
  value = module.aws-databricks.instance_profile_arn
}
