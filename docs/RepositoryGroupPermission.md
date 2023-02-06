# Bitbucket::RepositoryGroupPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **links** | [**RepositoryGroupPermissionLinks**](RepositoryGroupPermissionLinks.md) |  | [optional] |
| **permission** | **String** |  | [optional] |
| **group** | [**Group**](Group.md) |  | [optional] |
| **repository** | [**Repository**](Repository.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::RepositoryGroupPermission.new(
  type: null,
  links: null,
  permission: null,
  group: null,
  repository: null
)
```

