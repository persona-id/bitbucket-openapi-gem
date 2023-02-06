# Bitbucket::EffectiveRepositoryBranchingModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branch_types** | [**Array&lt;BranchingModelBranchTypes&gt;**](BranchingModelBranchTypes.md) | The active branch types. | [optional] |
| **development** | [**BranchingModelDevelopment**](BranchingModelDevelopment.md) |  | [optional] |
| **production** | [**BranchingModelDevelopment**](BranchingModelDevelopment.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::EffectiveRepositoryBranchingModel.new(
  branch_types: null,
  development: null,
  production: null
)
```

