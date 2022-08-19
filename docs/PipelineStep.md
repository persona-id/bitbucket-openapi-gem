# Bitbucket::PipelineStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID identifying the step. | [optional] |
| **started_on** | **Time** | The timestamp when the step execution was started. This is not set when the step hasn&#39;t executed yet. | [optional] |
| **completed_on** | **Time** | The timestamp when the step execution was completed. This is not set if the step is still in progress. | [optional] |
| **state** | [**PipelineStepState**](PipelineStepState.md) |  | [optional] |
| **image** | [**PipelineImage**](PipelineImage.md) |  | [optional] |
| **setup_commands** | [**Array&lt;PipelineCommand&gt;**](PipelineCommand.md) | The list of commands that are executed as part of the setup phase of the build. These commands are executed outside the build container. | [optional] |
| **script_commands** | [**Array&lt;PipelineCommand&gt;**](PipelineCommand.md) | The list of build commands. These commands are executed in the build container. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineStep.new(
  uuid: null,
  started_on: null,
  completed_on: null,
  state: null,
  image: null,
  setup_commands: null,
  script_commands: null
)
```

