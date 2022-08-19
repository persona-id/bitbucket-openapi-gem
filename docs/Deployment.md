# Bitbucket::Deployment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The UUID identifying the deployment. | [optional] |
| **state** | [**DeploymentState**](DeploymentState.md) |  | [optional] |
| **environment** | [**DeploymentEnvironment**](DeploymentEnvironment.md) |  | [optional] |
| **release** | [**DeploymentRelease**](DeploymentRelease.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Deployment.new(
  uuid: null,
  state: null,
  environment: null,
  release: null
)
```

