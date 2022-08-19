# Bitbucket::PipelineSshPublicKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_type** | **String** | The type of the public key. | [optional] |
| **key** | **String** | The base64 encoded public key. | [optional] |
| **md5_fingerprint** | **String** | The MD5 fingerprint of the public key. | [optional] |
| **sha256_fingerprint** | **String** | The SHA-256 fingerprint of the public key. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineSshPublicKey.new(
  key_type: null,
  key: null,
  md5_fingerprint: null,
  sha256_fingerprint: null
)
```

