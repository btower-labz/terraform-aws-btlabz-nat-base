// Validate required module outputs with infratest

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "rt_id" {
  value = module.vpc.rt_id
}

output "igw_id" {
  value = module.vpc.igw_id
}

output "vpc_cidr" {
  value = module.vpc.vpc_cidr
}

