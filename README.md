# terraform-aws-redshift

[![Lint Status](https://github.com/tothenew/terraform-aws-redshift/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-redshift/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-redshift)](https://github.com/tothenew/terraform-aws-redshift/blob/master/LICENSE)

This module provisions and configures an **Amazon Redshift** cluster within a specified VPC. It includes security group creation and subnet configuration to meet infrastructure requirements.

The following resources will be created:

* AWS Redshift Cluster
* Redshift Subnet Group
* Security Group for Redshift access

## Usage

```hcl
module "redshift_cluster" {
  source                 = "./module/redshift"
  cluster_identifier     = "example-cluster"
  database_name          = "test_db"
  master_username        = "test_user"
  master_password        = "abcdefGhijklm1"
  subnet_ids             = ["subnet-0123456789", "subnet-0987654321"]
}
```

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | >= 1.3.0 |

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Modules

| Name            | Source            | Version |
| --------------- | ----------------- | ------- |
| redshift_cluster | ./module/redshift | n/a     |

## Resources

| Name                               | Type     |
| ---------------------------------- | -------- |
| aws_redshift_cluster               | resource |
| aws_redshift_subnet_group          | resource |
| aws_security_group.redshift_sg     | resource |

## Inputs

| Name                    | Description                                               | Type          | Default                                       | Required |
| ----------------------- | --------------------------------------------------------- | ------------- | --------------------------------------------- | :------: |
| name                    | Prefix for resource naming                                | string        | `"non-prod-generic"`                          |   no     |
| cluster_identifier      | Identifier for the Redshift cluster                       | string        | `"example"`                                   |   no     |
| node_type               | Node type for the cluster                                 | string        | `"DC2.large"`                                 |   no     |
| number_of_nodes         | Number of compute nodes                                   | number        | `1`                                           |   no     |
| subnet_ids              | List of subnet IDs                                        | list(string)  | `["subnet-0123456789", "subnet-0987654321"]`  |   no     |
| vpc_id                  | VPC ID for Redshift                                       | string        | `"vpc-0123gj4567890"`                         |   no     |
| cidr_blocks             | CIDR blocks allowed to access the Redshift cluster        | list(string)  | `["10.0.0.0/16"]`                             |   no     |


## Outputs

| Name                  | Description                          |
| --------------------- | ------------------------------------ |
| redshift_cluster_id   | ID of the Redshift cluster           |
| redshift_endpoint     | Endpoint address of the Redshift DB  |
| redshift_arn          | ARN of the Redshift cluster          |

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-redshift/blob/main/LICENSE) for full details.
