# Bitbucket::DeployKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The deploy key value. | [optional] |
| **repository** | [**Repository**](Repository.md) |  | [optional] |
| **comment** | **String** | The comment parsed from the deploy key (if present) | [optional] |
| **label** | **String** | The user-defined label for the deploy key | [optional] |
| **added_on** | **Time** |  | [optional] |
| **last_used** | **Time** |  | [optional] |
| **links** | [**VersionLinks**](VersionLinks.md) |  | [optional] |
| **owner** | [**Account**](Account.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::DeployKey.new(
  key: null,
  repository: null,
  comment: null,
  label: null,
  added_on: null,
  last_used: null,
  links: null,
  owner: null
)
```

