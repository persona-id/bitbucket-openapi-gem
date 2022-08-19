# Bitbucket::PipelineCommitTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | [**Commit**](Commit.md) |  | [optional] |
| **selector** | [**PipelineSelector**](PipelineSelector.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineCommitTarget.new(
  commit: null,
  selector: null
)
```

