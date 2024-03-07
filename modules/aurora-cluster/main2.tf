resource "aws_rds_cluster" "aurora_cluster" {
  cluster_identifier        = var.cluster_identifier
  engine                    = "aurora-postgresql"
  engine_version            = var.engine_version
  master_username           = var.username
  master_password           = var.password
  database_name             = var.db_name
  skip_final_snapshot       = true
  vpc_security_group_ids    = var.vpc_security_group_ids
  db_subnet_group_name      = aws_db_subnet_group.default.name
}

resource "aws_rds_cluster_instance" "aurora_instance" {
  count               = length(var.subnet_ids)
  identifier          = "${var.cluster_identifier}-instance-${count.index}"
  cluster_identifier  = aws_rds_cluster.aurora_cluster.id
  instance_class      = var.instance_type
  publicly_accessible = false
  engine              = "aurora-postgresql"  # Specify the engine type
}

resource "aws_db_subnet_group" "default" {
  name       = "aurora-db-subnet-group"
  subnet_ids = var.subnet_ids
}

