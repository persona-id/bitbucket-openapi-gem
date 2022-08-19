# Bitbucket::PipelineCache

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID identifying the pipeline cache. | [optional] |
| **pipeline_uuid** | **String** | The UUID of the pipeline that created the cache. | [optional] |
| **step_uuid** | **String** | The uuid of the step that created the cache. | [optional] |
| **name** | **String** | The name of the cache. | [optional] |
| **path** | **String** | The path where the cache contents were retrieved from. | [optional] |
| **file_size_bytes** | **Integer** | The size of the file containing the archive of the cache. | [optional] |
| **created_on** | **Time** | The timestamp when the cache was created. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineCache.new(
  uuid: null,
  pipeline_uuid: null,
  step_uuid: null,
  name: null,
  path: null,
  file_size_bytes: null,
  created_on: null
)
```

