# Bitbucket::PropertiesApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_commit_hosted_property_value**](PropertiesApi.md#delete_commit_hosted_property_value) | **DELETE** /repositories/{workspace}/{repo_slug}/commit/{commit}/properties/{app_key}/{property_name} | Delete a commit application property |
| [**delete_pull_request_hosted_property_value**](PropertiesApi.md#delete_pull_request_hosted_property_value) | **DELETE** /repositories/{workspace}/{repo_slug}/pullrequests/{pullrequest_id}/properties/{app_key}/{property_name} | Delete a pull request application property |
| [**delete_repository_hosted_property_value**](PropertiesApi.md#delete_repository_hosted_property_value) | **DELETE** /repositories/{workspace}/{repo_slug}/properties/{app_key}/{property_name} | Delete a repository application property |
| [**delete_user_hosted_property_value**](PropertiesApi.md#delete_user_hosted_property_value) | **DELETE** /users/{selected_user}/properties/{app_key}/{property_name} | Delete a user application property |
| [**get_commit_hosted_property_value**](PropertiesApi.md#get_commit_hosted_property_value) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/properties/{app_key}/{property_name} | Get a commit application property |
| [**get_pull_request_hosted_property_value**](PropertiesApi.md#get_pull_request_hosted_property_value) | **GET** /repositories/{workspace}/{repo_slug}/pullrequests/{pullrequest_id}/properties/{app_key}/{property_name} | Get a pull request application property |
| [**get_repository_hosted_property_value**](PropertiesApi.md#get_repository_hosted_property_value) | **GET** /repositories/{workspace}/{repo_slug}/properties/{app_key}/{property_name} | Get a repository application property |
| [**retrieve_user_hosted_property_value**](PropertiesApi.md#retrieve_user_hosted_property_value) | **GET** /users/{selected_user}/properties/{app_key}/{property_name} | Get a user application property |
| [**update_commit_hosted_property_value**](PropertiesApi.md#update_commit_hosted_property_value) | **PUT** /repositories/{workspace}/{repo_slug}/commit/{commit}/properties/{app_key}/{property_name} | Update a commit application property |
| [**update_pull_request_hosted_property_value**](PropertiesApi.md#update_pull_request_hosted_property_value) | **PUT** /repositories/{workspace}/{repo_slug}/pullrequests/{pullrequest_id}/properties/{app_key}/{property_name} | Update a pull request application property |
| [**update_repository_hosted_property_value**](PropertiesApi.md#update_repository_hosted_property_value) | **PUT** /repositories/{workspace}/{repo_slug}/properties/{app_key}/{property_name} | Update a repository application property |
| [**update_user_hosted_property_value**](PropertiesApi.md#update_user_hosted_property_value) | **PUT** /users/{selected_user}/properties/{app_key}/{property_name} | Update a user application property |


## delete_commit_hosted_property_value

> delete_commit_hosted_property_value(workspace, repo_slug, commit, app_key, property_name)

Delete a commit application property

Delete an [application property](/cloud/bitbucket/application-properties/) value stored against a commit.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.

begin
  # Delete a commit application property
  api_instance.delete_commit_hosted_property_value(workspace, repo_slug, commit, app_key, property_name)
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->delete_commit_hosted_property_value: #{e}"
end
```

#### Using the delete_commit_hosted_property_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_commit_hosted_property_value_with_http_info(workspace, repo_slug, commit, app_key, property_name)

```ruby
begin
  # Delete a commit application property
  data, status_code, headers = api_instance.delete_commit_hosted_property_value_with_http_info(workspace, repo_slug, commit, app_key, property_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->delete_commit_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_pull_request_hosted_property_value

> delete_pull_request_hosted_property_value(workspace, repo_slug, pullrequest_id, app_key, property_name)

Delete a pull request application property

Delete an [application property](/cloud/bitbucket/application-properties/) value stored against a pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
pullrequest_id = 'pullrequest_id_example' # String | The pull request ID.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.

begin
  # Delete a pull request application property
  api_instance.delete_pull_request_hosted_property_value(workspace, repo_slug, pullrequest_id, app_key, property_name)
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->delete_pull_request_hosted_property_value: #{e}"
end
```

#### Using the delete_pull_request_hosted_property_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pull_request_hosted_property_value_with_http_info(workspace, repo_slug, pullrequest_id, app_key, property_name)

```ruby
begin
  # Delete a pull request application property
  data, status_code, headers = api_instance.delete_pull_request_hosted_property_value_with_http_info(workspace, repo_slug, pullrequest_id, app_key, property_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->delete_pull_request_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **pullrequest_id** | **String** | The pull request ID. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_repository_hosted_property_value

> delete_repository_hosted_property_value(workspace, repo_slug, app_key, property_name)

Delete a repository application property

Delete an [application property](/cloud/bitbucket/application-properties/) value stored against a repository.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.

begin
  # Delete a repository application property
  api_instance.delete_repository_hosted_property_value(workspace, repo_slug, app_key, property_name)
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->delete_repository_hosted_property_value: #{e}"
end
```

#### Using the delete_repository_hosted_property_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_hosted_property_value_with_http_info(workspace, repo_slug, app_key, property_name)

```ruby
begin
  # Delete a repository application property
  data, status_code, headers = api_instance.delete_repository_hosted_property_value_with_http_info(workspace, repo_slug, app_key, property_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->delete_repository_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_user_hosted_property_value

> delete_user_hosted_property_value(selected_user, app_key, property_name)

Delete a user application property

Delete an [application property](/cloud/bitbucket/application-properties/) value stored against a user.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.

begin
  # Delete a user application property
  api_instance.delete_user_hosted_property_value(selected_user, app_key, property_name)
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->delete_user_hosted_property_value: #{e}"
end
```

#### Using the delete_user_hosted_property_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_hosted_property_value_with_http_info(selected_user, app_key, property_name)

```ruby
begin
  # Delete a user application property
  data, status_code, headers = api_instance.delete_user_hosted_property_value_with_http_info(selected_user, app_key, property_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->delete_user_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_commit_hosted_property_value

> <ApplicationProperty> get_commit_hosted_property_value(workspace, repo_slug, commit, app_key, property_name)

Get a commit application property

Retrieve an [application property](/cloud/bitbucket/application-properties/) value stored against a commit.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.

begin
  # Get a commit application property
  result = api_instance.get_commit_hosted_property_value(workspace, repo_slug, commit, app_key, property_name)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->get_commit_hosted_property_value: #{e}"
end
```

#### Using the get_commit_hosted_property_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationProperty>, Integer, Hash)> get_commit_hosted_property_value_with_http_info(workspace, repo_slug, commit, app_key, property_name)

```ruby
begin
  # Get a commit application property
  data, status_code, headers = api_instance.get_commit_hosted_property_value_with_http_info(workspace, repo_slug, commit, app_key, property_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationProperty>
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->get_commit_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |

### Return type

[**ApplicationProperty**](ApplicationProperty.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pull_request_hosted_property_value

> <ApplicationProperty> get_pull_request_hosted_property_value(workspace, repo_slug, pullrequest_id, app_key, property_name)

Get a pull request application property

Retrieve an [application property](/cloud/bitbucket/application-properties/) value stored against a pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
pullrequest_id = 'pullrequest_id_example' # String | The pull request ID.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.

begin
  # Get a pull request application property
  result = api_instance.get_pull_request_hosted_property_value(workspace, repo_slug, pullrequest_id, app_key, property_name)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->get_pull_request_hosted_property_value: #{e}"
end
```

#### Using the get_pull_request_hosted_property_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationProperty>, Integer, Hash)> get_pull_request_hosted_property_value_with_http_info(workspace, repo_slug, pullrequest_id, app_key, property_name)

```ruby
begin
  # Get a pull request application property
  data, status_code, headers = api_instance.get_pull_request_hosted_property_value_with_http_info(workspace, repo_slug, pullrequest_id, app_key, property_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationProperty>
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->get_pull_request_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **pullrequest_id** | **String** | The pull request ID. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |

### Return type

[**ApplicationProperty**](ApplicationProperty.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_hosted_property_value

> <ApplicationProperty> get_repository_hosted_property_value(workspace, repo_slug, app_key, property_name)

Get a repository application property

Retrieve an [application property](/cloud/bitbucket/application-properties/) value stored against a repository.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.

begin
  # Get a repository application property
  result = api_instance.get_repository_hosted_property_value(workspace, repo_slug, app_key, property_name)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->get_repository_hosted_property_value: #{e}"
end
```

#### Using the get_repository_hosted_property_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationProperty>, Integer, Hash)> get_repository_hosted_property_value_with_http_info(workspace, repo_slug, app_key, property_name)

```ruby
begin
  # Get a repository application property
  data, status_code, headers = api_instance.get_repository_hosted_property_value_with_http_info(workspace, repo_slug, app_key, property_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationProperty>
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->get_repository_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |

### Return type

[**ApplicationProperty**](ApplicationProperty.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_user_hosted_property_value

> <ApplicationProperty> retrieve_user_hosted_property_value(selected_user, app_key, property_name)

Get a user application property

Retrieve an [application property](/cloud/bitbucket/application-properties/) value stored against a user.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.

begin
  # Get a user application property
  result = api_instance.retrieve_user_hosted_property_value(selected_user, app_key, property_name)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->retrieve_user_hosted_property_value: #{e}"
end
```

#### Using the retrieve_user_hosted_property_value_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationProperty>, Integer, Hash)> retrieve_user_hosted_property_value_with_http_info(selected_user, app_key, property_name)

```ruby
begin
  # Get a user application property
  data, status_code, headers = api_instance.retrieve_user_hosted_property_value_with_http_info(selected_user, app_key, property_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationProperty>
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->retrieve_user_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |

### Return type

[**ApplicationProperty**](ApplicationProperty.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_commit_hosted_property_value

> update_commit_hosted_property_value(workspace, repo_slug, commit, app_key, property_name, request_body)

Update a commit application property

Update an [application property](/cloud/bitbucket/application-properties/) value stored against a commit.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.
request_body = { key: 3.56} # Hash<String, Object> | The application property to create or update.

begin
  # Update a commit application property
  api_instance.update_commit_hosted_property_value(workspace, repo_slug, commit, app_key, property_name, request_body)
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->update_commit_hosted_property_value: #{e}"
end
```

#### Using the update_commit_hosted_property_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_commit_hosted_property_value_with_http_info(workspace, repo_slug, commit, app_key, property_name, request_body)

```ruby
begin
  # Update a commit application property
  data, status_code, headers = api_instance.update_commit_hosted_property_value_with_http_info(workspace, repo_slug, commit, app_key, property_name, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->update_commit_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | The application property to create or update. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_pull_request_hosted_property_value

> update_pull_request_hosted_property_value(workspace, repo_slug, pullrequest_id, app_key, property_name, request_body)

Update a pull request application property

Update an [application property](/cloud/bitbucket/application-properties/) value stored against a pull request.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
pullrequest_id = 'pullrequest_id_example' # String | The pull request ID.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.
request_body = { key: 3.56} # Hash<String, Object> | The application property to create or update.

begin
  # Update a pull request application property
  api_instance.update_pull_request_hosted_property_value(workspace, repo_slug, pullrequest_id, app_key, property_name, request_body)
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->update_pull_request_hosted_property_value: #{e}"
end
```

#### Using the update_pull_request_hosted_property_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_pull_request_hosted_property_value_with_http_info(workspace, repo_slug, pullrequest_id, app_key, property_name, request_body)

```ruby
begin
  # Update a pull request application property
  data, status_code, headers = api_instance.update_pull_request_hosted_property_value_with_http_info(workspace, repo_slug, pullrequest_id, app_key, property_name, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->update_pull_request_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **pullrequest_id** | **String** | The pull request ID. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | The application property to create or update. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_repository_hosted_property_value

> update_repository_hosted_property_value(workspace, repo_slug, app_key, property_name, request_body)

Update a repository application property

Update an [application property](/cloud/bitbucket/application-properties/) value stored against a repository.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
workspace = 'workspace_example' # String | The repository container; either the workspace slug or the UUID in curly braces.
repo_slug = 'repo_slug_example' # String | The repository.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.
request_body = { key: 3.56} # Hash<String, Object> | The application property to create or update.

begin
  # Update a repository application property
  api_instance.update_repository_hosted_property_value(workspace, repo_slug, app_key, property_name, request_body)
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->update_repository_hosted_property_value: #{e}"
end
```

#### Using the update_repository_hosted_property_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_repository_hosted_property_value_with_http_info(workspace, repo_slug, app_key, property_name, request_body)

```ruby
begin
  # Update a repository application property
  data, status_code, headers = api_instance.update_repository_hosted_property_value_with_http_info(workspace, repo_slug, app_key, property_name, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->update_repository_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The repository container; either the workspace slug or the UUID in curly braces. |  |
| **repo_slug** | **String** | The repository. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | The application property to create or update. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_user_hosted_property_value

> update_user_hosted_property_value(selected_user, app_key, property_name, request_body)

Update a user application property

Update an [application property](/cloud/bitbucket/application-properties/) value stored against a user.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PropertiesApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.
app_key = 'app_key_example' # String | The key of the Connect app.
property_name = 'property_name_example' # String | The name of the property.
request_body = { key: 3.56} # Hash<String, Object> | The application property to create or update.

begin
  # Update a user application property
  api_instance.update_user_hosted_property_value(selected_user, app_key, property_name, request_body)
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->update_user_hosted_property_value: #{e}"
end
```

#### Using the update_user_hosted_property_value_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_user_hosted_property_value_with_http_info(selected_user, app_key, property_name, request_body)

```ruby
begin
  # Update a user application property
  data, status_code, headers = api_instance.update_user_hosted_property_value_with_http_info(selected_user, app_key, property_name, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PropertiesApi->update_user_hosted_property_value_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |
| **app_key** | **String** | The key of the Connect app. |  |
| **property_name** | **String** | The name of the property. |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | The application property to create or update. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

