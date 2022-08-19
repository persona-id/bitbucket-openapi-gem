# Bitbucket::Project

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**ProjectLinks**](ProjectLinks.md) |  | [optional] |
| **uuid** | **String** | The project&#39;s immutable id. | [optional] |
| **key** | **String** | The project&#39;s key. | [optional] |
| **owner** | [**Team**](Team.md) |  | [optional] |
| **name** | **String** | The name of the project. | [optional] |
| **description** | **String** |  | [optional] |
| **is_private** | **Boolean** |  Indicates whether the project is publicly accessible, or whether it is private to the team and consequently only visible to team members. Note that private projects cannot contain public repositories. | [optional] |
| **created_on** | **Time** |  | [optional] |
| **updated_on** | **Time** |  | [optional] |
| **has_publicly_visible_repos** | **Boolean** |  Indicates whether the project contains publicly visible repositories. Note that private projects cannot contain public repositories. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Project.new(
  links: null,
  uuid: null,
  key: null,
  owner: null,
  name: null,
  description: null,
  is_private: null,
  created_on: null,
  updated_on: null,
  has_publicly_visible_repos: null
)
```

