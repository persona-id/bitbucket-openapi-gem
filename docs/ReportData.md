# Bitbucket::ReportData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of data contained in the value field. If not provided, then the value will be detected as a boolean, number or string. | [optional] |
| **title** | **String** | A string describing what this data field represents. | [optional] |
| **value** | **Object** | The value of the data element. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::ReportData.new(
  type: null,
  title: null,
  value: null
)
```

