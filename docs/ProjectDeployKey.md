# Bitbucket::ProjectDeployKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The deploy key value. | [optional] |
| **project** | [**Project**](Project.md) |  | [optional] |
| **comment** | **String** | The comment parsed from the deploy key (if present) | [optional] |
| **label** | **String** | The user-defined label for the deploy key | [optional] |
| **added_on** | **Time** |  | [optional] |
| **last_used** | **Time** |  | [optional] |
| **links** | [**MilestoneLinks**](MilestoneLinks.md) |  | [optional] |
| **created_by** | [**Account**](Account.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::ProjectDeployKey.new(
  key: null,
  project: null,
  comment: null,
  label: null,
  added_on: null,
  last_used: null,
  links: null,
  created_by: null
)
```

