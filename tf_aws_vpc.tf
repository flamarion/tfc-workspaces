module "tf_aws_vpc" {
  source            = "./modules"
  name              = "tf-aws-vpc"
  org               = var.tfc_org
  terraform_version = "0.14.3"
  ws_variables      = {}
}
