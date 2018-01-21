variable "name" {
  type    = "string"
  default = "main-vpc"
}

variable "subnet-id" {
  type = "string"
}

variable "tags" {
  type    = "map"
  default = {}
}
