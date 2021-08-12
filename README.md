[![Release][release-image]][release] [![CI][ci-image]][ci] [![License][license-image]][license]

# terraform-aws-kinesis-stream

A Terraform module for creating a simple stream with healthy defaults for encryption enabled out of the box.

## Usage

```hcl
module "stream" {
  source = "snowplow-devops/kinesis-stream/aws"

  name = "stream"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.25.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.25.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kinesis_stream.stream](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kinesis_stream) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_encryption_type"></a> [encryption\_type](#input\_encryption\_type) | The encryption type to use for data at rest | `string` | `"KMS"` | no |
| <a name="input_enforce_consumer_deletion"></a> [enforce\_consumer\_deletion](#input\_enforce\_consumer\_deletion) | A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error | `bool` | `true` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | The KMS Key ID to use for encryption of data at rest | `string` | `"alias/aws/kinesis"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name to give to the new stream | `string` | n/a | yes |
| <a name="input_retention_period"></a> [retention\_period](#input\_retention\_period) | The number of hours that a shard should retain data for | `number` | `24` | no |
| <a name="input_shard_count"></a> [shard\_count](#input\_shard\_count) | The number of shards to create the stream with | `number` | `1` | no |
| <a name="input_shard_level_metrics"></a> [shard\_level\_metrics](#input\_shard\_level\_metrics) | A list of shard-level CloudWatch metrics which can be enabled for the stream | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | The tags to append to this resource | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | This is the ARN of the stream |
| <a name="output_id"></a> [id](#output\_id) | This is the id of the stream |
| <a name="output_name"></a> [name](#output\_name) | This is the name of the stream |

# Copyright and license

The Terraform AWS Kinesis Stream project is Copyright 2021-2021 Snowplow Analytics Ltd.

Licensed under the [Apache License, Version 2.0][license] (the "License");
you may not use this software except in compliance with the License.

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

[release]: https://github.com/snowplow-devops/terraform-aws-kinesis-stream/releases/latest
[release-image]: https://img.shields.io/github/v/release/snowplow-devops/terraform-aws-kinesis-stream

[ci]: https://github.com/snowplow-devops/terraform-aws-kinesis-stream/actions?query=workflow%3Aci
[ci-image]: https://github.com/snowplow-devops/terraform-aws-kinesis-stream/workflows/ci/badge.svg

[license]: https://www.apache.org/licenses/LICENSE-2.0
[license-image]: https://img.shields.io/badge/license-Apache--2-blue.svg?style=flat
