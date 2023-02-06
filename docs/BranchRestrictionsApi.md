# Bitbucket::BranchRestrictionsApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**repositories_workspace_repo_slug_branch_restrictions_get**](BranchRestrictionsApi.md#repositories_workspace_repo_slug_branch_restrictions_get) | **GET** /repositories/{workspace}/{repo_slug}/branch-restrictions | List branch restrictions |
| [**repositories_workspace_repo_slug_branch_restrictions_id_delete**](BranchRestrictionsApi.md#repositories_workspace_repo_slug_branch_restrictions_id_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/branch-restrictions/{id} | Delete a branch restriction rule |
| [**repositories_workspace_repo_slug_branch_restrictions_id_get**](BranchRestrictionsApi.md#repositories_workspace_repo_slug_branch_restrictions_id_get) | **GET** /repositories/{workspace}/{repo_slug}/branch-restrictions/{id} | Get a branch restriction rule |
| [**repositories_workspace_repo_slug_branch_restrictions_id_put**](BranchRestrictionsApi.md#repositories_workspace_repo_slug_branch_restrictions_id_put) | **PUT** /repositories/{workspace}/{repo_slug}/branch-restrictions/{id} | Update a branch restriction rule |
| [**repositories_workspace_repo_slug_branch_restrictions_post**](BranchRestrictionsApi.md#repositories_workspace_repo_slug_branch_restrictions_post) | **POST** /repositories/{workspace}/{repo_slug}/branch-restrictions | Create a branch restriction rule |


## repositories_workspace_repo_slug_branch_restrictions_get

> <PaginatedBranchrestrictions> repositories_workspace_repo_slug_branch_restrictions_get(repo_slug, workspace, opts)

List branch restrictions

Returns a paginated list of all branch restrictions on the repository.

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

api_instance = Bitbucket::BranchRestrictionsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  kind: 'kind_example', # String | Branch restrictions of this type
  pattern: 'pattern_example' # String | Branch restrictions applied to branches of this pattern
}

begin
  # List branch restrictions
  result = api_instance.repositories_workspace_repo_slug_branch_restrictions_get(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_branch_restrictions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedBranchrestrictions>, Integer, Hash)> repositories_workspace_repo_slug_branch_restrictions_get_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # List branch restrictions
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_branch_restrictions_get_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedBranchrestrictions>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **kind** | **String** | Branch restrictions of this type | [optional] |
| **pattern** | **String** | Branch restrictions applied to branches of this pattern | [optional] |

### Return type

[**PaginatedBranchrestrictions**](PaginatedBranchrestrictions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_branch_restrictions_id_delete

> repositories_workspace_repo_slug_branch_restrictions_id_delete(id, repo_slug, workspace)

Delete a branch restriction rule

Deletes an existing branch restriction rule.

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

api_instance = Bitbucket::BranchRestrictionsApi.new
id = 'id_example' # String | The restriction rule's id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a branch restriction rule
  api_instance.repositories_workspace_repo_slug_branch_restrictions_id_delete(id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_id_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_branch_restrictions_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_branch_restrictions_id_delete_with_http_info(id, repo_slug, workspace)

```ruby
begin
  # Delete a branch restriction rule
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_branch_restrictions_id_delete_with_http_info(id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The restriction rule&#39;s id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_branch_restrictions_id_get

> <Branchrestriction> repositories_workspace_repo_slug_branch_restrictions_id_get(id, repo_slug, workspace)

Get a branch restriction rule

Returns a specific branch restriction rule.

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

api_instance = Bitbucket::BranchRestrictionsApi.new
id = 'id_example' # String | The restriction rule's id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a branch restriction rule
  result = api_instance.repositories_workspace_repo_slug_branch_restrictions_id_get(id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_branch_restrictions_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Branchrestriction>, Integer, Hash)> repositories_workspace_repo_slug_branch_restrictions_id_get_with_http_info(id, repo_slug, workspace)

```ruby
begin
  # Get a branch restriction rule
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_branch_restrictions_id_get_with_http_info(id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Branchrestriction>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The restriction rule&#39;s id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Branchrestriction**](Branchrestriction.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_branch_restrictions_id_put

> <Branchrestriction> repositories_workspace_repo_slug_branch_restrictions_id_put(id, repo_slug, workspace, branchrestriction)

Update a branch restriction rule

Updates an existing branch restriction rule.  Fields not present in the request body are ignored.  See [`POST`](/cloud/bitbucket/rest/api-group-branch-restrictions/#api-repositories-workspace-repo-slug-branch-restrictions-post) for details.

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

api_instance = Bitbucket::BranchRestrictionsApi.new
id = 'id_example' # String | The restriction rule's id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
branchrestriction = Bitbucket::Branchrestriction.new({type: 'type_example'}) # Branchrestriction | The new version of the existing rule

begin
  # Update a branch restriction rule
  result = api_instance.repositories_workspace_repo_slug_branch_restrictions_id_put(id, repo_slug, workspace, branchrestriction)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_id_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_branch_restrictions_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Branchrestriction>, Integer, Hash)> repositories_workspace_repo_slug_branch_restrictions_id_put_with_http_info(id, repo_slug, workspace, branchrestriction)

```ruby
begin
  # Update a branch restriction rule
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_branch_restrictions_id_put_with_http_info(id, repo_slug, workspace, branchrestriction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Branchrestriction>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The restriction rule&#39;s id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **branchrestriction** | [**Branchrestriction**](Branchrestriction.md) | The new version of the existing rule |  |

### Return type

[**Branchrestriction**](Branchrestriction.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_branch_restrictions_post

> <Branchrestriction> repositories_workspace_repo_slug_branch_restrictions_post(repo_slug, workspace, branchrestriction)

Create a branch restriction rule

Creates a new branch restriction rule for a repository.  `kind` describes what will be restricted. Allowed values include: `push`, `force`, `delete` and `restrict_merges`.  Different kinds of branch restrictions have different requirements:  * `push` and `restrict_merges` require `users` and `groups` to be   specified. Empty lists are allowed, in which case permission is   denied for everybody.  The restriction applies to all branches that match. There are two ways to match a branch. It is configured in `branch_match_kind`:  1. `glob`: Matches a branch against the `pattern`. A `'*'` in    `pattern` will expand to match zero or more characters, and every    other character matches itself. For example, `'foo*'` will match    `'foo'` and `'foobar'`, but not `'barfoo'`. `'*'` will match all    branches. 2. `branching_model`: Matches a branch against the repository's    branching model. The `branch_type` controls the type of branch    to match. Allowed values include: `production`, `development`,    `bugfix`, `release`, `feature` and `hotfix`.  The combination of `kind` and match must be unique. This means that two `glob` restrictions in a repository cannot have the same `kind` and `pattern`. Additionally, two `branching_model` restrictions in a repository cannot have the same `kind` and `branch_type`.  `users` and `groups` are lists of users and groups that are except from the restriction. They can only be configured in `push` and `restrict_merges` restrictions. The `push` restriction stops a user pushing to matching branches unless that user is in `users` or is a member of a group in `groups`. The `restrict_merges` stops a user merging pull requests to matching branches unless that user is in `users` or is a member of a group in `groups`. Adding new users or groups to an existing restriction should be done via `PUT`.  Note that branch restrictions with overlapping matchers is allowed, but the resulting behavior may be surprising.

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

api_instance = Bitbucket::BranchRestrictionsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
branchrestriction = Bitbucket::Branchrestriction.new({type: 'type_example'}) # Branchrestriction | The new rule

begin
  # Create a branch restriction rule
  result = api_instance.repositories_workspace_repo_slug_branch_restrictions_post(repo_slug, workspace, branchrestriction)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_branch_restrictions_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Branchrestriction>, Integer, Hash)> repositories_workspace_repo_slug_branch_restrictions_post_with_http_info(repo_slug, workspace, branchrestriction)

```ruby
begin
  # Create a branch restriction rule
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_branch_restrictions_post_with_http_info(repo_slug, workspace, branchrestriction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Branchrestriction>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchRestrictionsApi->repositories_workspace_repo_slug_branch_restrictions_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **branchrestriction** | [**Branchrestriction**](Branchrestriction.md) | The new rule |  |

### Return type

[**Branchrestriction**](Branchrestriction.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

