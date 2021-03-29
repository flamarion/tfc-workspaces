module "tf_opencart" {
  source            = "./modules"
  name              = "tf-opencart"
  org               = var.tfc_org
  terraform_version = "0.14.8"
  ws_variables = {
    ssh_key = {
      key          = "cloud_pub"
      value        = var.pub_ssh_key
      category     = "terraform"
      workspace_id = module.tf_opencart.ws_id
      description  = "SSH Public Key"
      sensitive    = false
    },
    flama_aws_access_key_id = {
      key          = "AWS_ACCESS_KEY_ID"
      value        = var.flama_aws_access_key_id
      category     = "env"
      workspace_id = module.tf_opencart.ws_id
      description  = "AWS Access Key"
      sensitive    = true
    },
    flama_aws_secret_access_key = {
      key          = "AWS_SECRET_ACESS_KEY"
      value        = var.flama_aws_secret_access_key
      category     = "env"
      workspace_id = module.tf_opencart.ws_id
      description  = "AWS Secret Key"
      sensitive    = true
    },
  }
}
