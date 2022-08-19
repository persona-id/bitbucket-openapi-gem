# Bitbucket::DeploymentRelease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID identifying the release. | [optional] |
| **name** | **String** | The name of the release. | [optional] |
| **url** | **String** | Link to the pipeline that produced the release. | [optional] |
| **commit** | [**Commit**](Commit.md) |  | [optional] |
| **created_on** | **Time** | The timestamp when the release was created. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::DeploymentRelease.new(
  uuid: null,
  name: null,
  url: null,
  commit: null,
  created_on: null
)
```

