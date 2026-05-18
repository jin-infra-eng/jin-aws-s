variable "my_ip" {
  description = "Your global IP address with CIDR"
  type        = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}