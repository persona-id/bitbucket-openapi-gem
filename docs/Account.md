# Bitbucket::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**AccountLinks**](AccountLinks.md) |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **uuid** | **String** |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Account.new(
  links: null,
  created_on: null,
  display_name: null,
  username: null,
  uuid: null
)
```

