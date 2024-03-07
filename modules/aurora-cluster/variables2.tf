variable "region" {
  description = "AWS region where resources will be provisioned"
}

variable "db_name" {
  description = "Name for the Aurora PostgreSQL database"
}

variable "username" {
  description = "Master username for the Aurora PostgreSQL cluster"
}

variable "password" {
  description = "Master password for the Aurora PostgreSQL cluster"
}

variable "instance_type" {
  description = "Instance type for Aurora PostgreSQL instances"
}

variable "cluster_identifier" {
  description = "Identifier for the Aurora PostgreSQL cluster"
}

variable "engine_version" {
  description = "Version of Aurora PostgreSQL engine"
}

variable "subnet_ids" {
  description = "List of subnet IDs where Aurora PostgreSQL instances will be deployed"
  type        = list(string)
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs for the Aurora PostgreSQL cluster"
  type        = list(string)
}
