# Terraform inputs and outputs.


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name | NAT name. Will be used as the 'Name' tag value. | string | `main-vpc` | no |
| subnet_id | Public subnet identifier to place NAT into. | string | - | yes |
| tags | Additional tags. | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| nat_id | NAT identifier. |
| public_ip | NAT's public IP address. |

