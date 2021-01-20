variable aws_reg {
  description = "This is aws region"
  default     = "eu-west-3"
  type        = string
}

variable stack {
  description = "this is name for tags"
  default     = "terraform"
}

variable username {
  description = "DB username"
}

variable password {
  description = "DB password"
}

variable dbname {
  description = "DB name"
}

variable ssh_key {
  default     = "~/.ssh/terraform.pub"
  description = "Default pub key"
}

variable ssh_priv_key {
  default     = "~/.ssh/terraform"
  description = "Default pub key"
}