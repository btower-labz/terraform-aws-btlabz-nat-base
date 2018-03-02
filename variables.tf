variable "name" {
  description = "NAT name. Will be used as the 'Name' tag value."
  type        = "string"
  default     = "main-vpc"
}

variable "subnet_id" {
  description = "Public subnet identifier to place NAT into."
  type        = "string"
}

variable "tags" {
  description = "Additional tags."
  type        = "map"
  default     = {}
}
