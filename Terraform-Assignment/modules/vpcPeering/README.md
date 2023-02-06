## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.3.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.accepter"></a> [aws.accepter](#provider\_aws.accepter) | 4.53.0 |
| <a name="provider_aws.requester"></a> [aws.requester](#provider\_aws.requester) | 4.53.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc_peering_connection.peeringRequesterVpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection) | resource |
| [aws_vpc_peering_connection_accepter.peeringAccepterVpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection_accepter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_isPeeringAutoAccept"></a> [isPeeringAutoAccept](#input\_isPeeringAutoAccept) | n/a | `bool` | n/a | yes |
| <a name="input_peerOwnerId"></a> [peerOwnerId](#input\_peerOwnerId) | n/a | `string` | n/a | yes |
| <a name="input_peerRegion"></a> [peerRegion](#input\_peerRegion) | n/a | `string` | n/a | yes |
| <a name="input_peerVpcId"></a> [peerVpcId](#input\_peerVpcId) | n/a | `string` | n/a | yes |
| <a name="input_vpcId"></a> [vpcId](#input\_vpcId) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_peeringConnectionId"></a> [peeringConnectionId](#output\_peeringConnectionId) | n/a |
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~>1.3.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.accepter"></a> [aws.accepter](#provider\_aws.accepter) | 4.53.0 |
| <a name="provider_aws.requester"></a> [aws.requester](#provider\_aws.requester) | 4.53.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc_peering_connection.peeringRequesterVpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection) | resource |
| [aws_vpc_peering_connection_accepter.peeringAccepterVpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection_accepter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_isPeeringAutoAccept"></a> [isPeeringAutoAccept](#input\_isPeeringAutoAccept) | n/a | `bool` | n/a | yes |
| <a name="input_peerOwnerId"></a> [peerOwnerId](#input\_peerOwnerId) | n/a | `string` | n/a | yes |
| <a name="input_peerRegion"></a> [peerRegion](#input\_peerRegion) | n/a | `string` | n/a | yes |
| <a name="input_peerVpcId"></a> [peerVpcId](#input\_peerVpcId) | n/a | `string` | n/a | yes |
| <a name="input_vpcId"></a> [vpcId](#input\_vpcId) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_peeringConnectionId"></a> [peeringConnectionId](#output\_peeringConnectionId) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
