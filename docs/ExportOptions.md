# Bitbucket::ExportOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **project_key** | **String** |  | [optional] |
| **project_name** | **String** |  | [optional] |
| **send_email** | **Boolean** |  | [optional] |
| **include_attachments** | **Boolean** |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::ExportOptions.new(
  type: null,
  project_key: null,
  project_name: null,
  send_email: null,
  include_attachments: null
)
```

