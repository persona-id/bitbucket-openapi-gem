# Bitbucket::PipelinesConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether Pipelines is enabled for the repository. | [optional] |
| **repository** | [**Repository**](Repository.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::PipelinesConfig.new(
  enabled: null,
  repository: null
)
```

