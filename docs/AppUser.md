# Bitbucket::AppUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The user&#39;s Atlassian account ID. | [optional] |
| **account_status** | **String** | The status of the account. Currently the only possible value is \&quot;active\&quot;, but more values may be added in the future. | [optional] |
| **kind** | **String** | The kind of App User. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::AppUser.new(
  account_id: null,
  account_status: null,
  kind: null
)
```

