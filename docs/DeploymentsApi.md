# Bitbucket::DeploymentsApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_environment**](DeploymentsApi.md#create_environment) | **POST** /repositories/{workspace}/{repo_slug}/environments/ | Create an environment |
| [**delete_environment_for_repository**](DeploymentsApi.md#delete_environment_for_repository) | **DELETE** /repositories/{workspace}/{repo_slug}/environments/{environment_uuid} | Delete an environment |
| [**get_deployment_for_repository**](DeploymentsApi.md#get_deployment_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/deployments/{deployment_uuid} | Get a deployment |
| [**get_deployments_for_repository**](DeploymentsApi.md#get_deployments_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/deployments/ | List deployments |
| [**get_environment_for_repository**](DeploymentsApi.md#get_environment_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/environments/{environment_uuid} | Get an environment |
| [**get_environments_for_repository**](DeploymentsApi.md#get_environments_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/environments/ | List environments |
| [**repositories_workspace_repo_slug_deploy_keys_get**](DeploymentsApi.md#repositories_workspace_repo_slug_deploy_keys_get) | **GET** /repositories/{workspace}/{repo_slug}/deploy-keys | List repository deploy keys |
| [**repositories_workspace_repo_slug_deploy_keys_key_id_delete**](DeploymentsApi.md#repositories_workspace_repo_slug_deploy_keys_key_id_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/deploy-keys/{key_id} | Delete a repository deploy key |
| [**repositories_workspace_repo_slug_deploy_keys_key_id_get**](DeploymentsApi.md#repositories_workspace_repo_slug_deploy_keys_key_id_get) | **GET** /repositories/{workspace}/{repo_slug}/deploy-keys/{key_id} | Get a repository deploy key |
| [**repositories_workspace_repo_slug_deploy_keys_key_id_put**](DeploymentsApi.md#repositories_workspace_repo_slug_deploy_keys_key_id_put) | **PUT** /repositories/{workspace}/{repo_slug}/deploy-keys/{key_id} | Update a repository deploy key |
| [**repositories_workspace_repo_slug_deploy_keys_post**](DeploymentsApi.md#repositories_workspace_repo_slug_deploy_keys_post) | **POST** /repositories/{workspace}/{repo_slug}/deploy-keys | Add a repository deploy key |
| [**update_environment_for_repository**](DeploymentsApi.md#update_environment_for_repository) | **POST** /repositories/{workspace}/{repo_slug}/environments/{environment_uuid}/changes/ | Update an environment |
| [**workspaces_workspace_projects_project_key_deploy_keys_get**](DeploymentsApi.md#workspaces_workspace_projects_project_key_deploy_keys_get) | **GET** /workspaces/{workspace}/projects/{project_key}/deploy-keys | List project deploy keys |
| [**workspaces_workspace_projects_project_key_deploy_keys_key_id_delete**](DeploymentsApi.md#workspaces_workspace_projects_project_key_deploy_keys_key_id_delete) | **DELETE** /workspaces/{workspace}/projects/{project_key}/deploy-keys/{key_id} | Delete a deploy key from a project |
| [**workspaces_workspace_projects_project_key_deploy_keys_key_id_get**](DeploymentsApi.md#workspaces_workspace_projects_project_key_deploy_keys_key_id_get) | **GET** /workspaces/{workspace}/projects/{project_key}/deploy-keys/{key_id} | Get a project deploy key |
| [**workspaces_workspace_projects_project_key_deploy_keys_post**](DeploymentsApi.md#workspaces_workspace_projects_project_key_deploy_keys_post) | **POST** /workspaces/{workspace}/projects/{project_key}/deploy-keys | Create a project deploy key |


## create_environment

> <DeploymentEnvironment> create_environment(workspace, repo_slug, deployment_environment)

Create an environment

Create an environment.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::DeploymentsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
deployment_environment = Bitbucket::DeploymentEnvironment.new # DeploymentEnvironment | The environment to create.

begin
  # Create an environment
  result = api_instance.create_environment(workspace, repo_slug, deployment_environment)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->create_environment: #{e}"
end
```

#### Using the create_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentEnvironment>, Integer, Hash)> create_environment_with_http_info(workspace, repo_slug, deployment_environment)

```ruby
begin
  # Create an environment
  data, status_code, headers = api_instance.create_environment_with_http_info(workspace, repo_slug, deployment_environment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentEnvironment>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->create_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **deployment_environment** | [**DeploymentEnvironment**](DeploymentEnvironment.md) | The environment to create. |  |

### Return type

[**DeploymentEnvironment**](DeploymentEnvironment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_environment_for_repository

> delete_environment_for_repository(workspace, repo_slug, environment_uuid)

Delete an environment

Delete an environment

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::DeploymentsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
environment_uuid = 'environment_uuid_example' # String | The environment UUID.

begin
  # Delete an environment
  api_instance.delete_environment_for_repository(workspace, repo_slug, environment_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->delete_environment_for_repository: #{e}"
end
```

#### Using the delete_environment_for_repository_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_environment_for_repository_with_http_info(workspace, repo_slug, environment_uuid)

```ruby
begin
  # Delete an environment
  data, status_code, headers = api_instance.delete_environment_for_repository_with_http_info(workspace, repo_slug, environment_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->delete_environment_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **environment_uuid** | **String** | The environment UUID. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deployment_for_repository

> <Deployment> get_deployment_for_repository(workspace, repo_slug, deployment_uuid)

Get a deployment

Retrieve a deployment

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::DeploymentsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
deployment_uuid = 'deployment_uuid_example' # String | The deployment UUID.

begin
  # Get a deployment
  result = api_instance.get_deployment_for_repository(workspace, repo_slug, deployment_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->get_deployment_for_repository: #{e}"
end
```

#### Using the get_deployment_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Deployment>, Integer, Hash)> get_deployment_for_repository_with_http_info(workspace, repo_slug, deployment_uuid)

```ruby
begin
  # Get a deployment
  data, status_code, headers = api_instance.get_deployment_for_repository_with_http_info(workspace, repo_slug, deployment_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Deployment>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->get_deployment_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **deployment_uuid** | **String** | The deployment UUID. |  |

### Return type

[**Deployment**](Deployment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deployments_for_repository

> <PaginatedDeployments> get_deployments_for_repository(workspace, repo_slug)

List deployments

Find deployments

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::DeploymentsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # List deployments
  result = api_instance.get_deployments_for_repository(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->get_deployments_for_repository: #{e}"
end
```

#### Using the get_deployments_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDeployments>, Integer, Hash)> get_deployments_for_repository_with_http_info(workspace, repo_slug)

```ruby
begin
  # List deployments
  data, status_code, headers = api_instance.get_deployments_for_repository_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDeployments>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->get_deployments_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PaginatedDeployments**](PaginatedDeployments.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_environment_for_repository

> <DeploymentEnvironment> get_environment_for_repository(workspace, repo_slug, environment_uuid)

Get an environment

Retrieve an environment

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::DeploymentsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
environment_uuid = 'environment_uuid_example' # String | The environment UUID.

begin
  # Get an environment
  result = api_instance.get_environment_for_repository(workspace, repo_slug, environment_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->get_environment_for_repository: #{e}"
end
```

#### Using the get_environment_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentEnvironment>, Integer, Hash)> get_environment_for_repository_with_http_info(workspace, repo_slug, environment_uuid)

```ruby
begin
  # Get an environment
  data, status_code, headers = api_instance.get_environment_for_repository_with_http_info(workspace, repo_slug, environment_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentEnvironment>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->get_environment_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **environment_uuid** | **String** | The environment UUID. |  |

### Return type

[**DeploymentEnvironment**](DeploymentEnvironment.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_environments_for_repository

> <PaginatedEnvironments> get_environments_for_repository(workspace, repo_slug)

List environments

Find environments

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::DeploymentsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # List environments
  result = api_instance.get_environments_for_repository(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->get_environments_for_repository: #{e}"
end
```

#### Using the get_environments_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedEnvironments>, Integer, Hash)> get_environments_for_repository_with_http_info(workspace, repo_slug)

```ruby
begin
  # List environments
  data, status_code, headers = api_instance.get_environments_for_repository_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedEnvironments>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->get_environments_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PaginatedEnvironments**](PaginatedEnvironments.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_deploy_keys_get

> <PaginatedDeployKeys> repositories_workspace_repo_slug_deploy_keys_get(repo_slug, workspace)

List repository deploy keys

Returns all deploy-keys belonging to a repository.  Example: ``` $ curl -H \"Authorization <auth header>\" \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys  Output: {     \"pagelen\": 10,     \"values\": [         {             \"id\": 123,             \"key\": \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\",             \"label\": \"mykey\",             \"type\": \"deploy_key\",             \"created_on\": \"2018-08-15T23:50:59.993890+00:00\",             \"repository\": {                 \"full_name\": \"mleu/test\",                 \"name\": \"test\",                 \"type\": \"repository\",                 \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"             },             \"links\":{                 \"self\":{                     \"href\": \"https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/123\"                 }             }             \"last_used\": null,             \"comment\": \"mleu@C02W454JHTD8\"         }     ],     \"page\": 1,     \"size\": 1 } ```

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

api_instance = Bitbucket::DeploymentsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List repository deploy keys
  result = api_instance.repositories_workspace_repo_slug_deploy_keys_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_deploy_keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDeployKeys>, Integer, Hash)> repositories_workspace_repo_slug_deploy_keys_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List repository deploy keys
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_deploy_keys_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDeployKeys>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedDeployKeys**](PaginatedDeployKeys.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_deploy_keys_key_id_delete

> repositories_workspace_repo_slug_deploy_keys_key_id_delete(key_id, repo_slug, workspace)

Delete a repository deploy key

This deletes a deploy key from a repository.  Example: ``` $ curl -XDELETE \\ -H \"Authorization <auth header>\" \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/1234 ```

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

api_instance = Bitbucket::DeploymentsApi.new
key_id = 'key_id_example' # String | The key ID matching the deploy key.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a repository deploy key
  api_instance.repositories_workspace_repo_slug_deploy_keys_key_id_delete(key_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_key_id_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_deploy_keys_key_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_deploy_keys_key_id_delete_with_http_info(key_id, repo_slug, workspace)

```ruby
begin
  # Delete a repository deploy key
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_deploy_keys_key_id_delete_with_http_info(key_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_key_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The key ID matching the deploy key. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_deploy_keys_key_id_get

> <DeployKey> repositories_workspace_repo_slug_deploy_keys_key_id_get(key_id, repo_slug, workspace)

Get a repository deploy key

Returns the deploy key belonging to a specific key.  Example: ``` $ curl -H \"Authorization <auth header>\" \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-key/1234  Output: {     \"comment\": \"mleu@C02W454JHTD8\",     \"last_used\": null,     \"links\": {         \"self\": {             \"href\": https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-key/1234\"         }     },     \"repository\": {         \"full_name\": \"mleu/test\",         \"name\": \"test\",         \"type\": \"repository\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"     },     \"label\": \"mykey\",     \"created_on\": \"2018-08-15T23:50:59.993890+00:00\",     \"key\": \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\",     \"id\": 1234,     \"type\": \"deploy_key\" } ```

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

api_instance = Bitbucket::DeploymentsApi.new
key_id = 'key_id_example' # String | The key ID matching the deploy key.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a repository deploy key
  result = api_instance.repositories_workspace_repo_slug_deploy_keys_key_id_get(key_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_key_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_deploy_keys_key_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeployKey>, Integer, Hash)> repositories_workspace_repo_slug_deploy_keys_key_id_get_with_http_info(key_id, repo_slug, workspace)

```ruby
begin
  # Get a repository deploy key
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_deploy_keys_key_id_get_with_http_info(key_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeployKey>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_key_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The key ID matching the deploy key. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**DeployKey**](DeployKey.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_deploy_keys_key_id_put

> <DeployKey> repositories_workspace_repo_slug_deploy_keys_key_id_put(key_id, repo_slug, workspace)

Update a repository deploy key

Create a new deploy key in a repository.  The same key needs to be passed in but the comment and label can change.  Example: ``` $ curl -XPUT \\ -H \"Authorization <auth header>\" \\ -H \"Content-type: application/json\" \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/1234 -d \\ '{     \"label\": \"newlabel\",     \"key\": \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5 newcomment\", }'  Output: {     \"comment\": \"newcomment\",     \"last_used\": null,     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/1234\"         }     },     \"repository\": {         \"full_name\": \"mleu/test\",         \"name\": \"test\",         \"type\": \"repository\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"     },     \"label\": \"newlabel\",     \"created_on\": \"2018-08-15T23:50:59.993890+00:00\",     \"key\": \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\",     \"id\": 1234,     \"type\": \"deploy_key\" } ```

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

api_instance = Bitbucket::DeploymentsApi.new
key_id = 'key_id_example' # String | The key ID matching the deploy key.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update a repository deploy key
  result = api_instance.repositories_workspace_repo_slug_deploy_keys_key_id_put(key_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_key_id_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_deploy_keys_key_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeployKey>, Integer, Hash)> repositories_workspace_repo_slug_deploy_keys_key_id_put_with_http_info(key_id, repo_slug, workspace)

```ruby
begin
  # Update a repository deploy key
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_deploy_keys_key_id_put_with_http_info(key_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeployKey>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_key_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The key ID matching the deploy key. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**DeployKey**](DeployKey.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_deploy_keys_post

> <DeployKey> repositories_workspace_repo_slug_deploy_keys_post(repo_slug, workspace)

Add a repository deploy key

Create a new deploy key in a repository. Note: If authenticating a deploy key with an OAuth consumer, any changes to the OAuth consumer will subsequently invalidate the deploy key.   Example: ``` $ curl -XPOST \\ -H \"Authorization <auth header>\" \\ -H \"Content-type: application/json\" \\ https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys -d \\ '{     \"key\": \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5 mleu@C02W454JHTD8\",     \"label\": \"mydeploykey\" }'  Output: {     \"id\": 123,     \"key\": \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\",     \"label\": \"mydeploykey\",     \"type\": \"deploy_key\",     \"created_on\": \"2018-08-15T23:50:59.993890+00:00\",     \"repository\": {         \"full_name\": \"mleu/test\",         \"name\": \"test\",         \"type\": \"repository\",         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"     },     \"links\":{         \"self\":{             \"href\": \"https://api.bitbucket.org/2.0/repositories/mleu/test/deploy-keys/123\"         }     }     \"last_used\": null,     \"comment\": \"mleu@C02W454JHTD8\" } ```

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

api_instance = Bitbucket::DeploymentsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Add a repository deploy key
  result = api_instance.repositories_workspace_repo_slug_deploy_keys_post(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_deploy_keys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeployKey>, Integer, Hash)> repositories_workspace_repo_slug_deploy_keys_post_with_http_info(repo_slug, workspace)

```ruby
begin
  # Add a repository deploy key
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_deploy_keys_post_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeployKey>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->repositories_workspace_repo_slug_deploy_keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**DeployKey**](DeployKey.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_environment_for_repository

> update_environment_for_repository(workspace, repo_slug, environment_uuid)

Update an environment

Update an environment

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::DeploymentsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
environment_uuid = 'environment_uuid_example' # String | The environment UUID.

begin
  # Update an environment
  api_instance.update_environment_for_repository(workspace, repo_slug, environment_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->update_environment_for_repository: #{e}"
end
```

#### Using the update_environment_for_repository_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_environment_for_repository_with_http_info(workspace, repo_slug, environment_uuid)

```ruby
begin
  # Update an environment
  data, status_code, headers = api_instance.update_environment_for_repository_with_http_info(workspace, repo_slug, environment_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->update_environment_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **environment_uuid** | **String** | The environment UUID. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_project_key_deploy_keys_get

> <PaginatedProjectDeployKeys> workspaces_workspace_projects_project_key_deploy_keys_get(project_key, workspace)

List project deploy keys

Returns all deploy keys belonging to a project.  Example: ``` $ curl -H \"Authorization <auth header>\" \\ https://api.bitbucket.org/2.0/workspaces/standard/projects/TEST_PROJECT/deploy-keys  Output: {     \"pagelen\":10,     \"values\":[         {             \"comment\":\"thakseth@C02W454JHTD8\",             \"last_used\":null,             \"links\":{                 \"self\":{                     \"href\":\"https://api.bitbucket.org/2.0/workspaces/standard/projects/TEST_PROJECT/deploy-keys/1234\"                 }             },             \"label\":\"test\",             \"project\":{                 \"links\":{                     \"self\":{                         \"href\":\"https://api.bitbucket.org/2.0/workspaces/standard/projects/TEST_PROJECT\"                     }                 },                 \"type\":\"project\",                 \"name\":\"cooperative standard\",                 \"key\":\"TEST_PROJECT\",                 \"uuid\":\"{3b3e510b-7f2b-414d-a2b7-76c4e405c1c0}\"             },             \"created_on\":\"2021-07-28T21:20:19.491721+00:00\",             \"key\":\"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDX5yfMOEw6HG9jKTYTisbmDTJ4MCUTSVGr5e4OWvY3UuI2A6F8SdzQqa2f5BABA/4g5Sk5awJrYHlNu3EzV1V2I44tR3A4fnZAG71ZKyDPi1wvdO7UYmFgxV/Vd18H9QZFFjICGDM7W0PT2mI0kON/jN3qNWi+GiB/xgaeQKSqynysdysDp8lnnI/8Sh3ikURP9UP83ShRCpAXszOUNaa+UUlcYQYBDLIGowsg51c4PCkC3DNhAMxppkNRKoSOWwyl+oRVXHSDylkiJSBHW3HH4Q6WHieD54kGrjbhWBKdnnxKX7QAAZBDseY+t01N36m6/ljvXSUEcBWtHxBYye0r\",             \"type\":\"project_deploy_key\",             \"id\":1234         }     ],     \"page\":1,     \"size\":1 } ```

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

api_instance = Bitbucket::DeploymentsApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List project deploy keys
  result = api_instance.workspaces_workspace_projects_project_key_deploy_keys_get(project_key, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->workspaces_workspace_projects_project_key_deploy_keys_get: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_deploy_keys_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedProjectDeployKeys>, Integer, Hash)> workspaces_workspace_projects_project_key_deploy_keys_get_with_http_info(project_key, workspace)

```ruby
begin
  # List project deploy keys
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_deploy_keys_get_with_http_info(project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedProjectDeployKeys>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->workspaces_workspace_projects_project_key_deploy_keys_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedProjectDeployKeys**](PaginatedProjectDeployKeys.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_project_key_deploy_keys_key_id_delete

> workspaces_workspace_projects_project_key_deploy_keys_key_id_delete(key_id, project_key, workspace)

Delete a deploy key from a project

This deletes a deploy key from a project.  Example: ``` $ curl -XDELETE \\ -H \"Authorization <auth header>\" \\ https://api.bitbucket.org/2.0/workspaces/jzeng/projects/JZ/deploy-keys/1234 ```

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

api_instance = Bitbucket::DeploymentsApi.new
key_id = 'key_id_example' # String | The key ID matching the project deploy key.
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a deploy key from a project
  api_instance.workspaces_workspace_projects_project_key_deploy_keys_key_id_delete(key_id, project_key, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->workspaces_workspace_projects_project_key_deploy_keys_key_id_delete: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_deploy_keys_key_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workspaces_workspace_projects_project_key_deploy_keys_key_id_delete_with_http_info(key_id, project_key, workspace)

```ruby
begin
  # Delete a deploy key from a project
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_deploy_keys_key_id_delete_with_http_info(key_id, project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->workspaces_workspace_projects_project_key_deploy_keys_key_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The key ID matching the project deploy key. |  |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_project_key_deploy_keys_key_id_get

> <ProjectDeployKey> workspaces_workspace_projects_project_key_deploy_keys_key_id_get(key_id, project_key, workspace)

Get a project deploy key

Returns the deploy key belonging to a specific key ID.  Example: ``` $ curl -H \"Authorization <auth header>\" \\ https://api.bitbucket.org/2.0/workspaces/standard/projects/TEST_PROJECT/deploy-keys/1234  Output: {     \"pagelen\":10,     \"values\":[         {             \"comment\":\"thakseth@C02W454JHTD8\",             \"last_used\":null,             \"links\":{                 \"self\":{                     \"href\":\"https://api.bitbucket.org/2.0/workspaces/standard/projects/TEST_PROJECT/deploy-keys/1234\"                 }             },             \"label\":\"test\",             \"project\":{                 \"links\":{                     \"self\":{                         \"href\":\"https://api.bitbucket.org/2.0/workspaces/standard/projects/TEST_PROJECT\"                     }                 },                 \"type\":\"project\",                 \"name\":\"cooperative standard\",                 \"key\":\"TEST_PROJECT\",                 \"uuid\":\"{3b3e510b-7f2b-414d-a2b7-76c4e405c1c0}\"             },             \"created_on\":\"2021-07-28T21:20:19.491721+00:00\",             \"key\":\"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDX5yfMOEw6HG9jKTYTisbmDTJ4MCUTSVGr5e4OWvY3UuI2A6F8SdzQqa2f5BABA/4g5Sk5awJrYHlNu3EzV1V2I44tR3A4fnZAG71ZKyDPi1wvdO7UYmFgxV/Vd18H9QZFFjICGDM7W0PT2mI0kON/jN3qNWi+GiB/xgaeQKSqynysdysDp8lnnI/8Sh3ikURP9UP83ShRCpAXszOUNaa+UUlcYQYBDLIGowsg51c4PCkC3DNhAMxppkNRKoSOWwyl+oRVXHSDylkiJSBHW3HH4Q6WHieD54kGrjbhWBKdnnxKX7QAAZBDseY+t01N36m6/ljvXSUEcBWtHxBYye0r\",             \"type\":\"project_deploy_key\",             \"id\":1234         }     ], } ```

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

api_instance = Bitbucket::DeploymentsApi.new
key_id = 'key_id_example' # String | The key ID matching the project deploy key.
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a project deploy key
  result = api_instance.workspaces_workspace_projects_project_key_deploy_keys_key_id_get(key_id, project_key, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->workspaces_workspace_projects_project_key_deploy_keys_key_id_get: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_deploy_keys_key_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectDeployKey>, Integer, Hash)> workspaces_workspace_projects_project_key_deploy_keys_key_id_get_with_http_info(key_id, project_key, workspace)

```ruby
begin
  # Get a project deploy key
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_deploy_keys_key_id_get_with_http_info(key_id, project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectDeployKey>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->workspaces_workspace_projects_project_key_deploy_keys_key_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_id** | **String** | The key ID matching the project deploy key. |  |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**ProjectDeployKey**](ProjectDeployKey.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_project_key_deploy_keys_post

> <ProjectDeployKey> workspaces_workspace_projects_project_key_deploy_keys_post(project_key, workspace)

Create a project deploy key

Create a new deploy key in a project.  Example: ``` $ curl -XPOST \\ -H \"Authorization <auth header>\" \\ -H \"Content-type: application/json\" \\ https://api.bitbucket.org/2.0/workspaces/jzeng/projects/JZ/deploy-keys/ -d \\ '{     \"key\": \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5 mleu@C02W454JHTD8\",     \"label\": \"mydeploykey\" }'  Output: {     \"comment\": \"mleu@C02W454JHTD8\",     \"last_used\": null,     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/workspaces/testadfsa/projects/ASDF/deploy-keys/5/\"         }     },     \"label\": \"myprojectkey\",     \"project\": {         ...     },     \"created_on\": \"2021-08-10T05:28:00.570859+00:00\",     \"key\": \"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAK/b1cHHDr/TEV1JGQl+WjCwStKG6Bhrv0rFpEsYlyTBm1fzN0VOJJYn4ZOPCPJwqse6fGbXntEs+BbXiptR+++HycVgl65TMR0b5ul5AgwrVdZdT7qjCOCgaSV74/9xlHDK8oqgGnfA7ZoBBU+qpVyaloSjBdJfLtPY/xqj4yHnXKYzrtn/uFc4Kp9Tb7PUg9Io3qohSTGJGVHnsVblq/rToJG7L5xIo0OxK0SJSQ5vuId93ZuFZrCNMXj8JDHZeSEtjJzpRCBEXHxpOPhAcbm4MzULgkFHhAVgp4JbkrT99/wpvZ7r9AdkTg7HGqL3rlaDrEcWfL7Lu6TnhBdq5\",     \"type\": \"project_deploy_key\",     \"id\": 5 } ```

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

api_instance = Bitbucket::DeploymentsApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Create a project deploy key
  result = api_instance.workspaces_workspace_projects_project_key_deploy_keys_post(project_key, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->workspaces_workspace_projects_project_key_deploy_keys_post: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_deploy_keys_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectDeployKey>, Integer, Hash)> workspaces_workspace_projects_project_key_deploy_keys_post_with_http_info(project_key, workspace)

```ruby
begin
  # Create a project deploy key
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_deploy_keys_post_with_http_info(project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectDeployKey>
rescue Bitbucket::ApiError => e
  puts "Error when calling DeploymentsApi->workspaces_workspace_projects_project_key_deploy_keys_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**ProjectDeployKey**](ProjectDeployKey.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

