# Bitbucket::PipelineCompletedState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of pipeline state (COMPLETED). | [optional] |
| **result** | [**PipelineStateCompletedResult**](PipelineStateCompletedResult.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineCompletedState.new(
  name: null,
  result: null
)
```

