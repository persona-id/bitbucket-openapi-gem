# Bitbucket::BranchingModelBranchTypes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kind** | **String** | The kind of branch. |  |
| **prefix** | **String** | The prefix for this branch type. A branch with this prefix will be classified as per &#x60;kind&#x60;. The prefix must be a valid prefix for a branch and must always exist. It cannot be blank, empty or &#x60;null&#x60;. |  |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::BranchingModelBranchTypes.new(
  kind: null,
  prefix: null
)
```

