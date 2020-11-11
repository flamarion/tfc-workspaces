module "tf_aws_ssh_key" {
  source = "./modules"
  name   = "tf-aws-vpc"
  org    = var.tfc_org
  ws_variables = {
    access_key_id = {
      key          = "AWS_ACCESS_KEY_ID"
      value        = var.aws_access_key_id
      category     = "env"
      workspace_id = module.tf_aws_ssh_key.ws_id
      description  = "AWS_ACCESS_KEY_ID"
      sensitive    = true
    },
    secret_access_key = {
      key          = "AWS_SECRET_ACCESS_KEY"
      value        = var.aws_secret_access_key
      category     = "env"
      workspace_id = module.tf_aws_ssh_key.ws_id
      description  = "AWS_SECRET_ACCESS_KEY"
      sensitive    = true
    },
    ssh_key = {
      key          = "cloud_pub"
      value        = var.pub_ssh_key
      category     = "terraform"
      workspace_id = module.tf_aws_ssh_key.ws_id
      description  = "SSH Public Key"
      sensitive    = false
    }
  }
}
