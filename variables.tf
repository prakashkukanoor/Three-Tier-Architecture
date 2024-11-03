variable "region" {
  description = "Region to create the s3 bucket and dynamodb"
  type        = string
}

variable "environment" {
  description = "Environment DEV/QA/STG/PROD"
  type        = string
}

variable "team" {
  description = "Team name who will manage this resources"
  type        = string
}

variable "cidr_block_ipv4" {
  description = "vpc sidr block"
  type        = string
}

variable "dmz_subnets" {
  description = "dmz_subnets cidr block list"
  type        = list(string)
}

variable "webserver_subnets" {
  description = "webserver_subnets cidr block list"
  type        = list(string)
}

variable "database_subnets" {
  description = "database_subnets cidr block list"
  type        = list(string)
}

variable "availability_zones" {
  description = "availability_zones cidr block list"
  type        = list(string)
}

