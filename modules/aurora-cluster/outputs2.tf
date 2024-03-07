output "cluster_endpoint" {
  description = "The endpoint of the Aurora PostgreSQL cluster"
  value       = aws_rds_cluster.aurora_cluster.endpoint
}

output "cluster_port" {
  description = "The port of the Aurora PostgreSQL cluster"
  value       = aws_rds_cluster.aurora_cluster.port
}
