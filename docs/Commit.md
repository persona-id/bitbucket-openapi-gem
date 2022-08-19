# Bitbucket::Commit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | [**Repository**](Repository.md) |  | [optional] |
| **participants** | [**Array&lt;Participant&gt;**](Participant.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Commit.new(
  repository: null,
  participants: null
)
```

