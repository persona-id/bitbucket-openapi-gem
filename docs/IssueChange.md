# Bitbucket::IssueChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **links** | [**IssueChangeLinks**](IssueChangeLinks.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **user** | [**Account**](Account.md) |  | [optional] |
| **issue** | [**Issue**](Issue.md) |  | [optional] |
| **changes** | [**IssueChangeChanges**](IssueChangeChanges.md) |  | [optional] |
| **message** | [**IssueChangeMessage**](IssueChangeMessage.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::IssueChange.new(
  type: null,
  links: null,
  name: null,
  created_on: null,
  user: null,
  issue: null,
  changes: null,
  message: null
)
```

