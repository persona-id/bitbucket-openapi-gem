# Bitbucket::SearchResultPage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **Integer** |  | [optional][readonly] |
| **page** | **Integer** |  | [optional][readonly] |
| **pagelen** | **Integer** |  | [optional][readonly] |
| **query_substituted** | **Boolean** |  | [optional][readonly] |
| **_next** | **String** |  | [optional][readonly] |
| **previous** | **String** |  | [optional][readonly] |
| **values** | [**Array&lt;SearchCodeSearchResult&gt;**](SearchCodeSearchResult.md) |  | [optional][readonly] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::SearchResultPage.new(
  size: null,
  page: null,
  pagelen: null,
  query_substituted: null,
  _next: null,
  previous: null,
  values: null
)
```

