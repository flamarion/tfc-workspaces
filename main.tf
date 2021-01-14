terraform {
  required_version = "~> 0.14"
  required_providers {
    tfe      = "~> 0.22"
  }
  backend "remote" {
    organization = "FlamaCorp"
    workspaces {
      name = "tfc-workspaces"
    }
  }
}
