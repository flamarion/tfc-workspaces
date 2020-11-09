module "tfe_aws_demo" {
  source = "./modules"
  name   = "tfe-aws-demo"
  org    = var.tfc_org
  ws_variables = {
    ssh_key = {
      key          = "cloud_pub"
      value        = var.pub_ssh_key
      category     = "terraform"
      workspace_id = module.tfe_aws_demo.ws_id
      description  = "SSH Public Key"
      sensitive    = false
    }
  }
}
