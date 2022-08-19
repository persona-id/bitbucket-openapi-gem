# Bitbucket::Snippet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **scm** | **String** | The DVCS used to store the snippet. | [optional] |
| **created_on** | **Time** |  | [optional] |
| **updated_on** | **Time** |  | [optional] |
| **owner** | [**Account**](Account.md) |  | [optional] |
| **creator** | [**Account**](Account.md) |  | [optional] |
| **is_private** | **Boolean** |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Snippet.new(
  id: null,
  title: null,
  scm: null,
  created_on: null,
  updated_on: null,
  owner: null,
  creator: null,
  is_private: null
)
```

