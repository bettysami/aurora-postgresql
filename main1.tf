module "aurora_cluster" {
  source              = "./modules/aurora-cluster"
  region              = var.region
  db_name             = var.db_name
  username            = var.username
  password            = var.password
  instance_type       = var.instance_type
  cluster_identifier  = var.cluster_identifier
  engine_version      = var.engine_version
  subnet_ids          = var.subnet_ids
  vpc_security_group_ids = var.vpc_security_group_ids
}

resource "aws_db_subnet_group" "default" {
  name       = "aurora-db-subnet-group"
  subnet_ids = var.subnet_ids
}
