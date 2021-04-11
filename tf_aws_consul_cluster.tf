module "tf_aws_consul_cluster" {
  source            = "./modules"
  name              = "tf-aws-consul-cluster"
  org               = var.tfc_org
  terraform_version = "0.14.10"
  ws_variables = {
    ssh_key = {
      key          = "cloud_pub"
      value        = var.pub_ssh_key
      category     = "terraform"
      workspace_id = module.tf_aws_consul_cluster.ws_id
      description  = "SSH Public Key"
      sensitive    = false
    }
  }
}
