# Bitbucket::PipelineVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID identifying the variable. | [optional] |
| **key** | **String** | The unique name of the variable. | [optional] |
| **value** | **String** | The value of the variable. If the variable is secured, this will be empty. | [optional] |
| **secured** | **Boolean** | If true, this variable will be treated as secured. The value will never be exposed in the logs or the REST API. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineVariable.new(
  uuid: null,
  key: null,
  value: null,
  secured: null
)
```

