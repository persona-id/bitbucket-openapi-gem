# Bitbucket::Branchrestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**Array&lt;Account&gt;**](Account.md) |  | [optional] |
| **groups** | [**Array&lt;Group&gt;**](Group.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Branchrestriction.new(
  users: null,
  groups: null
)
```

