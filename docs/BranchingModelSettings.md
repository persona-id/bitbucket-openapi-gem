# Bitbucket::BranchingModelSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**MilestoneLinks**](MilestoneLinks.md) |  | [optional] |
| **branch_types** | [**Array&lt;BranchingModelSettingsBranchTypes&gt;**](BranchingModelSettingsBranchTypes.md) |  | [optional] |
| **development** | [**BranchingModelSettingsDevelopment**](BranchingModelSettingsDevelopment.md) |  | [optional] |
| **production** | [**BranchingModelSettingsProduction**](BranchingModelSettingsProduction.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::BranchingModelSettings.new(
  links: null,
  branch_types: null,
  development: null,
  production: null
)
```

