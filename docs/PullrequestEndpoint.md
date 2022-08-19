# Bitbucket::PullrequestEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | [**Repository**](Repository.md) |  | [optional] |
| **branch** | [**PullRequestBranch**](PullRequestBranch.md) |  | [optional] |
| **commit** | [**PullRequestCommit**](PullRequestCommit.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PullrequestEndpoint.new(
  repository: null,
  branch: null,
  commit: null
)
```

