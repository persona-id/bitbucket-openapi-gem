# Bitbucket::PipelineStepStateCompletedError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the result (ERROR) | [optional] |
| **error** | [**PipelineStepError**](PipelineStepError.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineStepStateCompletedError.new(
  name: null,
  error: null
)
```

