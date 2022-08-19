# Bitbucket::PipelineSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID identifying the schedule. | [optional] |
| **enabled** | **Boolean** | Whether the schedule is enabled. | [optional] |
| **target** | [**PipelineTarget**](PipelineTarget.md) |  | [optional] |
| **selector** | [**PipelineSelector**](PipelineSelector.md) |  | [optional] |
| **cron_pattern** | **String** | The cron expression that the schedule applies. | [optional] |
| **created_on** | **Time** | The timestamp when the schedule was created. | [optional] |
| **updated_on** | **Time** | The timestamp when the schedule was updated. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineSchedule.new(
  uuid: null,
  enabled: null,
  target: null,
  selector: null,
  cron_pattern: null,
  created_on: null,
  updated_on: null
)
```

