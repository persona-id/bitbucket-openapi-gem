# Bitbucket::BranchingModelSettingsBranchTypes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether the branch type is enabled or not. A disabled branch type may contain an invalid &#x60;prefix&#x60;. | [optional] |
| **kind** | **String** | The kind of the branch type. |  |
| **prefix** | **String** | The prefix for this branch type. A branch with this prefix will be classified as per &#x60;kind&#x60;. The &#x60;prefix&#x60; of an enabled branch type must be a valid branch prefix.Additionally, it cannot be blank, empty or &#x60;null&#x60;. The &#x60;prefix&#x60; for a disabled branch type can be empty or invalid. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::BranchingModelSettingsBranchTypes.new(
  enabled: null,
  kind: null,
  prefix: null
)
```

