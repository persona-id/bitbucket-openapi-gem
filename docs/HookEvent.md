# Bitbucket::HookEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | The event identifier. | [optional] |
| **category** | **String** | The category this event belongs to. | [optional] |
| **label** | **String** | Summary of the webhook event type. | [optional] |
| **description** | **String** | More detailed description of the webhook event type. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::HookEvent.new(
  event: null,
  category: null,
  label: null,
  description: null
)
```

