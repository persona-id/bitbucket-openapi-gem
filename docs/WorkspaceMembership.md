# Bitbucket::WorkspaceMembership

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**MilestoneLinks**](MilestoneLinks.md) |  | [optional] |
| **user** | [**Account**](Account.md) |  | [optional] |
| **workspace** | [**Workspace**](Workspace.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::WorkspaceMembership.new(
  links: null,
  user: null,
  workspace: null
)
```

