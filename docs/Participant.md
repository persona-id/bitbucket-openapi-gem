# Bitbucket::Participant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | [**Account**](Account.md) |  | [optional] |
| **role** | **String** |  | [optional] |
| **approved** | **Boolean** |  | [optional] |
| **state** | **String** |  | [optional] |
| **participated_on** | **Time** | The ISO8601 timestamp of the participant&#39;s action. For approvers, this is the time of their approval. For commenters and pull request reviewers who are not approvers, this is the time they last commented, or null if they have not commented. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Participant.new(
  user: null,
  role: null,
  approved: null,
  state: null,
  participated_on: null
)
```

