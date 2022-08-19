# Bitbucket::PipelineImage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the image. If the image is hosted on DockerHub the short name can be used, otherwise the fully qualified name is required here. | [optional] |
| **username** | **String** | The username needed to authenticate with the Docker registry. Only required when using a private Docker image. | [optional] |
| **password** | **String** | The password needed to authenticate with the Docker registry. Only required when using a private Docker image. | [optional] |
| **email** | **String** | The email needed to authenticate with the Docker registry. Only required when using a private Docker image. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelineImage.new(
  name: null,
  username: null,
  password: null,
  email: null
)
```

