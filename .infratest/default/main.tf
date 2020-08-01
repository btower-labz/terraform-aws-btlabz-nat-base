module "vpc" {
  source   = "btower-labz/btlabz-vpc-base/aws"
  version  = "0.1.0"
  cidr     = "192.168.0.0/16"
  vpc_name = "${var.name_prefix}-vpc"
  tags = {
    Name = "${var.name_prefix}-vpc"
  }

}

module "pub_sn" {
  source  = "btower-labz/btlabz-pub-sn/aws"
  version = "0.1.0"
  vpc_id  = "${module.vpc.vpc_id}"
  rt_id   = "${module.vpc.rt_id}"
  az      = data.aws_availability_zone.az.name
  cidr    = "192.168.1.0/24"
  name    = "${var.name_prefix}-pub-sn"
  tags = {
    Name = "${var.name_prefix}-pub-sn"
  }
}

module "nat" {
  source    = "../../"
  subnet_id = "${module.pub_sn.subnet_id}"
  name      = "${var.name_prefix}-nat"
  tags = {
    Name = "${var.name_prefix}-nat"
  }
}
