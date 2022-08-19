# Bitbucket::RepositoryLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_self** | [**Link**](Link.md) |  | [optional] |
| **html** | [**Link**](Link.md) |  | [optional] |
| **avatar** | [**Link**](Link.md) |  | [optional] |
| **pullrequests** | [**Link**](Link.md) |  | [optional] |
| **commits** | [**Link**](Link.md) |  | [optional] |
| **forks** | [**Link**](Link.md) |  | [optional] |
| **watchers** | [**Link**](Link.md) |  | [optional] |
| **downloads** | [**Link**](Link.md) |  | [optional] |
| **clone** | [**Array&lt;Link&gt;**](Link.md) |  | [optional] |
| **hooks** | [**Link**](Link.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::RepositoryLinks.new(
  _self: null,
  html: null,
  avatar: null,
  pullrequests: null,
  commits: null,
  forks: null,
  watchers: null,
  downloads: null,
  clone: null,
  hooks: null
)
```

