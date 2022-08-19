# Bitbucket::CommitStatusesApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**repositories_workspace_repo_slug_commit_commit_statuses_build_key_get**](CommitStatusesApi.md#repositories_workspace_repo_slug_commit_commit_statuses_build_key_get) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/statuses/build/{key} | Get a build status for a commit |
| [**repositories_workspace_repo_slug_commit_commit_statuses_build_key_put**](CommitStatusesApi.md#repositories_workspace_repo_slug_commit_commit_statuses_build_key_put) | **PUT** /repositories/{workspace}/{repo_slug}/commit/{commit}/statuses/build/{key} | Update a build status for a commit |
| [**repositories_workspace_repo_slug_commit_commit_statuses_build_post**](CommitStatusesApi.md#repositories_workspace_repo_slug_commit_commit_statuses_build_post) | **POST** /repositories/{workspace}/{repo_slug}/commit/{commit}/statuses/build | Create a build status for a commit |
| [**repositories_workspace_repo_slug_commit_commit_statuses_get**](CommitStatusesApi.md#repositories_workspace_repo_slug_commit_commit_statuses_get) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/statuses | List commit statuses for a commit |
| [**repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get**](CommitStatusesApi.md#repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pull_request_id}/statuses | List commit statuses for a pull request |


## repositories_workspace_repo_slug_commit_commit_statuses_build_key_get

> <Commitstatus> repositories_workspace_repo_slug_commit_commit_statuses_build_key_get(commit, key, repo_slug, workspace)

Get a build status for a commit

Returns the specified build status for a commit.

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

api_instance = Bitbucket::CommitStatusesApi.new
commit = 'commit_example' # String | The commit's SHA1.
key = 'key_example' # String | The build status' unique key
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a build status for a commit
  result = api_instance.repositories_workspace_repo_slug_commit_commit_statuses_build_key_get(commit, key, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_commit_commit_statuses_build_key_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_statuses_build_key_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Commitstatus>, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_statuses_build_key_get_with_http_info(commit, key, repo_slug, workspace)

```ruby
begin
  # Get a build status for a commit
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_statuses_build_key_get_with_http_info(commit, key, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Commitstatus>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_commit_commit_statuses_build_key_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **key** | **String** | The build status&#39; unique key |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Commitstatus**](Commitstatus.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commit_commit_statuses_build_key_put

> <Commitstatus> repositories_workspace_repo_slug_commit_commit_statuses_build_key_put(commit, key, repo_slug, workspace, opts)

Update a build status for a commit

Used to update the current status of a build status object on the specific commit.  This operation can also be used to change other properties of the build status:  * `state` * `name` * `description` * `url` * `refname`  The `key` cannot be changed.

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

api_instance = Bitbucket::CommitStatusesApi.new
commit = 'commit_example' # String | The commit's SHA1.
key = 'key_example' # String | The build status' unique key
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  commitstatus: Bitbucket::Commitstatus.new({type: 'type_example'}) # Commitstatus | The updated build status object
}

begin
  # Update a build status for a commit
  result = api_instance.repositories_workspace_repo_slug_commit_commit_statuses_build_key_put(commit, key, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_commit_commit_statuses_build_key_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_statuses_build_key_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Commitstatus>, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_statuses_build_key_put_with_http_info(commit, key, repo_slug, workspace, opts)

```ruby
begin
  # Update a build status for a commit
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_statuses_build_key_put_with_http_info(commit, key, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Commitstatus>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_commit_commit_statuses_build_key_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **key** | **String** | The build status&#39; unique key |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **commitstatus** | [**Commitstatus**](Commitstatus.md) | The updated build status object | [optional] |

### Return type

[**Commitstatus**](Commitstatus.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_commit_commit_statuses_build_post

> <Commitstatus> repositories_workspace_repo_slug_commit_commit_statuses_build_post(commit, repo_slug, workspace, opts)

Create a build status for a commit

Creates a new build status against the specified commit.  If the specified key already exists, the existing status object will be overwritten.  Example:  ``` curl https://api.bitbucket.org/2.0/repositories/my-workspace/my-repo/commit/e10dae226959c2194f2b07b077c07762d93821cf/statuses/build/           -X POST -u jdoe -H 'Content-Type: application/json'           -d '{     \"key\": \"MY-BUILD\",     \"state\": \"SUCCESSFUL\",     \"description\": \"42 tests passed\",     \"url\": \"https://www.example.org/my-build-result\"   }' ```  When creating a new commit status, you can use a URI template for the URL. Templates are URLs that contain variable names that Bitbucket will evaluate at runtime whenever the URL is displayed anywhere similar to parameter substitution in [Bitbucket Connect](https://developer.atlassian.com/bitbucket/concepts/context-parameters.html). For example, one could use `https://foo.com/builds/{repository.full_name}` which Bitbucket will turn into `https://foo.com/builds/foo/bar` at render time. The context variables available are `repository` and `commit`.

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

api_instance = Bitbucket::CommitStatusesApi.new
commit = 'commit_example' # String | The commit's SHA1.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  commitstatus: Bitbucket::Commitstatus.new({type: 'type_example'}) # Commitstatus | The new commit status object.
}

begin
  # Create a build status for a commit
  result = api_instance.repositories_workspace_repo_slug_commit_commit_statuses_build_post(commit, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_commit_commit_statuses_build_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_statuses_build_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Commitstatus>, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_statuses_build_post_with_http_info(commit, repo_slug, workspace, opts)

```ruby
begin
  # Create a build status for a commit
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_statuses_build_post_with_http_info(commit, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Commitstatus>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_commit_commit_statuses_build_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **commitstatus** | [**Commitstatus**](Commitstatus.md) | The new commit status object. | [optional] |

### Return type

[**Commitstatus**](Commitstatus.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_commit_commit_statuses_get

> <PaginatedCommitstatuses> repositories_workspace_repo_slug_commit_commit_statuses_get(commit, repo_slug, workspace, opts)

List commit statuses for a commit

Returns all statuses (e.g. build results) for a specific commit.

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

api_instance = Bitbucket::CommitStatusesApi.new
commit = 'commit_example' # String | The commit's SHA1.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
  sort: 'sort_example' # String | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). Defaults to `created_on`. 
}

begin
  # List commit statuses for a commit
  result = api_instance.repositories_workspace_repo_slug_commit_commit_statuses_get(commit, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_commit_commit_statuses_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_statuses_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCommitstatuses>, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_statuses_get_with_http_info(commit, repo_slug, workspace, opts)

```ruby
begin
  # List commit statuses for a commit
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_statuses_get_with_http_info(commit, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCommitstatuses>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_commit_commit_statuses_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
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

api_instance = Bitbucket::CommitStatusesApi.new
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
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get: #{e}"
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
  puts "Error when calling CommitStatusesApi->repositories_workspace_repo_slug_pullrequests_pull_request_id_statuses_get_with_http_info: #{e}"
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

