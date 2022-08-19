# Bitbucket::Author

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **raw** | **String** | The raw author value from the repository. This may be the only value available if the author does not match a user in Bitbucket. | [optional] |
| **user** | [**Account**](Account.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Author.new(
  raw: null,
  user: null
)
```

