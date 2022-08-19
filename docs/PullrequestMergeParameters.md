# Bitbucket::PullrequestMergeParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **message** | **String** | The commit message that will be used on the resulting commit. | [optional] |
| **close_source_branch** | **Boolean** | Whether the source branch should be deleted. If this is not provided, we fallback to the value used when the pull request was created, which defaults to False | [optional] |
| **merge_strategy** | **String** | The merge strategy that will be used to merge the pull request. | [optional][default to &#39;merge_commit&#39;] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PullrequestMergeParameters.new(
  type: null,
  message: null,
  close_source_branch: null,
  merge_strategy: null
)
```

