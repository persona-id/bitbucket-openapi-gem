# Bitbucket::BranchingModelDevelopment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branch** | [**Branch**](Branch.md) |  | [optional] |
| **name** | **String** | Name of the target branch. Will be listed here even when the target branch does not exist. Will be &#x60;null&#x60; if targeting the main branch and the repository is empty. |  |
| **use_mainbranch** | **Boolean** | Indicates if the setting points at an explicit branch (&#x60;false&#x60;) or tracks the main branch (&#x60;true&#x60;). |  |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::BranchingModelDevelopment.new(
  branch: null,
  name: null,
  use_mainbranch: null
)
```

