# Bitbucket::Treeentry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **path** | **String** | The path in the repository | [optional] |
| **commit** | [**Commit**](Commit.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Treeentry.new(
  type: null,
  path: null,
  commit: null
)
```

