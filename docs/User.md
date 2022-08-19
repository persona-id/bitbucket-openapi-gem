# Bitbucket::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**UserLinks**](UserLinks.md) |  | [optional] |
| **account_id** | **String** | The user&#39;s Atlassian account ID. | [optional] |
| **account_status** | **String** | The status of the account. Currently the only possible value is \&quot;active\&quot;, but more values may be added in the future. | [optional] |
| **has_2fa_enabled** | **Boolean** |  | [optional] |
| **nickname** | **String** | Account name defined by the owner. Should be used instead of the \&quot;username\&quot; field. Note that \&quot;nickname\&quot; cannot be used in place of \&quot;username\&quot; in URLs and queries, as \&quot;nickname\&quot; is not guaranteed to be unique. | [optional] |
| **is_staff** | **Boolean** |  | [optional] |
| **website** | **String** |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::User.new(
  links: null,
  account_id: null,
  account_status: null,
  has_2fa_enabled: null,
  nickname: null,
  is_staff: null,
  website: null
)
```

