# Bitbucket::Workspace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**WorkspaceLinks**](WorkspaceLinks.md) |  | [optional] |
| **uuid** | **String** | The workspace&#39;s immutable id. | [optional] |
| **name** | **String** | The name of the workspace. | [optional] |
| **slug** | **String** | The short label that identifies this workspace. | [optional] |
| **is_private** | **Boolean** | Indicates whether the workspace is publicly accessible, or whether it is private to the members and consequently only visible to members. | [optional] |
| **created_on** | **Time** |  | [optional] |
| **updated_on** | **Time** |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Workspace.new(
  links: null,
  uuid: null,
  name: null,
  slug: null,
  is_private: null,
  created_on: null,
  updated_on: null
)
```

