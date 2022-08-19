# Bitbucket::Diffstat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **status** | **String** |  | [optional] |
| **lines_added** | **Integer** |  | [optional] |
| **lines_removed** | **Integer** |  | [optional] |
| **old** | [**CommitFile**](CommitFile.md) |  | [optional] |
| **new** | [**CommitFile**](CommitFile.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Diffstat.new(
  type: null,
  status: null,
  lines_added: null,
  lines_removed: null,
  old: null,
  new: null
)
```

