output "cluster_endpoint" {
  description = "The endpoint of the Aurora PostgreSQL cluster"
  value       = module.aurora_cluster.cluster_endpoint
}

output "cluster_port" {
  description = "The port of the Aurora PostgreSQL cluster"
  value       = module.aurora_cluster.cluster_port
}
