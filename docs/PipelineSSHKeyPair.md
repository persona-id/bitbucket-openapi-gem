# Bitbucket::PipelineSshKeyPair

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **private_key** | **String** | The SSH private key. This value will be empty when retrieving the SSH key pair. | [optional] |
| **public_key** | **String** | The SSH public key. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineSshKeyPair.new(
  private_key: null,
  public_key: null
)
```

