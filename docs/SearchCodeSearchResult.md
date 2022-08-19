# Bitbucket::SearchCodeSearchResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional][readonly] |
| **content_match_count** | **Integer** |  | [optional][readonly] |
| **content_matches** | [**Array&lt;SearchContentMatch&gt;**](SearchContentMatch.md) |  | [optional][readonly] |
| **path_matches** | [**Array&lt;SearchSegment&gt;**](SearchSegment.md) |  | [optional][readonly] |
| **file** | [**CommitFile**](CommitFile.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::SearchCodeSearchResult.new(
  type: null,
  content_match_count: null,
  content_matches: null,
  path_matches: null,
  file: null
)
```

