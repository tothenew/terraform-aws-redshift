module "redshift_cluster" {
  source                 = "./module/redshift"
  cluster_identifier     = var.cluster_identifier
  allow_version_upgrade  = var.allow_version_upgrade
  node_type              = var.node_type
  number_of_nodes        = var.number_of_nodes
  database_name          = var.database_name
  master_username        = var.master_username
  master_password        = var.master_password
  encrypted              = var.encrypted
  kms_key_id             = var.kms_key_id
  enhanced_vpc_routing   = var.enhanced_vpc_routing
  vpc_security_group_ids = [aws_security_group.redshift_cluster_sg.id]
  subnet_ids             = var.subnet_ids
  tags = merge(var.common_tags,
    {
      Name = "${local.service_name_prefix}-redshift"
  })
}