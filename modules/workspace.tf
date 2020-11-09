resource "tfe_workspace" "ws" {
  name         = var.name
  organization = var.org
}

resource "tfe_variable" "ws_variables" {
  for_each     = var.ws_variables
  key          = each.value["key"]
  value        = each.value["value"]
  category     = each.value["category"]
  workspace_id = each.value["workspace_id"]
  description  = each.value["description"]
  sensitive    = each.value["sensitive"]
}


variable "org" {
  description = "TFC Organization"
  type        = string
  default     = ""
}

variable "name" {
  description = "TFC Workspace Name"
  type        = string
  default     = ""
}


variable "ws_variables" {
  description = "Workspace Variables"
  type = map(object({
    key          = string
    value        = string
    category     = string
    workspace_id = string
    description  = string
    sensitive    = bool
  }))
}


output "ws_id" {
  value = tfe_workspace.ws.id
}
