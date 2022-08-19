# Bitbucket::PullRequestBranch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **merge_strategies** | **Array&lt;String&gt;** | Available merge strategies, when this endpoint is the destination of the pull request. | [optional] |
| **default_merge_strategy** | **String** | The default merge strategy, when this endpoint is the destination of the pull request. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PullRequestBranch.new(
  name: null,
  merge_strategies: null,
  default_merge_strategy: null
)
```

