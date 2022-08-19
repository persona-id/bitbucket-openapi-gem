# Bitbucket::Group

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**GroupLinks**](GroupLinks.md) |  | [optional] |
| **owner** | [**Account**](Account.md) |  | [optional] |
| **workspace** | [**Workspace**](Workspace.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **slug** | **String** | The \&quot;sluggified\&quot; version of the group&#39;s name. This contains only ASCII characters and can therefore be slightly different than the name | [optional] |
| **full_slug** | **String** | The concatenation of the workspace&#39;s slug and the group&#39;s slug, separated with a colon (e.g. &#x60;acme:developers&#x60;)  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Group.new(
  links: null,
  owner: null,
  workspace: null,
  name: null,
  slug: null,
  full_slug: null
)
```

