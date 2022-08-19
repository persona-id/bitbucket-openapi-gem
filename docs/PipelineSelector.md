# Bitbucket::PipelineSelector

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of selector. | [optional] |
| **pattern** | **String** | The name of the matching pipeline definition. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineSelector.new(
  type: null,
  pattern: null
)
```

