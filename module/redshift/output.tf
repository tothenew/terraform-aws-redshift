output "cluster_id" {
  description = "The ID of the Redshift cluster"
  value       = aws_redshift_cluster.example.id
}

output "endpoint" {
  description = "The endpoint of the Redshift cluster"
  value       = aws_redshift_cluster.example.endpoint
}
