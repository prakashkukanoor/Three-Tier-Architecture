module "networking" {
  source = "./terraform-aws-vpc-subnets-routetable"
  
  region = var.region
  environment = var.environment
  team = var.team
  vpc = {
    cidr_block_ipv4 = var.cidr_block_ipv4
  }
  dmz_subnets = var.dmz_subnets
  webserver_subnets = var.webserver_subnets
  database_subnets = var.database_subnets
  availability_zones = var.availability_zones
}

output "dmz_subnets_id" {
  value = module.networking.dmz_subnets
}

output "webserver_subnets_id" {
  value = module.networking.webserver_subnets
}

output "database_subnets_id" {
  value = module.networking.database_subnets
}
