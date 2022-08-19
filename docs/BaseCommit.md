# Bitbucket::BaseCommit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** |  | [optional] |
| **date** | **Time** |  | [optional] |
| **author** | [**Author**](Author.md) |  | [optional] |
| **message** | **String** |  | [optional] |
| **summary** | [**IssueContent**](IssueContent.md) |  | [optional] |
| **parents** | [**Array&lt;BaseCommit&gt;**](BaseCommit.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::BaseCommit.new(
  hash: null,
  date: null,
  author: null,
  message: null,
  summary: null,
  parents: null
)
```

