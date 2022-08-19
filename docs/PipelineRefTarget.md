# Bitbucket::PipelineRefTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ref_type** | **String** | The type of reference (branch/tag). | [optional] |
| **ref_name** | **String** | The name of the reference. | [optional] |
| **commit** | [**Commit**](Commit.md) |  | [optional] |
| **selector** | [**PipelineSelector**](PipelineSelector.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineRefTarget.new(
  ref_type: null,
  ref_name: null,
  commit: null,
  selector: null
)
```

