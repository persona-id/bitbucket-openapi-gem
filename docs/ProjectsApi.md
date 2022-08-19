# Bitbucket::ProjectsApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workspaces_workspace_projects_post**](ProjectsApi.md#workspaces_workspace_projects_post) | **POST** /workspaces/{workspace}/projects | Create a project in a workspace |
| [**workspaces_workspace_projects_project_key_delete**](ProjectsApi.md#workspaces_workspace_projects_project_key_delete) | **DELETE** /workspaces/{workspace}/projects/{project_key} | Delete a project for a workspace |
| [**workspaces_workspace_projects_project_key_get**](ProjectsApi.md#workspaces_workspace_projects_project_key_get) | **GET** /workspaces/{workspace}/projects/{project_key} | Get a project for a workspace |
| [**workspaces_workspace_projects_project_key_put**](ProjectsApi.md#workspaces_workspace_projects_project_key_put) | **PUT** /workspaces/{workspace}/projects/{project_key} | Update a project for a workspace |


## workspaces_workspace_projects_post

> <Project> workspaces_workspace_projects_post(workspace, project)

Create a project in a workspace

Creates a new project.  Note that the avatar has to be embedded as either a data-url or a URL to an external image as shown in the examples below:  ``` $ body=$(cat << EOF {     \"name\": \"Mars Project\",     \"key\": \"MARS\",     \"description\": \"Software for colonizing mars.\",     \"links\": {         \"avatar\": {             \"href\": \"data:image/gif;base64,R0lGODlhEAAQAMQAAORHHOVSKudfOulrSOp3WOyDZu6QdvCchPGolfO0o/...\"         }     },     \"is_private\": false } EOF ) $ curl -H \"Content-Type: application/json\" \\        -X POST \\        -d \"$body\" \\        https://api.bitbucket.org/2.0/teams/teams-in-space/projects/ | jq . {   // Serialized project document } ```  or even:  ``` $ body=$(cat << EOF {     \"name\": \"Mars Project\",     \"key\": \"MARS\",     \"description\": \"Software for colonizing mars.\",     \"links\": {         \"avatar\": {             \"href\": \"http://i.imgur.com/72tRx4w.gif\"         }     },     \"is_private\": false } EOF ) $ curl -H \"Content-Type: application/json\" \\        -X POST \\        -d \"$body\" \\        https://api.bitbucket.org/2.0/teams/teams-in-space/projects/ | jq . {   // Serialized project document } ```

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

api_instance = Bitbucket::ProjectsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
project = Bitbucket::Project.new # Project | 

begin
  # Create a project in a workspace
  result = api_instance.workspaces_workspace_projects_post(workspace, project)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling ProjectsApi->workspaces_workspace_projects_post: #{e}"
end
```

#### Using the workspaces_workspace_projects_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> workspaces_workspace_projects_post_with_http_info(workspace, project)

```ruby
begin
  # Create a project in a workspace
  data, status_code, headers = api_instance.workspaces_workspace_projects_post_with_http_info(workspace, project)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue Bitbucket::ApiError => e
  puts "Error when calling ProjectsApi->workspaces_workspace_projects_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **project** | [**Project**](Project.md) |  |  |

### Return type

[**Project**](Project.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workspaces_workspace_projects_project_key_delete

> workspaces_workspace_projects_project_key_delete(project_key, workspace)

Delete a project for a workspace

Deletes this project. This is an irreversible operation.  You cannot delete a project that still contains repositories. To delete the project, [delete](/cloud/bitbucket/rest/api-group-repositories/#api-repositories-workspace-repo-slug-delete) or transfer the repositories first.  Example: ``` $ curl -X DELETE https://api.bitbucket.org/2.0/bbworkspace1/PROJ ```

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

api_instance = Bitbucket::ProjectsApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a project for a workspace
  api_instance.workspaces_workspace_projects_project_key_delete(project_key, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling ProjectsApi->workspaces_workspace_projects_project_key_delete: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workspaces_workspace_projects_project_key_delete_with_http_info(project_key, workspace)

```ruby
begin
  # Delete a project for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_delete_with_http_info(project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling ProjectsApi->workspaces_workspace_projects_project_key_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

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

api_instance = Bitbucket::ProjectsApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a project for a workspace
  result = api_instance.workspaces_workspace_projects_project_key_get(project_key, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling ProjectsApi->workspaces_workspace_projects_project_key_get: #{e}"
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
  puts "Error when calling ProjectsApi->workspaces_workspace_projects_project_key_get_with_http_info: #{e}"
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


## workspaces_workspace_projects_project_key_put

> <Project> workspaces_workspace_projects_project_key_put(project_key, workspace, project)

Update a project for a workspace

Since this endpoint can be used to both update and to create a project, the request body depends on the intent.  #### Creation  See the POST documentation for the project collection for an example of the request body.  Note: The `key` should not be specified in the body of request (since it is already present in the URL). The `name` is required, everything else is optional.  #### Update  See the POST documentation for the project collection for an example of the request body.  Note: The key is not required in the body (since it is already in the URL). The key may be specified in the body, if the intent is to change the key itself. In such a scenario, the location of the project is changed and is returned in the `Location` header of the response.

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

api_instance = Bitbucket::ProjectsApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
project = Bitbucket::Project.new # Project | 

begin
  # Update a project for a workspace
  result = api_instance.workspaces_workspace_projects_project_key_put(project_key, workspace, project)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling ProjectsApi->workspaces_workspace_projects_project_key_put: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Project>, Integer, Hash)> workspaces_workspace_projects_project_key_put_with_http_info(project_key, workspace, project)

```ruby
begin
  # Update a project for a workspace
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_put_with_http_info(project_key, workspace, project)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Project>
rescue Bitbucket::ApiError => e
  puts "Error when calling ProjectsApi->workspaces_workspace_projects_project_key_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **project** | [**Project**](Project.md) |  |  |

### Return type

[**Project**](Project.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

