# Bitbucket::WebhooksApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**hook_events_get**](WebhooksApi.md#hook_events_get) | **GET** /hook_events | Get a webhook resource |
| [**hook_events_subject_type_get**](WebhooksApi.md#hook_events_subject_type_get) | **GET** /hook_events/{subject_type} | List subscribable webhook types |
| [**repositories_workspace_repo_slug_hooks_get**](WebhooksApi.md#repositories_workspace_repo_slug_hooks_get) | **GET** /repositories/{workspace}/{repo_slug}/hooks | List webhooks for a repository |
| [**repositories_workspace_repo_slug_hooks_post**](WebhooksApi.md#repositories_workspace_repo_slug_hooks_post) | **POST** /repositories/{workspace}/{repo_slug}/hooks | Create a webhook for a repository |
| [**repositories_workspace_repo_slug_hooks_uid_delete**](WebhooksApi.md#repositories_workspace_repo_slug_hooks_uid_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/hooks/{uid} | Delete a webhook for a repository |
| [**repositories_workspace_repo_slug_hooks_uid_get**](WebhooksApi.md#repositories_workspace_repo_slug_hooks_uid_get) | **GET** /repositories/{workspace}/{repo_slug}/hooks/{uid} | Get a webhook for a repository |
| [**repositories_workspace_repo_slug_hooks_uid_put**](WebhooksApi.md#repositories_workspace_repo_slug_hooks_uid_put) | **PUT** /repositories/{workspace}/{repo_slug}/hooks/{uid} | Update a webhook for a repository |
| [**workspaces_workspace_hooks_get**](WebhooksApi.md#workspaces_workspace_hooks_get) | **GET** /workspaces/{workspace}/hooks | List webhooks for a workspace |
| [**workspaces_workspace_hooks_post**](WebhooksApi.md#workspaces_workspace_hooks_post) | **POST** /workspaces/{workspace}/hooks | Create a webhook for a workspace |
| [**workspaces_workspace_hooks_uid_delete**](WebhooksApi.md#workspaces_workspace_hooks_uid_delete) | **DELETE** /workspaces/{workspace}/hooks/{uid} | Delete a webhook for a workspace |
| [**workspaces_workspace_hooks_uid_get**](WebhooksApi.md#workspaces_workspace_hooks_uid_get) | **GET** /workspaces/{workspace}/hooks/{uid} | Get a webhook for a workspace |
| [**workspaces_workspace_hooks_uid_put**](WebhooksApi.md#workspaces_workspace_hooks_uid_put) | **PUT** /workspaces/{workspace}/hooks/{uid} | Update a webhook for a workspace |


## hook_events_get

> <SubjectTypes> hook_events_get

Get a webhook resource

Returns the webhook resource or subject types on which webhooks can be registered.  Each resource/subject type contains an `events` link that returns the paginated list of specific events each individual subject type can emit.  This endpoint is publicly accessible and does not require authentication or scopes.  Example:  ``` $ curl https://api.bitbucket.org/2.0/hook_events  {     \"repository\": {         \"links\": {             \"events\": {                 \"href\": \"https://api.bitbucket.org/2.0/hook_events/repository\"             }         }     },     \"workspace\": {         \"links\": {             \"events\": {                 \"href\": \"https://api.bitbucket.org/2.0/hook_events/workspace\"             }         }     } } ```

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

api_instance = Bitbucket::WebhooksApi.new

begin
  # Get a webhook resource
  result = api_instance.hook_events_get
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->hook_events_get: #{e}"
end
```

#### Using the hook_events_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubjectTypes>, Integer, Hash)> hook_events_get_with_http_info

```ruby
begin
  # Get a webhook resource
  data, status_code, headers = api_instance.hook_events_get_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubjectTypes>
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->hook_events_get_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SubjectTypes**](SubjectTypes.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## hook_events_subject_type_get

> <PaginatedHookEvents> hook_events_subject_type_get(subject_type)

List subscribable webhook types

Returns a paginated list of all valid webhook events for the specified entity. **The team and user webhooks are deprecated, and you should use workspace instead. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).**  This is public data that does not require any scopes or authentication.  Example:  NOTE: The following example is a truncated response object for the `workspace` `subject_type`. We return the same structure for the other `subject_type` objects.  ``` $ curl https://api.bitbucket.org/2.0/hook_events/workspace {     \"page\": 1,     \"pagelen\": 30,     \"size\": 21,     \"values\": [         {             \"category\": \"Repository\",             \"description\": \"Whenever a repository push occurs\",             \"event\": \"repo:push\",             \"label\": \"Push\"         },         {             \"category\": \"Repository\",             \"description\": \"Whenever a repository fork occurs\",             \"event\": \"repo:fork\",             \"label\": \"Fork\"         },         {             \"category\": \"Repository\",             \"description\": \"Whenever a repository import occurs\",             \"event\": \"repo:imported\",             \"label\": \"Import\"         },         ...         {             \"category\":\"Pull Request\",             \"label\":\"Approved\",             \"description\":\"When someone has approved a pull request\",             \"event\":\"pullrequest:approved\"         },     ] } ```

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

api_instance = Bitbucket::WebhooksApi.new
subject_type = 'repository' # String | A resource or subject type.

begin
  # List subscribable webhook types
  result = api_instance.hook_events_subject_type_get(subject_type)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->hook_events_subject_type_get: #{e}"
end
```

#### Using the hook_events_subject_type_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedHookEvents>, Integer, Hash)> hook_events_subject_type_get_with_http_info(subject_type)

```ruby
begin
  # List subscribable webhook types
  data, status_code, headers = api_instance.hook_events_subject_type_get_with_http_info(subject_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedHookEvents>
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->hook_events_subject_type_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_type** | **String** | A resource or subject type. |  |

### Return type

[**PaginatedHookEvents**](PaginatedHookEvents.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_get

> <PaginatedWebhookSubscriptions> repositories_workspace_repo_slug_hooks_get(repo_slug, workspace)

List webhooks for a repository

Returns a paginated list of webhooks installed on this repository.

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

api_instance = Bitbucket::WebhooksApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List webhooks for a repository
  result = api_instance.repositories_workspace_repo_slug_hooks_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedWebhookSubscriptions>, Integer, Hash)> repositories_workspace_repo_slug_hooks_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List webhooks for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedWebhookSubscriptions>
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedWebhookSubscriptions**](PaginatedWebhookSubscriptions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_post

> <WebhookSubscription> repositories_workspace_repo_slug_hooks_post(repo_slug, workspace)

Create a webhook for a repository

Creates a new webhook on the specified repository.  Example:  ``` $ curl -X POST -u credentials -H 'Content-Type: application/json'   https://api.bitbucket.org/2.0/repositories/my-workspace/my-repo-slug/hooks   -d '     {       \"description\": \"Webhook Description\",       \"url\": \"https://example.com/\",       \"active\": true,       \"events\": [         \"repo:push\",         \"issue:created\",         \"issue:updated\"       ]     }' ```  Note that this call requires the webhook scope, as well as any scope that applies to the events that the webhook subscribes to. In the example above that means: `webhook`, `repository` and `issue`.  Also note that the `url` must properly resolve and cannot be an internal, non-routed address.

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

api_instance = Bitbucket::WebhooksApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Create a webhook for a repository
  result = api_instance.repositories_workspace_repo_slug_hooks_post(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> repositories_workspace_repo_slug_hooks_post_with_http_info(repo_slug, workspace)

```ruby
begin
  # Create a webhook for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_post_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_uid_delete

> repositories_workspace_repo_slug_hooks_uid_delete(repo_slug, uid, workspace)

Delete a webhook for a repository

Deletes the specified webhook subscription from the given repository.

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

api_instance = Bitbucket::WebhooksApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a webhook for a repository
  api_instance.repositories_workspace_repo_slug_hooks_uid_delete(repo_slug, uid, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_uid_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_uid_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_hooks_uid_delete_with_http_info(repo_slug, uid, workspace)

```ruby
begin
  # Delete a webhook for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_uid_delete_with_http_info(repo_slug, uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_uid_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_uid_get

> <WebhookSubscription> repositories_workspace_repo_slug_hooks_uid_get(repo_slug, uid, workspace)

Get a webhook for a repository

Returns the webhook with the specified id installed on the specified repository.

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

api_instance = Bitbucket::WebhooksApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a webhook for a repository
  result = api_instance.repositories_workspace_repo_slug_hooks_uid_get(repo_slug, uid, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_uid_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_uid_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> repositories_workspace_repo_slug_hooks_uid_get_with_http_info(repo_slug, uid, workspace)

```ruby
begin
  # Get a webhook for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_uid_get_with_http_info(repo_slug, uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_uid_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_hooks_uid_put

> <WebhookSubscription> repositories_workspace_repo_slug_hooks_uid_put(repo_slug, uid, workspace)

Update a webhook for a repository

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

api_instance = Bitbucket::WebhooksApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update a webhook for a repository
  result = api_instance.repositories_workspace_repo_slug_hooks_uid_put(repo_slug, uid, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_uid_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_hooks_uid_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSubscription>, Integer, Hash)> repositories_workspace_repo_slug_hooks_uid_put_with_http_info(repo_slug, uid, workspace)

```ruby
begin
  # Update a webhook for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_hooks_uid_put_with_http_info(repo_slug, uid, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSubscription>
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->repositories_workspace_repo_slug_hooks_uid_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **uid** | **String** | Installed webhook&#39;s ID |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

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

api_instance = Bitbucket::WebhooksApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List webhooks for a workspace
  result = api_instance.workspaces_workspace_hooks_get(workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_get: #{e}"
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
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_get_with_http_info: #{e}"
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

api_instance = Bitbucket::WebhooksApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Create a webhook for a workspace
  result = api_instance.workspaces_workspace_hooks_post(workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_post: #{e}"
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
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_post_with_http_info: #{e}"
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

api_instance = Bitbucket::WebhooksApi.new
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a webhook for a workspace
  api_instance.workspaces_workspace_hooks_uid_delete(uid, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_uid_delete: #{e}"
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
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_uid_delete_with_http_info: #{e}"
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

api_instance = Bitbucket::WebhooksApi.new
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a webhook for a workspace
  result = api_instance.workspaces_workspace_hooks_uid_get(uid, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_uid_get: #{e}"
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
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_uid_get_with_http_info: #{e}"
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

api_instance = Bitbucket::WebhooksApi.new
uid = 'uid_example' # String | Installed webhook's ID
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update a webhook for a workspace
  result = api_instance.workspaces_workspace_hooks_uid_put(uid, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_uid_put: #{e}"
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
  puts "Error when calling WebhooksApi->workspaces_workspace_hooks_uid_put_with_http_info: #{e}"
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

