# Bitbucket::RepositoryUserPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **permission** | **String** |  | [optional] |
| **user** | [**User**](User.md) |  | [optional] |
| **repository** | [**Repository**](Repository.md) |  | [optional] |
| **links** | [**RepositoryGroupPermissionLinks**](RepositoryGroupPermissionLinks.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::RepositoryUserPermission.new(
  type: null,
  permission: null,
  user: null,
  repository: null,
  links: null
)
```

