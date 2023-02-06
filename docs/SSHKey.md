# Bitbucket::SshKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The SSH key&#39;s immutable ID. | [optional] |
| **key** | **String** | The SSH public key value in OpenSSH format. | [optional] |
| **comment** | **String** | The comment parsed from the SSH key (if present) | [optional] |
| **label** | **String** | The user-defined label for the SSH key | [optional] |
| **created_on** | **Time** |  | [optional] |
| **last_used** | **Time** |  | [optional] |
| **links** | [**MilestoneLinks**](MilestoneLinks.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::SshKey.new(
  uuid: null,
  key: null,
  comment: null,
  label: null,
  created_on: null,
  last_used: null,
  links: null
)
```

