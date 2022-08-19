# Bitbucket::ErrorError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  |  |
| **detail** | **String** |  | [optional] |
| **data** | **Hash&lt;String, Object&gt;** | Optional structured data that is endpoint-specific. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::ErrorError.new(
  message: null,
  detail: null,
  data: null
)
```

