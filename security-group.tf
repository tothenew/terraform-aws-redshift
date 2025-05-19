resource "aws_security_group" "redshift_cluster_sg" {
  name        = var.sg_name
  description = "redshift_cluster security group"
  vpc_id      = var.vpc_id
  tags = merge(local.common_tags, tomap({
    "Name" : local.project_name_prefix
    })
  )

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }
}
