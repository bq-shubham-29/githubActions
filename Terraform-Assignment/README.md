# Terraform Assignment
This task creates a peering connection between VPCs in different regions, which are located in the same AWS account.

## Run Locally

Clone the project

```bash
   git clone -b https://github.com/bq-shubham-29/Training.git
```
Go to the project directory
```bash
  cd Terraform-Assignment
```
Step:1
```bash
  terraform init
```
Step:2
```bash
  terraform plan
```
Step:3
```bash
  terraform apply
```

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_accepterVpc"></a> [accepterVpc](#module\_accepterVpc) | ./modules/vpc | n/a |
| <a name="module_ec2Accepter"></a> [ec2Accepter](#module\_ec2Accepter) | ./modules/ec2 | n/a |
| <a name="module_ec2Requester"></a> [ec2Requester](#module\_ec2Requester) | ./modules/ec2 | n/a |
| <a name="module_requesterVpc"></a> [requesterVpc](#module\_requesterVpc) | ./modules/vpc | n/a |
| <a name="module_vpcPeering"></a> [vpcPeering](#module\_vpcPeering) | ./modules/vpcPeering | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accepterInstanceName"></a> [accepterInstanceName](#input\_accepterInstanceName) | n/a | `string` | n/a | yes |
| <a name="input_accepterRegion"></a> [accepterRegion](#input\_accepterRegion) | n/a | `string` | n/a | yes |
| <a name="input_accepterVpcName"></a> [accepterVpcName](#input\_accepterVpcName) | n/a | `string` | n/a | yes |
| <a name="input_cidrBlockAccepterVpc"></a> [cidrBlockAccepterVpc](#input\_cidrBlockAccepterVpc) | n/a | `string` | n/a | yes |
| <a name="input_cidrBlockRequesterVpc"></a> [cidrBlockRequesterVpc](#input\_cidrBlockRequesterVpc) | n/a | `string` | n/a | yes |
| <a name="input_instanceType"></a> [instanceType](#input\_instanceType) | n/a | `string` | n/a | yes |
| <a name="input_isPeeringAutoAccept"></a> [isPeeringAutoAccept](#input\_isPeeringAutoAccept) | n/a | `bool` | n/a | yes |
| <a name="input_mapPublicIpOnLaunch"></a> [mapPublicIpOnLaunch](#input\_mapPublicIpOnLaunch) | n/a | `bool` | n/a | yes |
| <a name="input_privateSubnetListAccepter"></a> [privateSubnetListAccepter](#input\_privateSubnetListAccepter) | n/a | `list(any)` | n/a | yes |
| <a name="input_privateSubnetListRequester"></a> [privateSubnetListRequester](#input\_privateSubnetListRequester) | n/a | `list(any)` | n/a | yes |
| <a name="input_publicSubnetListAccepter"></a> [publicSubnetListAccepter](#input\_publicSubnetListAccepter) | n/a | `list(any)` | n/a | yes |
| <a name="input_publicSubnetListRequester"></a> [publicSubnetListRequester](#input\_publicSubnetListRequester) | n/a | `list(any)` | n/a | yes |
| <a name="input_quadZeroRoute"></a> [quadZeroRoute](#input\_quadZeroRoute) | n/a | `string` | n/a | yes |
| <a name="input_requesterInstanceName"></a> [requesterInstanceName](#input\_requesterInstanceName) | n/a | `string` | n/a | yes |
| <a name="input_requesterRegion"></a> [requesterRegion](#input\_requesterRegion) | n/a | `string` | n/a | yes |
| <a name="input_requesterVpcName"></a> [requesterVpcName](#input\_requesterVpcName) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Note 

Running the resources in AWS may cost money! Make sure to clean up afterwards. You can use **terraform destroy** to delete the resources.
