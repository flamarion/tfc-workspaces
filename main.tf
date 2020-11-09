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
