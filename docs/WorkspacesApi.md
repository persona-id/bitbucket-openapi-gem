# Bitbucket::WorkspacesApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**user_permissions_workspaces_get**](WorkspacesApi.md#user_permissions_workspaces_get) | **GET** /user/permissions/workspaces | List workspaces for the current user |
| [**workspaces_get**](WorkspacesApi.md#workspaces_get) | **GET** /workspaces | List workspaces for user |
| [**workspaces_workspace_get**](WorkspacesApi.md#workspaces_workspace_get) | **GET** /workspaces/{workspace} | Get a workspace |
| [**workspaces_workspace_hooks_get**](WorkspacesApi.md#workspaces_workspace_hooks_get) | **GET** /workspaces/{workspace}/hooks | List webhooks for a workspace |
| [**workspaces_workspace_hooks_post**](WorkspacesApi.md#workspaces_workspace_hooks_post) | **POST** /workspaces/{workspace}/hooks | Create a webhook for a workspace |
| [**workspaces_workspace_hooks_uid_delete**](WorkspacesApi.md#workspaces_workspace_hooks_uid_delete) | **DELETE** /workspaces/{workspace}/hooks/{uid} | Delete a webhook for a workspace |
| [**workspaces_workspace_hooks_uid_get**](WorkspacesApi.md#workspaces_workspace_hooks_uid_get) | **GET** /workspaces/{workspace}/hooks/{uid} | Get a webhook for a workspace |
| [**workspaces_workspace_hooks_uid_put**](WorkspacesApi.md#workspaces_workspace_hooks_uid_put) | **PUT** /workspaces/{workspace}/hooks/{uid} | Update a webhook for a workspace |
| [**workspaces_workspace_members_get**](WorkspacesApi.md#workspaces_workspace_members_get) | **GET** /workspaces/{workspace}/members | List users in a workspace |
| [**workspaces_workspace_members_member_get**](WorkspacesApi.md#workspaces_workspace_members_member_get) | **GET** /workspaces/{workspace}/members/{member} | Get user membership for a workspace |
| [**workspaces_workspace_permissions_get**](WorkspacesApi.md#workspaces_workspace_permissions_get) | **GET** /workspaces/{workspace}/permissions | List user permissions in a workspace |
| [**workspaces_workspace_permissions_repositories_get**](WorkspacesApi.md#workspaces_workspace_permissions_repositories_get) | **GET** /workspaces/{workspace}/permissions/repositories | List all repository permissions for a workspace |
| [**workspaces_workspace_permissions_repositories_repo_slug_get**](WorkspacesApi.md#workspaces_workspace_permissions_repositories_repo_slug_get) | **GET** /workspaces/{workspace}/permissions/repositories/{repo_slug} | List a repository permissions for a workspace |
| [**workspaces_workspace_projects_get**](WorkspacesApi.md#workspaces_workspace_projects_get) | **GET** /workspaces/{workspace}/projects | List projects in a workspace |
| [**workspaces_workspace_projects_project_key_get**](WorkspacesApi.md#workspaces_workspace_projects_project_key_get) | **GET** /workspaces/{workspace}/projects/{project_key} | Get a project for a workspace |


## user_permissions_workspaces_get

> <PaginatedWorkspaceMemberships> user_permissions_workspaces_get(opts)

List workspaces for the current user

Returns an object for each workspace the caller is a member of, and their effective role - the highest level of privilege the caller has. If a user is a member of multiple groups with distinct roles, only the highest level is returned.  Permissions can be:  * `owner` * `collaborator` * `member`  **The `collaborator` role is being removed from the Bitbucket Cloud API. For more information, see the [deprecation announcement](/cloud/bitbucket/deprecation-notice-collaborator-role/).**  Example:  ``` $ curl https://api.bitbucket.org/2.0/user/permissions/workspaces  {   \"pagelen\": 10,   \"page\": 1,   \"size\": 1,   \"values\": [     {       \"type\": \"workspace_membership\",       \"permission\": \"owner\",       \"last_accessed\": \"2019-03-07T12:35:02.900024+00:00\",       \"added_on\": \"2018-10-11T17:42:02.961424+00:00\",       \"user\": {         \"type\": \"user\",         \"uuid\": \"{470c176d-3574-44ea-bb41-89e8638bcca4}\",         \"nickname\": \"evzijst\",         \"display_name\": \"Erik van Zijst\",       },       \"workspace\": {         \"type\": \"workspace\",         \"uuid\": \"{a15fb181-db1f-48f7-b41f-e1eff06929d6}\",         \"slug\": \"bbworkspace1\",         \"name\": \"Atlassian Bitbucket\",       }     }   ] } ```  Results may be further [filtered or sorted](/cloud/bitbucket/rest/intro/#filtering) by workspace or permission by adding the following query string parameters:  * `q=workspace.slug=\"bbworkspace1\"` or `q=permission=\"owner\"` * `sort=workspace.slug`  Note that the query parameter values need to be URL escaped so that `=` would become `%3D`.

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

api_instance = Bitbucket::WorkspacesApi.new
opts = {
  q: 'q_example', # String |  Query string to narrow down the response. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for details.
  sort: 'sort_example' # String |  Name of a response property to sort results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results) for details. 
}

begin
  # List workspaces for the current user
  result = api_instance.user_permissions_workspaces_get(opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->user_permissions_workspaces_get: #{e}"
end
```

#### Using the user_permissions_workspaces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWorkspaceMemberships>, Integer, Hash)> user_permissions_workspaces_get_with_http_info(opts)

```ruby
begin
  # List workspaces for the current user
  data, status_code, headers = api_instance.user_permissions_workspaces_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWorkspaceMemberships>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->user_permissions_workspaces_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** |  Query string to narrow down the response. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for details. | [optional] |
| **sort** | **String** |  Name of a response property to sort results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results) for details.  | [optional] |

### Return type

[**PaginatedWorkspaceMemberships**](PaginatedWorkspaceMemberships.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_get

> <PaginatedWorkspaces> workspaces_get(opts)

List workspaces for user

Returns a list of workspaces accessible by the authenticated user.  Example:  ``` $ curl https://api.bitbucket.org/2.0/workspaces  {   \"pagelen\": 10,   \"page\": 1,   \"size\": 1,   \"values\": [     {         \"uuid\": \"{a15fb181-db1f-48f7-b41f-e1eff06929d6}\",         \"links\": {             \"owners\": {                 \"href\": \"https://api.bitbucket.org/2.0/workspaces/bbworkspace1/members?q=permission%3D%22owner%22\"             },             \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/workspaces/bbworkspace1\"             },             \"repositories\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/bbworkspace1\"             },             \"snippets\": {                 \"href\": \"https://api.bitbucket.org/2.0/snippets/bbworkspace1\"             },             \"html\": {                 \"href\": \"https://bitbucket.org/bbworkspace1/\"             },             \"avatar\": {                 \"href\": \"https://bitbucket.org/workspaces/bbworkspace1/avatar/?ts=1543465801\"             },             \"members\": {                 \"href\": \"https://api.bitbucket.org/2.0/workspaces/bbworkspace1/members\"             },             \"projects\": {                 \"href\": \"https://api.bitbucket.org/2.0/workspaces/bbworkspace1/projects\"             }         },         \"created_on\": \"2018-11-14T19:15:05.058566+00:00\",         \"type\": \"workspace\",         \"slug\": \"bbworkspace1\",         \"is_private\": true,         \"name\": \"Atlassian Bitbucket\"     }   ] } ```  Results may be further [filtered or sorted](/cloud/bitbucket/rest/intro/#filtering) by workspace or permission by adding the following query string parameters:  * `q=slug=\"bbworkspace1\"` or `q=is_private=true` * `sort=created_on`  Note that the query parameter values need to be URL escaped so that `=` would become `%3D`.  **The `collaborator` role is being removed from the Bitbucket Cloud API. For more information, see the [deprecation announcement](/cloud/bitbucket/deprecation-notice-collaborator-role/).**

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

api_instance = Bitbucket::WorkspacesApi.new
opts = {
  role: 'owner', # String |              Filters the workspaces based on the authenticated user's role on each workspace.              * **member**: returns a list of all the workspaces which the caller is a member of                 at least one workspace group or repository             * **collaborator**: returns a list of workspaces which the caller has write access                 to at least one repository in the workspace             * **owner**: returns a list of workspaces which the caller has administrator access             
  q: 'q_example', # String |  Query string to narrow down the response. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for details.
  sort: 'sort_example' # String |  Name of a response property to sort results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results) for details. 
}

begin
  # List workspaces for user
  result = api_instance.workspaces_get(opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_get: #{e}"
end
```

#### Using the workspaces_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWorkspaces>, Integer, Hash)> workspaces_get_with_http_info(opts)

```ruby
begin
  # List workspaces for user
  data, status_code, headers = api_instance.workspaces_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWorkspaces>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** |              Filters the workspaces based on the authenticated user&#39;s role on each workspace.              * **member**: returns a list of all the workspaces which the caller is a member of                 at least one workspace group or repository             * **collaborator**: returns a list of workspaces which the caller has write access                 to at least one repository in the workspace             * **owner**: returns a list of workspaces which the caller has administrator access              | [optional] |
| **q** | **String** |  Query string to narrow down the response. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for details. | [optional] |
| **sort** | **String** |  Name of a response property to sort results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results) for details.  | [optional] |

### Return type

[**PaginatedWorkspaces**](PaginatedWorkspaces.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_get

> <Workspace> workspaces_workspace_get(workspace)

Get a workspace

Returns the requested workspace.

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

api_instance = Bitbucket::WorkspacesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a workspace
  result = api_instance.workspaces_workspace_get(workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_get: #{e}"
end
```

#### Using the workspaces_workspace_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Workspace>, Integer, Hash)> workspaces_workspace_get_with_http_info(workspace)

```ruby
begin
  # Get a workspace
  data, status_code, headers = api_instance.workspaces_workspace_get_with_http_info(workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Workspace>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Workspace**](Workspace.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_hooks_get

> <PaginatedWebhookSubscriptions> workspaces_workspace_hooks_get(workspace)

List webhooks for a workspace

Returns a paginated list of webhooks installed on this workspace.

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

api_instance = Bitbucket::WorkspacesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List webhooks for a workspace
  result = api_instance.workspaces_workspace_hooks_get(workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_get: #{e}"
end
```

#### Using the workspaces_workspace_hooks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWebhookSubscriptions>, Integer, Hash)> workspaces_workspace_hooks_get_with_http_info(workspace)

```ruby
begin
  # List webhooks for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_hooks_get_with_http_info(workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWebhookSubscriptions>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedWebhookSubscriptions**](PaginatedWebhookSubscriptions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_hooks_post

> <WebhookSubscription> workspaces_workspace_hooks_post(workspace)

Create a webhook for a workspace

Creates a new webhook on the specified workspace.  Workspace webhooks are fired for events from all repositories contained by that workspace.  Example:  ``` $ curl -X POST -u credentials -H 'Content-Type: application/json'   https://api.bitbucket.org/2.0/workspaces/my-workspace/hooks   -d '     {       \"description\": \"Webhook Description\",       \"url\": \"https://example.com/\",       \"active\": true,       \"events\": [         \"repo:push\",         \"issue:created\",         \"issue:updated\"       ]     }' ```  This call requires the webhook scope, as well as any scope that applies to the events that the webhook subscribes to. In the example above that means: `webhook`, `repository` and `issue`.  The `url` must properly resolve and cannot be an internal, non-routed address.  Only workspace owners can install webhooks on workspaces.

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

api_instance = Bitbucket::WorkspacesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Create a webhook for a workspace
  result = api_instance.workspaces_workspace_hooks_post(workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_post: #{e}"
end
```

#### Using the workspaces_workspace_hooks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> workspaces_workspace_hooks_post_with_http_info(workspace)

```ruby
begin
  # Create a webhook for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_hooks_post_with_http_info(workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_hooks_uid_delete

> workspaces_workspace_hooks_uid_delete(uid, workspace)

Delete a webhook for a workspace

Deletes the specified webhook subscription from the given workspace.

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

api_instance = Bitbucket::WorkspacesApi.new
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a webhook for a workspace
  api_instance.workspaces_workspace_hooks_uid_delete(uid, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_uid_delete: #{e}"
end
```

#### Using the workspaces_workspace_hooks_uid_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workspaces_workspace_hooks_uid_delete_with_http_info(uid, workspace)

```ruby
begin
  # Delete a webhook for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_hooks_uid_delete_with_http_info(uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_uid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_hooks_uid_get

> <WebhookSubscription> workspaces_workspace_hooks_uid_get(uid, workspace)

Get a webhook for a workspace

Returns the webhook with the specified id installed on the given workspace.

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

api_instance = Bitbucket::WorkspacesApi.new
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a webhook for a workspace
  result = api_instance.workspaces_workspace_hooks_uid_get(uid, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_uid_get: #{e}"
end
```

#### Using the workspaces_workspace_hooks_uid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> workspaces_workspace_hooks_uid_get_with_http_info(uid, workspace)

```ruby
begin
  # Get a webhook for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_hooks_uid_get_with_http_info(uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_uid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_hooks_uid_put

> <WebhookSubscription> workspaces_workspace_hooks_uid_put(uid, workspace)

Update a webhook for a workspace

Updates the specified webhook subscription.  The following properties can be mutated:  * `description` * `url` * `active` * `events`

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

api_instance = Bitbucket::WorkspacesApi.new
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update a webhook for a workspace
  result = api_instance.workspaces_workspace_hooks_uid_put(uid, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_uid_put: #{e}"
end
```

#### Using the workspaces_workspace_hooks_uid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> workspaces_workspace_hooks_uid_put_with_http_info(uid, workspace)

```ruby
begin
  # Update a webhook for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_hooks_uid_put_with_http_info(uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_hooks_uid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_members_get

> <PaginatedWorkspaceMemberships> workspaces_workspace_members_get(workspace)

List users in a workspace

Returns all members of the requested workspace.

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

api_instance = Bitbucket::WorkspacesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List users in a workspace
  result = api_instance.workspaces_workspace_members_get(workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_members_get: #{e}"
end
```

#### Using the workspaces_workspace_members_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWorkspaceMemberships>, Integer, Hash)> workspaces_workspace_members_get_with_http_info(workspace)

```ruby
begin
  # List users in a workspace
  data, status_code, headers = api_instance.workspaces_workspace_members_get_with_http_info(workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWorkspaceMemberships>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_members_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedWorkspaceMemberships**](PaginatedWorkspaceMemberships.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_members_member_get

> <WorkspaceMembership> workspaces_workspace_members_member_get(member, workspace)

Get user membership for a workspace

Returns the workspace membership, which includes a `User` object for the member and a `Workspace` object for the requested workspace.

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

api_instance = Bitbucket::WorkspacesApi.new
member = 'member_example' # String | Member's UUID or Atlassian ID.
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get user membership for a workspace
  result = api_instance.workspaces_workspace_members_member_get(member, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_members_member_get: #{e}"
end
```

#### Using the workspaces_workspace_members_member_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkspaceMembership>, Integer, Hash)> workspaces_workspace_members_member_get_with_http_info(member, workspace)

```ruby
begin
  # Get user membership for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_members_member_get_with_http_info(member, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkspaceMembership>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_members_member_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **member** | **String** | Member&#39;s UUID or Atlassian ID. |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WorkspaceMembership**](WorkspaceMembership.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_permissions_get

> <PaginatedWorkspaceMemberships> workspaces_workspace_permissions_get(workspace, opts)

List user permissions in a workspace

Returns the list of members in a workspace and their permission levels. Permission can be: * `owner` * `collaborator` * `member`  **The `collaborator` role is being removed from the Bitbucket Cloud API. For more information, see the [deprecation announcement](/cloud/bitbucket/deprecation-notice-collaborator-role/).**  Example:  ``` $ curl -X https://api.bitbucket.org/2.0/workspaces/bbworkspace1/permissions  {     \"pagelen\": 10,     \"values\": [         {             \"permission\": \"owner\",             \"type\": \"workspace_membership\",             \"user\": {                 \"type\": \"user\",                 \"uuid\": \"{470c176d-3574-44ea-bb41-89e8638bcca4}\",                 \"display_name\": \"Erik van Zijst\",             },             \"workspace\": {                 \"type\": \"workspace\",                 \"uuid\": \"{a15fb181-db1f-48f7-b41f-e1eff06929d6}\",                 \"slug\": \"bbworkspace1\",                 \"name\": \"Atlassian Bitbucket\",             }         },         {             \"permission\": \"member\",             \"type\": \"workspace_membership\",             \"user\": {                 \"type\": \"user\",                 \"nickname\": \"seanaty\",                 \"display_name\": \"Sean Conaty\",                 \"uuid\": \"{504c3b62-8120-4f0c-a7bc-87800b9d6f70}\"             },             \"workspace\": {                 \"type\": \"workspace\",                 \"uuid\": \"{a15fb181-db1f-48f7-b41f-e1eff06929d6}\",                 \"slug\": \"bbworkspace1\",                 \"name\": \"Atlassian Bitbucket\",             }         }     ],     \"page\": 1,     \"size\": 2 } ```  Results may be further [filtered](/cloud/bitbucket/rest/intro/#filtering) by permission by adding the following query string parameters:  * `q=permission=\"owner\"`

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

api_instance = Bitbucket::WorkspacesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example' # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
}

begin
  # List user permissions in a workspace
  result = api_instance.workspaces_workspace_permissions_get(workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_permissions_get: #{e}"
end
```

#### Using the workspaces_workspace_permissions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWorkspaceMemberships>, Integer, Hash)> workspaces_workspace_permissions_get_with_http_info(workspace, opts)

```ruby
begin
  # List user permissions in a workspace
  data, status_code, headers = api_instance.workspaces_workspace_permissions_get_with_http_info(workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWorkspaceMemberships>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_permissions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |

### Return type

[**PaginatedWorkspaceMemberships**](PaginatedWorkspaceMemberships.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_permissions_repositories_get

> <PaginatedRepositoryPermissions> workspaces_workspace_permissions_repositories_get(workspace, opts)

List all repository permissions for a workspace

Returns an object for each repository permission for all of a workspace's repositories.  Permissions returned are effective permissions: the highest level of permission the user has. This does not distinguish between direct and indirect (group) privileges.  Only users with admin permission for the team may access this resource.  Permissions can be:  * `admin` * `write` * `read`  Example:  ``` $ curl https://api.bitbucket.org/2.0/workspaces/atlassian_tutorial/permissions/repositories  {   \"pagelen\": 10,   \"values\": [     {       \"type\": \"repository_permission\",       \"user\": {         \"type\": \"user\",         \"display_name\": \"Erik van Zijst\",         \"uuid\": \"{d301aafa-d676-4ee0-88be-962be7417567}\"       },       \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"atlassian_tutorial/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"       },       \"permission\": \"admin\"     },     {       \"type\": \"repository_permission\",       \"user\": {         \"type\": \"user\",         \"display_name\": \"Sean Conaty\",         \"uuid\": \"{504c3b62-8120-4f0c-a7bc-87800b9d6f70}\"       },       \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"atlassian_tutorial/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"       },       \"permission\": \"write\"     },     {       \"type\": \"repository_permission\",       \"user\": {         \"type\": \"user\",         \"display_name\": \"Jeff Zeng\",         \"uuid\": \"{47f92a9a-c3a3-4d0b-bc4e-782a969c5c72}\"       },       \"repository\": {         \"type\": \"repository\",         \"name\": \"whee\",         \"full_name\": \"atlassian_tutorial/whee\",         \"uuid\": \"{30ba25e9-51ff-4555-8dd0-fc7ee2fa0895}\"       },       \"permission\": \"admin\"     }   ],   \"page\": 1,   \"size\": 3 } ```  Results may be further [filtered or sorted](/cloud/bitbucket/rest/intro/#filtering) by repository, user, or permission by adding the following query string parameters:  * `q=repository.name=\"geordi\"` or `q=permission>\"read\"` * `sort=user.display_name`  Note that the query parameter values need to be URL escaped so that `=` would become `%3D`.

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

api_instance = Bitbucket::WorkspacesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
  sort: 'sort_example' # String |  Name of a response property sort the result by as per [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results). 
}

begin
  # List all repository permissions for a workspace
  result = api_instance.workspaces_workspace_permissions_repositories_get(workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_permissions_repositories_get: #{e}"
end
```

#### Using the workspaces_workspace_permissions_repositories_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRepositoryPermissions>, Integer, Hash)> workspaces_workspace_permissions_repositories_get_with_http_info(workspace, opts)

```ruby
begin
  # List all repository permissions for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_permissions_repositories_get_with_http_info(workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRepositoryPermissions>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_permissions_repositories_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |
| **sort** | **String** |  Name of a response property sort the result by as per [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results).  | [optional] |

### Return type

[**PaginatedRepositoryPermissions**](PaginatedRepositoryPermissions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_permissions_repositories_repo_slug_get

> <PaginatedRepositoryPermissions> workspaces_workspace_permissions_repositories_repo_slug_get(repo_slug, workspace, opts)

List a repository permissions for a workspace

Returns an object for the repository permission of each user in the requested repository.  Permissions returned are effective permissions: the highest level of permission the user has. This does not distinguish between direct and indirect (group) privileges.  Only users with admin permission for the repository may access this resource.  Permissions can be:  * `admin` * `write` * `read`  Example:  ``` $ curl https://api.bitbucket.org/2.0/workspaces/atlassian_tutorial/permissions/repositories/geordi  {   \"pagelen\": 10,   \"values\": [     {       \"type\": \"repository_permission\",       \"user\": {         \"type\": \"user\",         \"display_name\": \"Erik van Zijst\",         \"uuid\": \"{d301aafa-d676-4ee0-88be-962be7417567}\"       },       \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"atlassian_tutorial/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"       },       \"permission\": \"admin\"     },     {       \"type\": \"repository_permission\",       \"user\": {         \"type\": \"user\",         \"display_name\": \"Sean Conaty\",         \"uuid\": \"{504c3b62-8120-4f0c-a7bc-87800b9d6f70}\"       },       \"repository\": {         \"type\": \"repository\",         \"name\": \"geordi\",         \"full_name\": \"atlassian_tutorial/geordi\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"       },       \"permission\": \"write\"     }   ],   \"page\": 1,   \"size\": 2 } ```  Results may be further [filtered or sorted](/cloud/bitbucket/rest/intro/#filtering) by user, or permission by adding the following query string parameters:  * `q=permission>\"read\"` * `sort=user.display_name`  Note that the query parameter values need to be URL escaped so that `=` would become `%3D`.

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

api_instance = Bitbucket::WorkspacesApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
  sort: 'sort_example' # String |  Name of a response property sort the result by as per [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results). 
}

begin
  # List a repository permissions for a workspace
  result = api_instance.workspaces_workspace_permissions_repositories_repo_slug_get(repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_permissions_repositories_repo_slug_get: #{e}"
end
```

#### Using the workspaces_workspace_permissions_repositories_repo_slug_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedRepositoryPermissions>, Integer, Hash)> workspaces_workspace_permissions_repositories_repo_slug_get_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # List a repository permissions for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_permissions_repositories_repo_slug_get_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedRepositoryPermissions>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_permissions_repositories_repo_slug_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |
| **sort** | **String** |  Name of a response property sort the result by as per [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results).  | [optional] |

### Return type

[**PaginatedRepositoryPermissions**](PaginatedRepositoryPermissions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_get

> <PaginatedProjects> workspaces_workspace_projects_get(workspace)

List projects in a workspace

Returns the list of projects in this workspace.

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

api_instance = Bitbucket::WorkspacesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List projects in a workspace
  result = api_instance.workspaces_workspace_projects_get(workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_projects_get: #{e}"
end
```

#### Using the workspaces_workspace_projects_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedProjects>, Integer, Hash)> workspaces_workspace_projects_get_with_http_info(workspace)

```ruby
begin
  # List projects in a workspace
  data, status_code, headers = api_instance.workspaces_workspace_projects_get_with_http_info(workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedProjects>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_projects_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedProjects**](PaginatedProjects.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_project_key_get

> <Project> workspaces_workspace_projects_project_key_get(project_key, workspace)

Get a project for a workspace

Returns the requested project.

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

api_instance = Bitbucket::WorkspacesApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a project for a workspace
  result = api_instance.workspaces_workspace_projects_project_key_get(project_key, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_projects_project_key_get: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> workspaces_workspace_projects_project_key_get_with_http_info(project_key, workspace)

```ruby
begin
  # Get a project for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_get_with_http_info(project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue Bitbucket::ApiError => e
  puts "Error when calling WorkspacesApi->workspaces_workspace_projects_project_key_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Project**](Project.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

