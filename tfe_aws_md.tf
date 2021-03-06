module "tfe_aws_md" {
  source            = "./modules"
  name              = "tfe-aws-md"
  org               = var.tfc_org
  terraform_version = "0.14.4"
  ws_variables = {
    ssh_key = {
      key          = "cloud_pub"
      value        = var.pub_ssh_key
      category     = "terraform"
      workspace_id = module.tfe_aws_md.ws_id
      description  = "SSH Public Key"
      sensitive    = false
    }
  }
}
