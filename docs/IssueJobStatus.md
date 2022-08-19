# Bitbucket::IssueJobStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **status** | **String** | The status of the import/export job | [optional] |
| **phase** | **String** | The phase of the import/export job | [optional] |
| **total** | **Integer** | The total number of issues being imported/exported | [optional] |
| **count** | **Integer** | The total number of issues already imported/exported | [optional] |
| **pct** | **Float** | The percentage of issues already imported/exported | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::IssueJobStatus.new(
  type: null,
  status: null,
  phase: null,
  total: null,
  count: null,
  pct: null
)
```

