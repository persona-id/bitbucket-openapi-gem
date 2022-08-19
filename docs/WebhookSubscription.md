# Bitbucket::WebhookSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | The webhook&#39;s id | [optional] |
| **url** | **String** | The URL events get delivered to. | [optional] |
| **description** | **String** | A user-defined description of the webhook. | [optional] |
| **subject_type** | **String** | The type of entity. Set to either &#x60;repository&#x60; or &#x60;workspace&#x60; based on where the subscription is defined. | [optional] |
| **subject** | **Object** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **events** | **Array&lt;String&gt;** | The events this webhook is subscribed to. | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::WebhookSubscription.new(
  uuid: null,
  url: null,
  description: null,
  subject_type: null,
  subject: null,
  active: null,
  created_at: null,
  events: null
)
```

