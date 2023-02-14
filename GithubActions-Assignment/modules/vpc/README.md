<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.3.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.53.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.internetGateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.natGateway](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.privateRoute](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.publicRoute](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.associateSubnetprivateRoute](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.associateSubnetpublicRoute](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.securityGroup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.privateSubnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.publicSubnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidrBlock"></a> [cidrBlock](#input\_cidrBlock) | n/a | `string` | n/a | yes |
| <a name="input_mapPublicIpOnLaunch"></a> [mapPublicIpOnLaunch](#input\_mapPublicIpOnLaunch) | n/a | `bool` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_peeringCidrBlock"></a> [peeringCidrBlock](#input\_peeringCidrBlock) | n/a | `string` | n/a | yes |
| <a name="input_peeringConnectionId"></a> [peeringConnectionId](#input\_peeringConnectionId) | n/a | `string` | n/a | yes |
| <a name="input_privateSubnetCidr"></a> [privateSubnetCidr](#input\_privateSubnetCidr) | n/a | `list(any)` | n/a | yes |
| <a name="input_publicSubnetCidr"></a> [publicSubnetCidr](#input\_publicSubnetCidr) | n/a | `list(any)` | n/a | yes |
| <a name="input_quadZeroRoute"></a> [quadZeroRoute](#input\_quadZeroRoute) | n/a | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_peerOwnerId"></a> [peerOwnerId](#output\_peerOwnerId) | n/a |
| <a name="output_publicSubnetId"></a> [publicSubnetId](#output\_publicSubnetId) | return public subnet id to main for ec2 module |
| <a name="output_securityGroupId"></a> [securityGroupId](#output\_securityGroupId) | n/a |
| <a name="output_vpcId"></a> [vpcId](#output\_vpcId) | return vpc id to main for ec2 module |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
