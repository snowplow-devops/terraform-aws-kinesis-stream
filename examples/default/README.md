## Default Kinesis Stream

This module creates a simple default Kinesis stream for POC efforts which enforces encryption at rest and will automatically clean up enhanced fan-out consumers on deletion.

```hcl
module "stream" {
  source = "snowplow-devops/kinesis-stream/aws"

  name = "stream"
}
```
