# Bitbucket::PipelineKnownHost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID identifying the known host. | [optional] |
| **hostname** | **String** | The hostname of the known host. | [optional] |
| **public_key** | [**PipelineSshPublicKey**](PipelineSshPublicKey.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineKnownHost.new(
  uuid: null,
  hostname: null,
  public_key: null
)
```

