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

variable "arm_tenant_id" {
  description = "Azure Tenant ID"
  type        = string
  sensitive   = true
}

variable "arm_subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}

variable "arm_client_id" {
  description = "Azure Client ID"
  type        = string
  sensitive   = true
}

variable "arm_client_secret" {
  description = "Azure Client Secret"
  type        = string
  sensitive   = true
}

variable "source_image_id" {
  description = "Source IMG id"
  type        = string
  sensitive   = true
}

variable "flama_aws_access_key_id" {
  description = "AWS Access Key"
  type        = string
  sensitive   = true
}

variable "flama_aws_secret_access_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}
