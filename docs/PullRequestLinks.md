# Bitbucket::PullRequestLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**Link**](Link.md) |  | [optional] |
| **html** | [**Link**](Link.md) |  | [optional] |
| **commits** | [**Link**](Link.md) |  | [optional] |
| **approve** | [**Link**](Link.md) |  | [optional] |
| **diff** | [**Link**](Link.md) |  | [optional] |
| **diffstat** | [**Link**](Link.md) |  | [optional] |
| **comments** | [**Link**](Link.md) |  | [optional] |
| **activity** | [**Link**](Link.md) |  | [optional] |
| **merge** | [**Link**](Link.md) |  | [optional] |
| **decline** | [**Link**](Link.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PullRequestLinks.new(
  _self: null,
  html: null,
  commits: null,
  approve: null,
  diff: null,
  diffstat: null,
  comments: null,
  activity: null,
  merge: null,
  decline: null
)
```

