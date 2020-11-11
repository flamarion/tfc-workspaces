# Workspace to manage the SSH key pair in the cloud providers.

module "tf_ssh_key" {
  source            = "./modules"
  name              = "tf-ssh-key"
  org               = var.tfc_org
  terraform_version = "0.13.4"
  ws_variables = {
    access_key_id = {
      key          = "AWS_ACCESS_KEY_ID"
      value        = var.aws_access_key_id
      category     = "env"
      workspace_id = module.tf_ssh_key.ws_id
      description  = "AWS_ACCESS_KEY_ID"
      sensitive    = true
    },
    secret_access_key = {
      key          = "AWS_SECRET_ACCESS_KEY"
      value        = var.aws_secret_access_key
      category     = "env"
      workspace_id = module.tf_ssh_key.ws_id
      description  = "AWS_SECRET_ACCESS_KEY"
      sensitive    = true
    },
    ssh_key = {
      key          = "cloud_pub"
      value        = var.pub_ssh_key
      category     = "terraform"
      workspace_id = module.tf_ssh_key.ws_id
      description  = "SSH Public Key"
      sensitive    = false
    }
  }
}
