module "vpc" {
  source = "../../"
  cidr   = "192.168.0.0/16"
  tags = {
    Name = "${var.name_prefix}-vpc"
  }
}
