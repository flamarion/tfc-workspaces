terraform {
  required_version = "~> 0.12"

  backend "remote" {
    organization = "FlamaCorp"
    workspaces {
      name = "tfc-workspaces"
    }
  }
}

provider "tfe" {
  version = "~> 0.22"
}

variable "tfc_org" {
  description = "Terraform Cloud main org"
  type        = string
  default     = "FlamaCorp"
}

variable "pub_ssh_key" {
  description = "Publish SSH Key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCWTvOFNdwL7X3sVa3trlSYyQCZ1mAbTSMa7Z3V+0px4NU24ZcI93yh5UTAZjhHMh95hoc7069O/3Yj4V1v92oI+UdNF8ZcBY9BwtuzIlAVB7RLAyCzMdO91Jg4OMtUcCeM5beVKqW6Qp1AywbNCcbcfRBnTcfuRkZswjHLlMj+CsBaU23QiVE8tbARDCOTXCwErbxhcwmOnKE1dnhEZkslqFxsTYUZIQgj6ePB5cCBUGLb2n0PQ5NmVo3+xBsEVC3OaX1xjf0WPzF6+ppSEa2qm1BqqbMi9tMrObVZn37/Zu75OizSJrGrgRz3YTJixebS7nA309jDuJMzWj3HA/m3RWdtRVCnBIqpG75X4uzVg9TFRaNbF+tN37Lrdlp8tWKW4JeWlO9hNtPkZVYqXVqfuWMaiY+BZoVmvw4sPgAZRufFMj1gNxiYTCoOlVzyIZJZvUxum2dIVm/GxsZylP9N4WpZOuyb4UTuyOlMnXONFAgLD1z1lWx1+0cG18T+5PmeIzutYVE5tIPDc+dEW2ZvJKHDqAhk7JjG60UvbcdjXBhCDDEM3Crf0sptwcsfLavhF3aSy6d4NKDRL4LtC908Vrnz3zwuO0XQ5ZJyJzYh2U6VqTQQfcdLuQ4qMr0TIqv1f29+VPy7b9aXVQrQKeCs4aviTzI/SpwADm+1Swkm9w== flamarion@arvore"
}

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
