# Bitbucket::PipelineInProgressState

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of pipeline state (IN_PROGRESS). | [optional] |
| **stage** | [**PipelineStateInProgressStage**](PipelineStateInProgressStage.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineInProgressState.new(
  name: null,
  stage: null
)
```

