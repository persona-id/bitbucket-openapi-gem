# Bitbucket::RenderedPullRequestMarkup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | [**BaseCommitSummary**](BaseCommitSummary.md) |  | [optional] |
| **description** | [**BaseCommitSummary**](BaseCommitSummary.md) |  | [optional] |
| **reason** | [**BaseCommitSummary**](BaseCommitSummary.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::RenderedPullRequestMarkup.new(
  title: null,
  description: null,
  reason: null
)
```

