resource "aws_redshift_cluster" "example" {
  cluster_identifier    = var.cluster_identifier
  allow_version_upgrade = var.allow_version_upgrade
  node_type             = var.node_type
  number_of_nodes       = var.number_of_nodes
  database_name         = var.database_name
  master_username       = var.master_username
  master_password       = var.master_password
  encrypted             = var.encrypted
  kms_key_id            = var.kms_key_id
  enhanced_vpc_routing  = var.enhanced_vpc_routing
  vpc_security_group_ids = var.vpc_security_group_ids
  cluster_subnet_group_name = aws_redshift_subnet_group.this.name
  skip_final_snapshot   = var.skip_final_snapshot
  tags                  = var.tags

}

resource "aws_redshift_subnet_group" "this" {
  name       = "${var.cluster_identifier}-subnet-group"
  subnet_ids = var.subnet_ids
  tags       = var.tags
}
