# Bitbucket::Pipeline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID identifying the pipeline. | [optional] |
| **build_number** | **Integer** | The build number of the pipeline. | [optional] |
| **creator** | [**Account**](Account.md) |  | [optional] |
| **repository** | [**Repository**](Repository.md) |  | [optional] |
| **target** | [**PipelineTarget**](PipelineTarget.md) |  | [optional] |
| **trigger** | [**PipelineTrigger**](PipelineTrigger.md) |  | [optional] |
| **state** | [**PipelineState**](PipelineState.md) |  | [optional] |
| **created_on** | **Time** | The timestamp when the pipeline was created. | [optional] |
| **completed_on** | **Time** | The timestamp when the Pipeline was completed. This is not set if the pipeline is still in progress. | [optional] |
| **build_seconds_used** | **Integer** | The number of build seconds used by this pipeline. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Pipeline.new(
  uuid: null,
  build_number: null,
  creator: null,
  repository: null,
  target: null,
  trigger: null,
  state: null,
  created_on: null,
  completed_on: null,
  build_seconds_used: null
)
```

