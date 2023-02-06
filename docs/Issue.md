# Bitbucket::Issue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**IssueLinks**](IssueLinks.md) |  | [optional] |
| **id** | **Integer** |  | [optional] |
| **repository** | [**Repository**](Repository.md) |  | [optional] |
| **title** | **String** |  | [optional] |
| **reporter** | [**Account**](Account.md) |  | [optional] |
| **assignee** | [**Account**](Account.md) |  | [optional] |
| **created_on** | **Time** |  | [optional] |
| **updated_on** | **Time** |  | [optional] |
| **edited_on** | **Time** |  | [optional] |
| **state** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **priority** | **String** |  | [optional] |
| **milestone** | [**Milestone**](Milestone.md) |  | [optional] |
| **version** | [**Version**](Version.md) |  | [optional] |
| **component** | [**Component**](Component.md) |  | [optional] |
| **votes** | **Integer** |  | [optional] |
| **content** | [**BaseCommitSummary**](BaseCommitSummary.md) |  | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Issue.new(
  links: null,
  id: null,
  repository: null,
  title: null,
  reporter: null,
  assignee: null,
  created_on: null,
  updated_on: null,
  edited_on: null,
  state: null,
  kind: null,
  priority: null,
  milestone: null,
  version: null,
  component: null,
  votes: null,
  content: null
)
```

