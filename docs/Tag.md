# Bitbucket::Tag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The message associated with the tag, if available. | [optional] |
| **date** | **Time** | The date that the tag was created, if available | [optional] |
| **tagger** | [**Author**](Author.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Tag.new(
  message: null,
  date: null,
  tagger: null
)
```

