# Bitbucket::Ref

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **links** | [**RefLinks**](RefLinks.md) |  | [optional] |
| **name** | **String** | The name of the ref. | [optional] |
| **target** | [**Commit**](Commit.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Ref.new(
  type: null,
  links: null,
  name: null,
  target: null
)
```

