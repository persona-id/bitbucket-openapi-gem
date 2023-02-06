# Bitbucket::Pullrequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **links** | [**PullRequestLinks**](PullRequestLinks.md) |  | [optional] |
| **id** | **Integer** | The pull request&#39;s unique ID. Note that pull request IDs are only unique within their associated repository. | [optional] |
| **title** | **String** | Title of the pull request. | [optional] |
| **rendered** | [**RenderedPullRequestMarkup**](RenderedPullRequestMarkup.md) |  | [optional] |
| **summary** | [**BaseCommitSummary**](BaseCommitSummary.md) |  | [optional] |
| **state** | **String** | The pull request&#39;s current status. | [optional] |
| **author** | [**Account**](Account.md) |  | [optional] |
| **source** | [**PullrequestEndpoint**](PullrequestEndpoint.md) |  | [optional] |
| **destination** | [**PullrequestEndpoint**](PullrequestEndpoint.md) |  | [optional] |
| **merge_commit** | [**PullRequestCommit1**](PullRequestCommit1.md) |  | [optional] |
| **comment_count** | **Integer** | The number of comments for a specific pull request. | [optional] |
| **task_count** | **Integer** | The number of open tasks for a specific pull request. | [optional] |
| **close_source_branch** | **Boolean** | A boolean flag indicating if merging the pull request closes the source branch. | [optional] |
| **closed_by** | [**Account**](Account.md) |  | [optional] |
| **reason** | **String** | Explains why a pull request was declined. This field is only applicable to pull requests in rejected state. | [optional] |
| **created_on** | **Time** | The ISO8601 timestamp the request was created. | [optional] |
| **updated_on** | **Time** | The ISO8601 timestamp the request was last updated. | [optional] |
| **reviewers** | [**Array&lt;Account&gt;**](Account.md) | The list of users that were added as reviewers on this pull request when it was created. For performance reasons, the API only includes this list on a pull request&#39;s &#x60;self&#x60; URL. | [optional] |
| **participants** | [**Array&lt;Participant&gt;**](Participant.md) |         The list of users that are collaborating on this pull request.         Collaborators are user that:          * are added to the pull request as a reviewer (part of the reviewers           list)         * are not explicit reviewers, but have commented on the pull request         * are not explicit reviewers, but have approved the pull request          Each user is wrapped in an object that indicates the user&#39;s role and         whether they have approved the pull request. For performance reasons,         the API only returns this list when an API requests a pull request by         id.          | [optional] |

## Example

```ruby
require 'bitbucket'

instance = Bitbucket::Pullrequest.new(
  links: null,
  id: null,
  title: null,
  rendered: null,
  summary: null,
  state: null,
  author: null,
  source: null,
  destination: null,
  merge_commit: null,
  comment_count: null,
  task_count: null,
  close_source_branch: null,
  closed_by: null,
  reason: null,
  created_on: null,
  updated_on: null,
  reviewers: null,
  participants: null
)
```

