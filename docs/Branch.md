# Bitbucket::Branch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merge_strategies** | **Array&lt;String&gt;** | Available merge strategies for pull requests targeting this branch. | [optional] |
| **default_merge_strategy** | **String** | The default merge strategy for pull requests targeting this branch. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Branch.new(
  merge_strategies: null,
  default_merge_strategy: null
)
```

