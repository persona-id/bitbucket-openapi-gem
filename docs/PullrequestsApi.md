# Bitbucket::PullrequestsApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_pullrequests_for_commit**](PullrequestsApi.md#get_pullrequests_for_commit) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/pullrequests | List pull requests that contain a commit |
| [**pullrequests_selected_user_get**](PullrequestsApi.md#pullrequests_selected_user_get) | **GET** /pullrequests/{selected_user} | List pull requests for a user |
| [**repositories_workspace_repo_slug_default_reviewers_get**](PullrequestsApi.md#repositories_workspace_repo_slug_default_reviewers_get) | **GET** /repositories/{workspace}/{repo_slug}/default-reviewers | List default reviewers |
| [**repositories_workspace_repo_slug_default_reviewers_target_username_delete**](PullrequestsApi.md#repositories_workspace_repo_slug_default_reviewers_target_username_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/default-reviewers/{target_username} | Remove a user from the default reviewers |
| [**repositories_workspace_repo_slug_default_reviewers_target_username_get**](PullrequestsApi.md#repositories_workspace_repo_slug_default_reviewers_target_username_get) | **GET** /repositories/{workspace}/{repo_slug}/default-reviewers/{target_username} | Get a default reviewer |
| [**repositories_workspace_repo_slug_default_reviewers_target_username_put**](PullrequestsApi.md#repositories_workspace_repo_slug_default_reviewers_target_username_put) | **PUT** /repositories/{workspace}/{repo_slug}/default-reviewers/{target_username} | Add a user to the default reviewers |
| [**repositories_workspace_repo_slug_pullrequests_activity_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_activity_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/activity | List a pull request activity log |
| [**repositories_workspace_repo_slug_pullrequests_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests | List pull requests |
| [**repositories_workspace_repo_slug_pullrequests_post**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_post) | **POST** /repositories/{workspace}/{repo_slug}/pullrequests | Create a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/activity | List a pull request activity log |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/approve | Unapprove a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post) | **POST** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/approve | Approve a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/comments/{comment_id} | Delete a comment on a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/comments/{comment_id} | Get a comment on a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put) | **PUT** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/comments/{comment_id} | Update a comment on a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/comments | List comments on a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post) | **POST** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/comments | Create a comment on a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/commits | List commits on a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post) | **POST** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/decline | Decline a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/diff | List changes in a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/diffstat | Get the diff stat for a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id} | Get a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post) | **POST** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/merge | Merge a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/merge/task-status/{task_id} | Get the merge task status for a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/patch | Get the patch for a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_put**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_put) | **PUT** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id} | Update a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/request-changes | Remove change request for a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post) | **POST** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/request-changes | Request changes for a pull request |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get**](PullrequestsApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/statuses | List commit statuses for a pull request |


## get_pullrequests_for_commit

> <PaginatedPullrequests> get_pullrequests_for_commit(workspace, repo_slug, commit, opts)

List pull requests that contain a commit

Returns a paginated list of all pull requests as part of which this commit was reviewed. Pull Request Commit Links app must be installed first before using this API; installation automatically occurs when 'Go to pull request' is clicked from the web interface for a commit's details.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PullrequestsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces
repo_slug = 'repo_slug_example' # String | The repository; either the UUID in curly braces, or the slug
commit = 'commit_example' # String | The SHA1 of the commit
opts = {
  page: 56, # Integer | Which page to retrieve
  pagelen: 56 # Integer | How many pull requests to retrieve per page
}

begin
  # List pull requests that contain a commit
  result = api_instance.get_pullrequests_for_commit(workspace, repo_slug, commit, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->get_pullrequests_for_commit: #{e}"
end
```

#### Using the get_pullrequests_for_commit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPullrequests>, Integer, Hash)> get_pullrequests_for_commit_with_http_info(workspace, repo_slug, commit, opts)

```ruby
begin
  # List pull requests that contain a commit
  data, status_code, headers = api_instance.get_pullrequests_for_commit_with_http_info(workspace, repo_slug, commit, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPullrequests>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->get_pullrequests_for_commit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces |  |
| **repo_slug** | **String** | The repository; either the UUID in curly braces, or the slug |  |
| **commit** | **String** | The SHA1 of the commit |  |
| **page** | **Integer** | Which page to retrieve | [optional][default to 1] |
| **pagelen** | **Integer** | How many pull requests to retrieve per page | [optional][default to 30] |

### Return type

[**PaginatedPullrequests**](PaginatedPullrequests.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pullrequests_selected_user_get

> <PaginatedPullrequests> pullrequests_selected_user_get(selected_user, opts)

List pull requests for a user

Returns all pull requests authored by the specified user.  By default only open pull requests are returned. This can be controlled using the `state` query parameter. To retrieve pull requests that are in one of multiple states, repeat the `state` parameter for each individual state.  This endpoint also supports filtering and sorting of the results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for more details.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
selected_user = 'selected_user_example' # String | This can either be the username of the pull request author, the author's UUID surrounded by curly-braces, for example: `{account UUID}`, or the author's Atlassian ID. 
opts = {
  state: 'OPEN' # String | Only return pull requests that are in this state. This parameter can be repeated.
}

begin
  # List pull requests for a user
  result = api_instance.pullrequests_selected_user_get(selected_user, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->pullrequests_selected_user_get: #{e}"
end
```

#### Using the pullrequests_selected_user_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPullrequests>, Integer, Hash)> pullrequests_selected_user_get_with_http_info(selected_user, opts)

```ruby
begin
  # List pull requests for a user
  data, status_code, headers = api_instance.pullrequests_selected_user_get_with_http_info(selected_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPullrequests>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->pullrequests_selected_user_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | This can either be the username of the pull request author, the author&#39;s UUID surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;, or the author&#39;s Atlassian ID.  |  |
| **state** | **String** | Only return pull requests that are in this state. This parameter can be repeated. | [optional] |

### Return type

[**PaginatedPullrequests**](PaginatedPullrequests.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_default_reviewers_get

> <PaginatedAccounts> repositories_workspace_repo_slug_default_reviewers_get(repo_slug, workspace)

List default reviewers

Returns the repository's default reviewers.  These are the users that are automatically added as reviewers on every new pull request that is created.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List default reviewers
  result = api_instance.repositories_workspace_repo_slug_default_reviewers_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_default_reviewers_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_default_reviewers_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAccounts>, Integer, Hash)> repositories_workspace_repo_slug_default_reviewers_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List default reviewers
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_default_reviewers_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAccounts>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_default_reviewers_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedAccounts**](PaginatedAccounts.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_default_reviewers_target_username_delete

> repositories_workspace_repo_slug_default_reviewers_target_username_delete(repo_slug, target_username, workspace)

Remove a user from the default reviewers

Removes a default reviewer from the repository.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
target_username = 'target_username_example' # String | This can either be the username or the UUID of the default reviewer, surrounded by curly-braces, for example: `{account UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Remove a user from the default reviewers
  api_instance.repositories_workspace_repo_slug_default_reviewers_target_username_delete(repo_slug, target_username, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_default_reviewers_target_username_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_default_reviewers_target_username_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_default_reviewers_target_username_delete_with_http_info(repo_slug, target_username, workspace)

```ruby
begin
  # Remove a user from the default reviewers
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_default_reviewers_target_username_delete_with_http_info(repo_slug, target_username, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_default_reviewers_target_username_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **target_username** | **String** | This can either be the username or the UUID of the default reviewer, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_default_reviewers_target_username_get

> <Account> repositories_workspace_repo_slug_default_reviewers_target_username_get(repo_slug, target_username, workspace)

Get a default reviewer

Returns the specified reviewer.  This can be used to test whether a user is among the repository's default reviewers list. A 404 indicates that that specified user is not a default reviewer.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
target_username = 'target_username_example' # String | This can either be the username or the UUID of the default reviewer, surrounded by curly-braces, for example: `{account UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a default reviewer
  result = api_instance.repositories_workspace_repo_slug_default_reviewers_target_username_get(repo_slug, target_username, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_default_reviewers_target_username_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_default_reviewers_target_username_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> repositories_workspace_repo_slug_default_reviewers_target_username_get_with_http_info(repo_slug, target_username, workspace)

```ruby
begin
  # Get a default reviewer
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_default_reviewers_target_username_get_with_http_info(repo_slug, target_username, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_default_reviewers_target_username_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **target_username** | **String** | This can either be the username or the UUID of the default reviewer, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_default_reviewers_target_username_put

> <Account> repositories_workspace_repo_slug_default_reviewers_target_username_put(repo_slug, target_username, workspace)

Add a user to the default reviewers

Adds the specified user to the repository's list of default reviewers.  This method is idempotent. Adding a user a second time has no effect.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
target_username = 'target_username_example' # String | This can either be the username or the UUID of the default reviewer, surrounded by curly-braces, for example: `{account UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Add a user to the default reviewers
  result = api_instance.repositories_workspace_repo_slug_default_reviewers_target_username_put(repo_slug, target_username, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_default_reviewers_target_username_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_default_reviewers_target_username_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Account>, Integer, Hash)> repositories_workspace_repo_slug_default_reviewers_target_username_put_with_http_info(repo_slug, target_username, workspace)

```ruby
begin
  # Add a user to the default reviewers
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_default_reviewers_target_username_put_with_http_info(repo_slug, target_username, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Account>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_default_reviewers_target_username_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **target_username** | **String** | This can either be the username or the UUID of the default reviewer, surrounded by curly-braces, for example: &#x60;{account UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_activity_get

> repositories_workspace_repo_slug_pullrequests_activity_get(repo_slug, workspace)

List a pull request activity log

Returns a paginated list of the pull request's activity log.  This handler serves both a v20 and internal endpoint. The v20 endpoint returns reviewer comments, updates, approvals and request changes. The internal endpoint includes those plus tasks and attachments.  Comments created on a file or a line of code have an inline property.  Comment example: ``` {     \"pagelen\": 20,     \"values\": [         {             \"comment\": {                 \"links\": {                     \"self\": {                         \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695/comments/118571088\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695/_/diff#comment-118571088\"                     }                 },                 \"deleted\": false,                 \"pullrequest\": {                     \"type\": \"pullrequest\",                     \"id\": 5695,                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                         }                     },                     \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"                 },                 \"content\": {                     \"raw\": \"inline with to a dn from lines\",                     \"markup\": \"markdown\",                     \"html\": \"<p>inline with to a dn from lines</p>\",                     \"type\": \"rendered\"                 },                 \"created_on\": \"2019-09-27T00:33:46.039178+00:00\",                 \"user\": {                     \"display_name\": \"Name Lastname\",                     \"uuid\": \"{}\",                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/users/%7B%7D\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/%7B%7D/\"                         },                         \"avatar\": {                             \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/:/128\"                         }                     },                     \"type\": \"user\",                     \"nickname\": \"Name\",                     \"account_id\": \"\"                 },                 \"created_on\": \"2019-09-27T00:33:46.039178+00:00\",                 \"user\": {                     \"display_name\": \"Name Lastname\",                     \"uuid\": \"{}\",                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/users/%7B%7D\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/%7B%7D/\"                         },                         \"avatar\": {                             \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/:/128\"                         }                     },                     \"type\": \"user\",                     \"nickname\": \"Name\",                     \"account_id\": \"\"                 },                 \"updated_on\": \"2019-09-27T00:33:46.055384+00:00\",                 \"inline\": {                     \"context_lines\": \"\",                     \"to\": null,                     \"path\": \"\",                     \"outdated\": false,                     \"from\": 211                 },                 \"type\": \"pullrequest_comment\",                 \"id\": 118571088             },             \"pull_request\": {                 \"type\": \"pullrequest\",                 \"id\": 5695,                 \"links\": {                     \"self\": {                         \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                     }                 },                 \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"             }         }     ] } ```  Updates include a state property of OPEN, MERGED, or DECLINED.  Update example: ``` {     \"pagelen\": 20,     \"values\": [         {             \"update\": {                 \"description\": \"\",                 \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\",                 \"destination\": {                     \"commit\": {                         \"type\": \"commit\",                         \"hash\": \"6a2c16e4a152\",                         \"links\": {                             \"self\": {                                 \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/commit/6a2c16e4a152\"                             },                             \"html\": {                                 \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/commits/6a2c16e4a152\"                             }                         }                     },                     \"branch\": {                         \"name\": \"master\"                     },                     \"repository\": {                         \"name\": \"Atlaskit-MK-2\",                         \"type\": \"repository\",                         \"full_name\": \"atlassian/atlaskit-mk-2\",                         \"links\": {                             \"self\": {                                 \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2\"                             },                             \"html\": {                                 \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2\"                             },                             \"avatar\": {                                 \"href\": \"https://bytebucket.org/ravatar/%7B%7D?ts=js\"                             }                         },                         \"uuid\": \"{}\"                     }                 },                 \"reason\": \"\",                 \"source\": {                     \"commit\": {                         \"type\": \"commit\",                         \"hash\": \"728c8bad1813\",                         \"links\": {                             \"self\": {                                 \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/commit/728c8bad1813\"                             },                             \"html\": {                                 \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/commits/728c8bad1813\"                             }                         }                     },                     \"branch\": {                         \"name\": \"username/NONE-add-onClick-prop-for-accessibility\"                     },                     \"repository\": {                         \"name\": \"Atlaskit-MK-2\",                         \"type\": \"repository\",                         \"full_name\": \"atlassian/atlaskit-mk-2\",                         \"links\": {                             \"self\": {                                 \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2\"                             },                             \"html\": {                                 \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2\"                             },                             \"avatar\": {                                 \"href\": \"https://bytebucket.org/ravatar/%7B%7D?ts=js\"                             }                         },                         \"uuid\": \"{}\"                     }                 },                 \"state\": \"OPEN\",                 \"author\": {                     \"display_name\": \"Name Lastname\",                     \"uuid\": \"{}\",                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/users/%7B%7D\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/%7B%7D/\"                         },                         \"avatar\": {                             \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/:/128\"                         }                     },                     \"type\": \"user\",                     \"nickname\": \"Name\",                     \"account_id\": \"\"                 },                 \"date\": \"2019-05-10T06:48:25.305565+00:00\"             },             \"pull_request\": {                 \"type\": \"pullrequest\",                 \"id\": 5695,                 \"links\": {                     \"self\": {                         \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                     }                 },                 \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"             }         }     ] } ```  Approval example: ``` {     \"pagelen\": 20,     \"values\": [         {             \"approval\": {                 \"date\": \"2019-09-27T00:37:19.849534+00:00\",                 \"pullrequest\": {                     \"type\": \"pullrequest\",                     \"id\": 5695,                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                         }                     },                     \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"                 },                 \"user\": {                     \"display_name\": \"Name Lastname\",                     \"uuid\": \"{}\",                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/users/%7B%7D\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/%7B%7D/\"                         },                         \"avatar\": {                             \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/:/128\"                         }                     },                     \"type\": \"user\",                     \"nickname\": \"Name\",                     \"account_id\": \"\"                 }             },             \"pull_request\": {                 \"type\": \"pullrequest\",                 \"id\": 5695,                 \"links\": {                     \"self\": {                         \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                     }                 },                 \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"             }         }     ] } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List a pull request activity log
  api_instance.repositories_workspace_repo_slug_pullrequests_activity_get(repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_activity_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_activity_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_activity_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List a pull request activity log
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_activity_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_activity_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_get

> <PaginatedPullrequests> repositories_workspace_repo_slug_pullrequests_get(repo_slug, workspace, opts)

List pull requests

Returns all pull requests on the specified repository.  By default only open pull requests are returned. This can be controlled using the `state` query parameter. To retrieve pull requests that are in one of multiple states, repeat the `state` parameter for each individual state.  This endpoint also supports filtering and sorting of the results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for more details.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  state: 'OPEN' # String | Only return pull requests that are in this state. This parameter can be repeated.
}

begin
  # List pull requests
  result = api_instance.repositories_workspace_repo_slug_pullrequests_get(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPullrequests>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_get_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # List pull requests
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_get_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPullrequests>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **state** | **String** | Only return pull requests that are in this state. This parameter can be repeated. | [optional] |

### Return type

[**PaginatedPullrequests**](PaginatedPullrequests.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_post

> <Pullrequest> repositories_workspace_repo_slug_pullrequests_post(repo_slug, workspace, opts)

Create a pull request

Creates a new pull request where the destination repository is this repository and the author is the authenticated user.  The minimum required fields to create a pull request are `title` and `source`, specified by a branch name.  ``` curl https://api.bitbucket.org/2.0/repositories/my-workspace/my-repository/pullrequests \\     -u my-username:my-password \\     --request POST \\     --header 'Content-Type: application/json' \\     --data '{         \"title\": \"My Title\",         \"source\": {             \"branch\": {                 \"name\": \"staging\"             }         }     }' ```  If the pull request's `destination` is not specified, it will default to the `repository.mainbranch`. To open a pull request to a different branch, say from a feature branch to a staging branch, specify a `destination` (same format as the `source`):  ``` {     \"title\": \"My Title\",     \"source\": {         \"branch\": {             \"name\": \"my-feature-branch\"         }     },     \"destination\": {         \"branch\": {             \"name\": \"staging\"         }     } } ```  Reviewers can be specified by adding an array of user objects as the `reviewers` property.  ``` {     \"title\": \"My Title\",     \"source\": {         \"branch\": {             \"name\": \"my-feature-branch\"         }     },     \"reviewers\": [         {             \"uuid\": \"{504c3b62-8120-4f0c-a7bc-87800b9d6f70}\"         }     ] } ```  Other fields:  * `description` - a string * `close_source_branch` - boolean that specifies if the source branch should be closed upon merging

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  pullrequest: Bitbucket::Pullrequest.new({type: 'type_example'}) # Pullrequest | The new pull request.  The request URL you POST to becomes the destination repository URL. For this reason, you must specify an explicit source repository in the request object if you want to pull from a different repository (fork).  Since not all elements are required or even mutable, you only need to include the elements you want to initialize, such as the source branch and the title.
}

begin
  # Create a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_post(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pullrequest>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_post_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # Create a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_post_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pullrequest>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **pullrequest** | [**Pullrequest**](Pullrequest.md) | The new pull request.  The request URL you POST to becomes the destination repository URL. For this reason, you must specify an explicit source repository in the request object if you want to pull from a different repository (fork).  Since not all elements are required or even mutable, you only need to include the elements you want to initialize, such as the source branch and the title. | [optional] |

### Return type

[**Pullrequest**](Pullrequest.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get

> repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get(pull_request_id, repo_slug, workspace)

List a pull request activity log

Returns a paginated list of the pull request's activity log.  This handler serves both a v20 and internal endpoint. The v20 endpoint returns reviewer comments, updates, approvals and request changes. The internal endpoint includes those plus tasks and attachments.  Comments created on a file or a line of code have an inline property.  Comment example: ``` {     \"pagelen\": 20,     \"values\": [         {             \"comment\": {                 \"links\": {                     \"self\": {                         \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695/comments/118571088\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695/_/diff#comment-118571088\"                     }                 },                 \"deleted\": false,                 \"pullrequest\": {                     \"type\": \"pullrequest\",                     \"id\": 5695,                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                         }                     },                     \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"                 },                 \"content\": {                     \"raw\": \"inline with to a dn from lines\",                     \"markup\": \"markdown\",                     \"html\": \"<p>inline with to a dn from lines</p>\",                     \"type\": \"rendered\"                 },                 \"created_on\": \"2019-09-27T00:33:46.039178+00:00\",                 \"user\": {                     \"display_name\": \"Name Lastname\",                     \"uuid\": \"{}\",                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/users/%7B%7D\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/%7B%7D/\"                         },                         \"avatar\": {                             \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/:/128\"                         }                     },                     \"type\": \"user\",                     \"nickname\": \"Name\",                     \"account_id\": \"\"                 },                 \"created_on\": \"2019-09-27T00:33:46.039178+00:00\",                 \"user\": {                     \"display_name\": \"Name Lastname\",                     \"uuid\": \"{}\",                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/users/%7B%7D\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/%7B%7D/\"                         },                         \"avatar\": {                             \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/:/128\"                         }                     },                     \"type\": \"user\",                     \"nickname\": \"Name\",                     \"account_id\": \"\"                 },                 \"updated_on\": \"2019-09-27T00:33:46.055384+00:00\",                 \"inline\": {                     \"context_lines\": \"\",                     \"to\": null,                     \"path\": \"\",                     \"outdated\": false,                     \"from\": 211                 },                 \"type\": \"pullrequest_comment\",                 \"id\": 118571088             },             \"pull_request\": {                 \"type\": \"pullrequest\",                 \"id\": 5695,                 \"links\": {                     \"self\": {                         \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                     }                 },                 \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"             }         }     ] } ```  Updates include a state property of OPEN, MERGED, or DECLINED.  Update example: ``` {     \"pagelen\": 20,     \"values\": [         {             \"update\": {                 \"description\": \"\",                 \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\",                 \"destination\": {                     \"commit\": {                         \"type\": \"commit\",                         \"hash\": \"6a2c16e4a152\",                         \"links\": {                             \"self\": {                                 \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/commit/6a2c16e4a152\"                             },                             \"html\": {                                 \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/commits/6a2c16e4a152\"                             }                         }                     },                     \"branch\": {                         \"name\": \"master\"                     },                     \"repository\": {                         \"name\": \"Atlaskit-MK-2\",                         \"type\": \"repository\",                         \"full_name\": \"atlassian/atlaskit-mk-2\",                         \"links\": {                             \"self\": {                                 \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2\"                             },                             \"html\": {                                 \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2\"                             },                             \"avatar\": {                                 \"href\": \"https://bytebucket.org/ravatar/%7B%7D?ts=js\"                             }                         },                         \"uuid\": \"{}\"                     }                 },                 \"reason\": \"\",                 \"source\": {                     \"commit\": {                         \"type\": \"commit\",                         \"hash\": \"728c8bad1813\",                         \"links\": {                             \"self\": {                                 \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/commit/728c8bad1813\"                             },                             \"html\": {                                 \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/commits/728c8bad1813\"                             }                         }                     },                     \"branch\": {                         \"name\": \"username/NONE-add-onClick-prop-for-accessibility\"                     },                     \"repository\": {                         \"name\": \"Atlaskit-MK-2\",                         \"type\": \"repository\",                         \"full_name\": \"atlassian/atlaskit-mk-2\",                         \"links\": {                             \"self\": {                                 \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2\"                             },                             \"html\": {                                 \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2\"                             },                             \"avatar\": {                                 \"href\": \"https://bytebucket.org/ravatar/%7B%7D?ts=js\"                             }                         },                         \"uuid\": \"{}\"                     }                 },                 \"state\": \"OPEN\",                 \"author\": {                     \"display_name\": \"Name Lastname\",                     \"uuid\": \"{}\",                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/users/%7B%7D\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/%7B%7D/\"                         },                         \"avatar\": {                             \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/:/128\"                         }                     },                     \"type\": \"user\",                     \"nickname\": \"Name\",                     \"account_id\": \"\"                 },                 \"date\": \"2019-05-10T06:48:25.305565+00:00\"             },             \"pull_request\": {                 \"type\": \"pullrequest\",                 \"id\": 5695,                 \"links\": {                     \"self\": {                         \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                     }                 },                 \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"             }         }     ] } ```  Approval example: ``` {     \"pagelen\": 20,     \"values\": [         {             \"approval\": {                 \"date\": \"2019-09-27T00:37:19.849534+00:00\",                 \"pullrequest\": {                     \"type\": \"pullrequest\",                     \"id\": 5695,                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                         }                     },                     \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"                 },                 \"user\": {                     \"display_name\": \"Name Lastname\",                     \"uuid\": \"{}\",                     \"links\": {                         \"self\": {                             \"href\": \"https://bitbucket.org/!api/2.0/users/%7B%7D\"                         },                         \"html\": {                             \"href\": \"https://bitbucket.org/%7B%7D/\"                         },                         \"avatar\": {                             \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/:/128\"                         }                     },                     \"type\": \"user\",                     \"nickname\": \"Name\",                     \"account_id\": \"\"                 }             },             \"pull_request\": {                 \"type\": \"pullrequest\",                 \"id\": 5695,                 \"links\": {                     \"self\": {                         \"href\": \"https://bitbucket.org/!api/2.0/repositories/atlassian/atlaskit-mk-2/pullrequests/5695\"                     },                     \"html\": {                         \"href\": \"https://bitbucket.org/atlassian/atlaskit-mk-2/pull-requests/5695\"                     }                 },                 \"title\": \"username/NONE: small change from onFocus to onClick to handle tabbing through the page and not expand the editor unless a click event triggers it\"             }         }     ] } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List a pull request activity log
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get(pull_request_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # List a pull request activity log
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_activity_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete

> repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete(pull_request_id, repo_slug, workspace)

Unapprove a pull request

Redact the authenticated user's approval of the specified pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Unapprove a pull request
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete(pull_request_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # Unapprove a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post

> <Participant> repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post(pull_request_id, repo_slug, workspace)

Approve a pull request

Approve the specified pull request as the authenticated user.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Approve a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post(pull_request_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Participant>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # Approve a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Participant>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_approve_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Participant**](Participant.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete

> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete(comment_id, pull_request_id, repo_slug, workspace)

Delete a comment on a pull request

Deletes a specific pull request comment.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
comment_id = 56 # Integer | The id of the comment.
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a comment on a pull request
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete(comment_id, pull_request_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete_with_http_info(comment_id, pull_request_id, repo_slug, workspace)

```ruby
begin
  # Delete a comment on a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete_with_http_info(comment_id, pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **Integer** | The id of the comment. |  |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get

> <PullrequestComment> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get(comment_id, pull_request_id, repo_slug, workspace)

Get a comment on a pull request

Returns a specific pull request comment.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
comment_id = 56 # Integer | The id of the comment.
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a comment on a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get(comment_id, pull_request_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullrequestComment>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get_with_http_info(comment_id, pull_request_id, repo_slug, workspace)

```ruby
begin
  # Get a comment on a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get_with_http_info(comment_id, pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullrequestComment>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **Integer** | The id of the comment. |  |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PullrequestComment**](PullrequestComment.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put

> <PullrequestComment> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put(comment_id, pull_request_id, repo_slug, workspace, pullrequest_comment)

Update a comment on a pull request

Updates a specific pull request comment.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
comment_id = 56 # Integer | The id of the comment.
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
pullrequest_comment = Bitbucket::PullrequestComment.new({type: 'type_example'}) # PullrequestComment | The contents of the updated comment.

begin
  # Update a comment on a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put(comment_id, pull_request_id, repo_slug, workspace, pullrequest_comment)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullrequestComment>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put_with_http_info(comment_id, pull_request_id, repo_slug, workspace, pullrequest_comment)

```ruby
begin
  # Update a comment on a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put_with_http_info(comment_id, pull_request_id, repo_slug, workspace, pullrequest_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullrequestComment>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_comment_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **Integer** | The id of the comment. |  |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **pullrequest_comment** | [**PullrequestComment**](PullrequestComment.md) | The contents of the updated comment. |  |

### Return type

[**PullrequestComment**](PullrequestComment.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get

> <PaginatedPullrequestComments> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get(pull_request_id, repo_slug, workspace)

List comments on a pull request

Returns a paginated list of the pull request's comments.  This includes both global, inline comments and replies.  The default sorting is oldest to newest and can be overridden with the `sort` query parameter.  This endpoint also supports filtering and sorting of the results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for more details.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List comments on a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get(pull_request_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPullrequestComments>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # List comments on a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPullrequestComments>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedPullrequestComments**](PaginatedPullrequestComments.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post

> <PullrequestComment> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post(pull_request_id, repo_slug, workspace, pullrequest_comment)

Create a comment on a pull request

Creates a new pull request comment.  Returns the newly created pull request comment.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
pullrequest_comment = Bitbucket::PullrequestComment.new({type: 'type_example'}) # PullrequestComment | The comment object.

begin
  # Create a comment on a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post(pull_request_id, repo_slug, workspace, pullrequest_comment)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullrequestComment>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post_with_http_info(pull_request_id, repo_slug, workspace, pullrequest_comment)

```ruby
begin
  # Create a comment on a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post_with_http_info(pull_request_id, repo_slug, workspace, pullrequest_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullrequestComment>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_comments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **pullrequest_comment** | [**PullrequestComment**](PullrequestComment.md) | The comment object. |  |

### Return type

[**PullrequestComment**](PullrequestComment.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get

> repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get(pull_request_id, repo_slug, workspace)

List commits on a pull request

Returns a paginated list of the pull request's commits.  These are the commits that are being merged into the destination branch when the pull requests gets accepted.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List commits on a pull request
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get(pull_request_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # List commits on a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_commits_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post

> <Pullrequest> repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post(pull_request_id, repo_slug, workspace)

Decline a pull request

Declines the pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Decline a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post(pull_request_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pullrequest>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # Decline a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pullrequest>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_decline_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Pullrequest**](Pullrequest.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get

> repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get(pull_request_id, repo_slug, workspace)

List changes in a pull request

Redirects to the [repository diff](/cloud/bitbucket/rest/api-group-commits/#api-repositories-workspace-repo-slug-diff-spec-get) with the revspec that corresponds to the pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List changes in a pull request
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get(pull_request_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # List changes in a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_diff_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get

> repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get(pull_request_id, repo_slug, workspace)

Get the diff stat for a pull request

Redirects to the [repository diffstat](/cloud/bitbucket/rest/api-group-commits/#api-repositories-workspace-repo-slug-diffstat-spec-get) with the revspec that corresponds to the pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the diff stat for a pull request
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get(pull_request_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # Get the diff stat for a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_diffstat_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## repositories_workspace_repo_slug_pullrequests_pull_request_id_get

> <Pullrequest> repositories_workspace_repo_slug_pullrequests_pull_request_id_get(pull_request_id, repo_slug, workspace)

Get a pull request

Returns the specified pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_get(pull_request_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pullrequest>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_get_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # Get a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_get_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pullrequest>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Pullrequest**](Pullrequest.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post

> <Pullrequest> repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post(pull_request_id, repo_slug, workspace, opts)

Merge a pull request

Merges the pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  async: true, # Boolean | Default value is false.   When set to true, runs merge asynchronously and immediately returns a 202 with polling link to the task-status API in the Location header.   When set to false, runs merge and waits for it to complete, returning 200 when it succeeds. If the duration of the merge exceeds a timeout threshold, the API returns a 202 with polling link to the task-status API in the Location header.
  request_body: { key: 3.56} # Hash<String, Object> | 
}

begin
  # Merge a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post(pull_request_id, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pullrequest>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post_with_http_info(pull_request_id, repo_slug, workspace, opts)

```ruby
begin
  # Merge a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post_with_http_info(pull_request_id, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pullrequest>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **async** | **Boolean** | Default value is false.   When set to true, runs merge asynchronously and immediately returns a 202 with polling link to the task-status API in the Location header.   When set to false, runs merge and waits for it to complete, returning 200 when it succeeds. If the duration of the merge exceeds a timeout threshold, the API returns a 202 with polling link to the task-status API in the Location header. | [optional] |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) |  | [optional] |

### Return type

[**Pullrequest**](Pullrequest.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get

> repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get(pull_request_id, repo_slug, task_id, workspace)

Get the merge task status for a pull request

When merging a pull request takes too long, the client receives a task ID along with a 202 status code. The task ID can be used in a call to this endpoint to check the status of a merge task.  ``` curl -X GET https://api.bitbucket.org/2.0/repositories/atlassian/bitbucket/pullrequests/2286/merge/task-status/<task_id> ```  If the merge task is not yet finished, a PENDING status will be returned.  ``` HTTP/2 200 {     \"task_status\": \"PENDING\",     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bitbucket/pullrequests/2286/merge/task-status/<task_id>\"         }     } } ```  If the merge was successful, a SUCCESS status will be returned.  ``` HTTP/2 200 {     \"task_status\": \"SUCCESS\",     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/atlassian/bitbucket/pullrequests/2286/merge/task-status/<task_id>\"         }     },     \"merge_result\": <the merged pull request object> } ```  If the merge task failed, an error will be returned.  ``` {     \"type\": \"error\",     \"error\": {         \"message\": \"<error message>\"     } } ```

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
task_id = 'task_id_example' # String | ID of the merge task
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the merge task status for a pull request
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get(pull_request_id, repo_slug, task_id, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get_with_http_info(pull_request_id, repo_slug, task_id, workspace)

```ruby
begin
  # Get the merge task status for a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get_with_http_info(pull_request_id, repo_slug, task_id, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_merge_task_status_task_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **task_id** | **String** | ID of the merge task |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get

> repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get(pull_request_id, repo_slug, workspace)

Get the patch for a pull request

Redirects to the [repository patch](/cloud/bitbucket/rest/api-group-commits/#api-repositories-workspace-repo-slug-patch-spec-get) with the revspec that corresponds to pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the patch for a pull request
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get(pull_request_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # Get the patch for a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_patch_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## repositories_workspace_repo_slug_pullrequests_pull_request_id_put

> <Pullrequest> repositories_workspace_repo_slug_pullrequests_pull_request_id_put(pull_request_id, repo_slug, workspace, opts)

Update a pull request

Mutates the specified pull request.  This can be used to change the pull request's branches or description.  Only open pull requests can be mutated.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  pullrequest: Bitbucket::Pullrequest.new({type: 'type_example'}) # Pullrequest | The pull request that is to be updated.
}

begin
  # Update a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_put(pull_request_id, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pullrequest>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_put_with_http_info(pull_request_id, repo_slug, workspace, opts)

```ruby
begin
  # Update a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_put_with_http_info(pull_request_id, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pullrequest>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **pullrequest** | [**Pullrequest**](Pullrequest.md) | The pull request that is to be updated. | [optional] |

### Return type

[**Pullrequest**](Pullrequest.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete

> repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete(pull_request_id, repo_slug, workspace)

Remove change request for a pull request



### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Remove change request for a pull request
  api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete(pull_request_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # Remove change request for a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post

> <Participant> repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post(pull_request_id, repo_slug, workspace)

Request changes for a pull request



### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Request changes for a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post(pull_request_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Participant>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post_with_http_info(pull_request_id, repo_slug, workspace)

```ruby
begin
  # Request changes for a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post_with_http_info(pull_request_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Participant>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_request_changes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Participant**](Participant.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get

> <PaginatedCommitstatuses> repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get(pull_request_id, repo_slug, workspace, opts)

List commit statuses for a pull request

Returns all statuses (e.g. build results) for the given pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'
# setup authorization
Bitbucket.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure HTTP basic authorization: basic
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Bitbucket::PullrequestsApi.new
pull_request_id = 56 # Integer | The id of the pull request.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
  sort: 'sort_example' # String | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). Defaults to `created_on`. 
}

begin
  # List commit statuses for a pull request
  result = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get(pull_request_id, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCommitstatuses>, Integer, Hash)> repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get_with_http_info(pull_request_id, repo_slug, workspace, opts)

```ruby
begin
  # List commit statuses for a pull request
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get_with_http_info(pull_request_id, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCommitstatuses>
rescue Bitbucket::ApiError => e
  puts "Error when calling PullrequestsApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pull_request_id** | **Integer** | The id of the pull request. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).  | [optional] |
| **sort** | **String** | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). Defaults to &#x60;created_on&#x60;.  | [optional] |

### Return type

[**PaginatedCommitstatuses**](PaginatedCommitstatuses.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

