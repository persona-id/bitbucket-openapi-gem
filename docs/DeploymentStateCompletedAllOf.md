# Bitbucket::DeploymentStateCompletedAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of deployment state (COMPLETED). | [optional] |
| **url** | **String** | Link to the deployment result. | [optional] |
| **deployer** | [**Account**](Account.md) |  | [optional] |
| **status** | [**DeploymentStateCompletedStatus**](DeploymentStateCompletedStatus.md) |  | [optional] |
| **start_date** | **Time** | The timestamp when the deployment was started. | [optional] |
| **completion_date** | **Time** | The timestamp when the deployment completed. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::DeploymentStateCompletedAllOf.new(
  name: null,
  url: null,
  deployer: null,
  status: null,
  start_date: null,
  completion_date: null
)
```

