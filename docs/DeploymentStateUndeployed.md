# Bitbucket::DeploymentStateUndeployed

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of deployment state (UNDEPLOYED). | [optional] |
| **trigger_url** | **String** | Link to trigger the deployment. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::DeploymentStateUndeployed.new(
  name: null,
  trigger_url: null
)
```

