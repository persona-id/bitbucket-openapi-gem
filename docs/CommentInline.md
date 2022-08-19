# Bitbucket::CommentInline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Integer** | The comment&#39;s anchor line in the old version of the file. | [optional] |
| **to** | **Integer** | The comment&#39;s anchor line in the new version of the file. If the &#39;from&#39; line is also provided, this value will be removed. | [optional] |
| **path** | **String** | The path of the file this comment is anchored to. |  |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::CommentInline.new(
  from: null,
  to: null,
  path: null
)
```

