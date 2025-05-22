variable "name" {
  type        = string
  description = "A string value to describe prefix of all the resources"
  default     = "non-prod-generic"
}

variable "cluster_identifier" {
  description = "Identifier for the Redshift cluster"
  type        = string
  default     = "example"
}

variable "allow_version_upgrade" {
  description = "If true, major version upgrades can be applied during maintenance windows"
  type        = bool
  default     = true
}

variable "node_type" {
  description = "The node type to be provisioned for the cluster"
  type        = string
  default     = "DC2.large"
}

variable "number_of_nodes" {
  description = "Number of compute nodes in the Redshift cluster"
  type        = number
  default     = 1
}

variable "database_name" {
  description = "Name of the first database to be created when the cluster is created"
  type        = string
  default     = "test_db"
}

variable "master_username" {
  description = "Username for the master DB user"
  type        = string
  default     = "test_user"
}

variable "master_password" {
  description = "Password for the master DB user"
  type        = string
  default     = "abcdefGhijklm1"
  sensitive   = true
}

variable "encrypted" {
  description = "If true, the data in the cluster is encrypted at rest"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "KMS key used to encrypt data in the cluster"
  type        = string
  default     = "arn:aws:kms:us-east-1:001861987316:key/mrk-85156372d29c4714bcf185c8bb82bbdc"
}

variable "enhanced_vpc_routing" {
  description = "If true, enhanced VPC routing is enabled"
  type        = bool
  default     = true
}

variable "subnet_ids" {
  description = "List of subnet IDs for the Redshift cluster"
  type        = list(string)
  default     = ["subnet-0123456789", "subnet-0987654321"]
}

variable "sg_name" {
  description = "Name of the subnet"
  type        = string
  default     = "redshift-sg"
}

variable "vpc_id" {
  description = "The VPC ID where redshift will be deployed"
  type        = string
  default     = "vpc-0123gj4567890"
}

variable "cidr_blocks" {
  type        = list(string)
  description = "A list of CIDR block ID's to allow access"
  default     = ["10.0.0.0/16"]
}

variable "from_port" {
  description = "security groups from port"
  type        = number
  default     = 5439
}

variable "to_port" {
  description = "security groups to port"
  type        = number
  default     = 5439
}

variable "common_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
  default = {
    "Project"     = "Internal"
    "Environment" = "Dev"
    "ManagedBy"   = "Terraform"
  }
}

variable "default_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
  default = {
    "Scope" : "DMS"
    "CreatedBy" : "Terraform"
  }
}