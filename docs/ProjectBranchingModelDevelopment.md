# Bitbucket::ProjectBranchingModelDevelopment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the target branch. If inherited by a repository, it will default to the main branch if the specified branch does not exist. |  |
| **use_mainbranch** | **Boolean** | Indicates if the setting points at an explicit branch (&#x60;false&#x60;) or tracks the main branch (&#x60;true&#x60;). |  |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::ProjectBranchingModelDevelopment.new(
  name: null,
  use_mainbranch: null
)
```

