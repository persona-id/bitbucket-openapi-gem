# Bitbucket::ProjectBranchingModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branch_types** | [**Array&lt;BranchingModelBranchTypes&gt;**](BranchingModelBranchTypes.md) | The active branch types. | [optional] |
| **development** | [**ProjectBranchingModelDevelopment**](ProjectBranchingModelDevelopment.md) |  | [optional] |
| **production** | [**ProjectBranchingModelDevelopment**](ProjectBranchingModelDevelopment.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::ProjectBranchingModel.new(
  branch_types: null,
  development: null,
  production: null
)
```

