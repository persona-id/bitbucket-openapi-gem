# Bitbucket::PipelineCompletedError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the result (ERROR) | [optional] |
| **error** | [**PipelineError**](PipelineError.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineCompletedError.new(
  name: null,
  error: null
)
```

