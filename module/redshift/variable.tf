variable "cluster_identifier" {
  description = "The name of the cluster"
  type        = string
}

variable "allow_version_upgrade" {
  description = "The name of the cluster"
  type        = string
}

variable "enhanced_vpc_routing" {
  description = "The name of the cluster"
  type        = string
}

variable "node_type" {
  description = "Node type for the Redshift cluster"
  type        = string
}

variable "number_of_nodes" {
  description = "Number of nodes for the Redshift cluster"
  type        = number
}

variable "database_name" {
  description = "The name of the database"
  type        = string
}

variable "master_username" {
  description = "The master username for the cluster"
  type        = string
}

variable "master_password" {
  description = "The master password for the cluster"
  type        = string
}

variable "encrypted" {
  description = "Whether the cluster should be encrypted"
  type        = bool
}

variable "kms_key_id" {
  description = "KMS Key ARN for encryption"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of VPC security group IDs"
  type        = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs for the cluster"
  type        = list(string)
}

variable "skip_final_snapshot" {
  type    = bool
  default = true
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to add to all resources"
}