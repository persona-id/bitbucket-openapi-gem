# Bitbucket::Commitstatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**CommitStatusLinks**](CommitStatusLinks.md) |  | [optional] |
| **uuid** | **String** | The commit status&#39; id. | [optional] |
| **key** | **String** | An identifier for the status that&#39;s unique to         its type (current \&quot;build\&quot; is the only supported type) and the vendor,         e.g. BB-DEPLOY | [optional] |
| **refname** | **String** |  The name of the ref that pointed to this commit at the time the status object was created. Note that this the ref may since have moved off of the commit. This optional field can be useful for build systems whose build triggers and configuration are branch-dependent (e.g. a Pipeline build). It is legitimate for this field to not be set, or even apply (e.g. a static linting job). | [optional] |
| **url** | **String** | A URL linking back to the vendor or build system, for providing more information about whatever process produced this status. Accepts context variables &#x60;repository&#x60; and &#x60;commit&#x60; that Bitbucket will evaluate at runtime whenever at runtime. For example, one could use https://foo.com/builds/{repository.full_name} which Bitbucket will turn into https://foo.com/builds/foo/bar at render time. | [optional] |
| **state** | **String** | Provides some indication of the status of this commit | [optional] |
| **name** | **String** | An identifier for the build itself, e.g. BB-DEPLOY-1 | [optional] |
| **description** | **String** | A description of the build (e.g. \&quot;Unit tests in Bamboo\&quot;) | [optional] |
| **created_on** | **Time** |  | [optional] |
| **updated_on** | **Time** |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Commitstatus.new(
  links: null,
  uuid: null,
  key: null,
  refname: null,
  url: null,
  state: null,
  name: null,
  description: null,
  created_on: null,
  updated_on: null
)
```

