# Bitbucket::Comment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **updated_on** | **Time** |  | [optional] |
| **content** | [**BaseCommitSummary**](BaseCommitSummary.md) |  | [optional] |
| **user** | [**Account**](Account.md) |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |
| **parent** | [**Comment**](Comment.md) |  | [optional] |
| **inline** | [**CommentInline**](CommentInline.md) |  | [optional] |
| **links** | [**CommentLinks**](CommentLinks.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Comment.new(
  id: null,
  created_on: null,
  updated_on: null,
  content: null,
  user: null,
  deleted: null,
  parent: null,
  inline: null,
  links: null
)
```

