# Bitbucket::IssueContent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **raw** | **String** | The text as it was typed by a user. | [optional] |
| **markup** | **String** | The type of markup language the raw content is to be interpreted in. | [optional] |
| **html** | **String** | The user&#39;s content rendered as HTML. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::IssueContent.new(
  raw: null,
  markup: null,
  html: null
)
```

