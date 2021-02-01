module "tf_azure_infra" {
  source            = "./modules"
  name              = "tf-azure-infra"
  org               = var.tfc_org
  terraform_version = "0.14.4"
  ws_variables = {
    arm_tenant_id = {
      key          = "ARM_TENANT_ID"
      value        = var.arm_tenant_id
      category     = "env"
      workspace_id = module.tf_azure_infra.ws_id
      description  = "AzureRM Tenant ID"
      sensitive    = true
    },
    arm_subscription_id = {
      key          = "ARM_SUBSCRIPTION_ID"
      value        = var.arm_subscription_id
      category     = "env"
      workspace_id = module.tf_azure_infra.ws_id
      description  = "AzureRM Subscription ID"
      sensitive    = true
    },
    arm_client_id = {
      key          = "ARM_CLIENT_ID"
      value        = var.arm_client_id
      category     = "env"
      workspace_id = module.tf_azure_infra.ws_id
      description  = "AzureRM Client ID"
      sensitive    = true
    },
    arm_client_secret = {
      key          = "ARM_CLIENT_SECRET"
      value        = var.arm_client_secret
      category     = "env"
      workspace_id = module.tf_azure_infra.ws_id
      description  = "AzureRM Client Secret"
      sensitive    = true
    }
  }
}
