# Bitbucket::RepositoryPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **permission** | **String** |  | [optional] |
| **user** | [**User**](User.md) |  | [optional] |
| **repository** | [**Repository**](Repository.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::RepositoryPermission.new(
  type: null,
  permission: null,
  user: null,
  repository: null
)
```

