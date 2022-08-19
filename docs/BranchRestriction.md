# Bitbucket::Branchrestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**VersionLinks**](VersionLinks.md) |  | [optional] |
| **id** | **Integer** | The branch restriction status&#39; id. | [optional] |
| **kind** | **String** | The type of restriction that is being applied. |  |
| **branch_match_kind** | **String** | Indicates how the restriction is matched against a branch. The default is &#x60;glob&#x60;. |  |
| **branch_type** | **String** | Apply the restriction to branches of this type. Active when &#x60;branch_match_kind&#x60; is &#x60;branching_model&#x60;. The branch type will be calculated using the branching model configured for the repository. | [optional] |
| **pattern** | **String** | Apply the restriction to branches that match this pattern. Active when &#x60;branch_match_kind&#x60; is &#x60;glob&#x60;. Will be empty when &#x60;branch_match_kind&#x60; is &#x60;branching_model&#x60;. |  |
| **users** | [**Array&lt;Account&gt;**](Account.md) |  | [optional] |
| **groups** | [**Array&lt;Group&gt;**](Group.md) |  | [optional] |
| **value** | **Integer** | &lt;staticmethod object at 0x7ff7b27cdfd0&gt; | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Branchrestriction.new(
  links: null,
  id: null,
  kind: null,
  branch_match_kind: null,
  branch_type: null,
  pattern: null,
  users: null,
  groups: null,
  value: null
)
```

