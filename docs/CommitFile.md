# Bitbucket::CommitFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **path** | **String** | The path in the repository | [optional] |
| **commit** | [**Commit**](Commit.md) |  | [optional] |
| **attributes** | **String** |  | [optional] |
| **escaped_path** | **String** | The escaped version of the path as it appears in a diff. If the path does not require escaping this will be the same as path. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::CommitFile.new(
  type: null,
  path: null,
  commit: null,
  attributes: null,
  escaped_path: null
)
```

