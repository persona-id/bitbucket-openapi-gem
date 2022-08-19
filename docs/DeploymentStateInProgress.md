# Bitbucket::DeploymentStateInProgress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of deployment state (IN_PROGRESS). | [optional] |
| **url** | **String** | Link to the deployment result. | [optional] |
| **deployer** | [**Account**](Account.md) |  | [optional] |
| **start_date** | **Time** | The timestamp when the deployment was started. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::DeploymentStateInProgress.new(
  name: null,
  url: null,
  deployer: null,
  start_date: null
)
```

