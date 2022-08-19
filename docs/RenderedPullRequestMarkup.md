# Bitbucket::RenderedPullRequestMarkup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | [**IssueContent**](IssueContent.md) |  | [optional] |
| **description** | [**IssueContent**](IssueContent.md) |  | [optional] |
| **reason** | [**IssueContent**](IssueContent.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::RenderedPullRequestMarkup.new(
  title: null,
  description: null,
  reason: null
)
```

