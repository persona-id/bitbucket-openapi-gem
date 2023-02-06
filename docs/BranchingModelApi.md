# Bitbucket::BranchingModelApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**repositories_workspace_repo_slug_branching_model_get**](BranchingModelApi.md#repositories_workspace_repo_slug_branching_model_get) | **GET** /repositories/{workspace}/{repo_slug}/branching-model | Get the branching model for a repository |
| [**repositories_workspace_repo_slug_branching_model_settings_get**](BranchingModelApi.md#repositories_workspace_repo_slug_branching_model_settings_get) | **GET** /repositories/{workspace}/{repo_slug}/branching-model/settings | Get the branching model config for a repository |
| [**repositories_workspace_repo_slug_branching_model_settings_put**](BranchingModelApi.md#repositories_workspace_repo_slug_branching_model_settings_put) | **PUT** /repositories/{workspace}/{repo_slug}/branching-model/settings | Update the branching model config for a repository |
| [**repositories_workspace_repo_slug_effective_branching_model_get**](BranchingModelApi.md#repositories_workspace_repo_slug_effective_branching_model_get) | **GET** /repositories/{workspace}/{repo_slug}/effective-branching-model | Get the effective, or currently applied, branching model for a repository |
| [**workspaces_workspace_projects_project_key_branching_model_get**](BranchingModelApi.md#workspaces_workspace_projects_project_key_branching_model_get) | **GET** /workspaces/{workspace}/projects/{project_key}/branching-model | Get the branching model for a project |
| [**workspaces_workspace_projects_project_key_branching_model_settings_get**](BranchingModelApi.md#workspaces_workspace_projects_project_key_branching_model_settings_get) | **GET** /workspaces/{workspace}/projects/{project_key}/branching-model/settings | Get the branching model config for a project |
| [**workspaces_workspace_projects_project_key_branching_model_settings_put**](BranchingModelApi.md#workspaces_workspace_projects_project_key_branching_model_settings_put) | **PUT** /workspaces/{workspace}/projects/{project_key}/branching-model/settings | Update the branching model config for a project |


## repositories_workspace_repo_slug_branching_model_get

> <BranchingModel> repositories_workspace_repo_slug_branching_model_get(repo_slug, workspace)

Get the branching model for a repository

Return the branching model as applied to the repository. This view is read-only. The branching model settings can be changed using the [settings](#api-repositories-workspace-repo-slug-branching-model-settings-get) API.  The returned object:  1. Always has a `development` property. `development.branch` contains    the actual repository branch object that is considered to be the    `development` branch. `development.branch` will not be present    if it does not exist. 2. Might have a `production` property. `production` will not    be present when `production` is disabled.    `production.branch` contains the actual branch object that is    considered to be the `production` branch. `production.branch` will    not be present if it does not exist. 3. Always has a `branch_types` array which contains all enabled branch    types.  Example body:  ``` {   \"development\": {     \"name\": \"master\",     \"branch\": {       \"type\": \"branch\",       \"name\": \"master\",       \"target\": {         \"hash\": \"16dffcb0de1b22e249db6799532074cf32efe80f\"       }     },     \"use_mainbranch\": true   },   \"production\": {     \"name\": \"production\",     \"branch\": {       \"type\": \"branch\",       \"name\": \"production\",       \"target\": {         \"hash\": \"16dffcb0de1b22e249db6799532074cf32efe80f\"       }     },     \"use_mainbranch\": false   },   \"branch_types\": [     {       \"kind\": \"release\",       \"prefix\": \"release/\"     },     {       \"kind\": \"hotfix\",       \"prefix\": \"hotfix/\"     },     {       \"kind\": \"feature\",       \"prefix\": \"feature/\"     },     {       \"kind\": \"bugfix\",       \"prefix\": \"bugfix/\"     }   ],   \"type\": \"branching_model\",   \"links\": {     \"self\": {       \"href\": \"https://api.bitbucket.org/.../branching-model\"     }   } } ```

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

api_instance = Bitbucket::BranchingModelApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the branching model for a repository
  result = api_instance.repositories_workspace_repo_slug_branching_model_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->repositories_workspace_repo_slug_branching_model_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_branching_model_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BranchingModel>, Integer, Hash)> repositories_workspace_repo_slug_branching_model_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # Get the branching model for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_branching_model_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BranchingModel>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->repositories_workspace_repo_slug_branching_model_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**BranchingModel**](BranchingModel.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_branching_model_settings_get

> <BranchingModelSettings> repositories_workspace_repo_slug_branching_model_settings_get(repo_slug, workspace)

Get the branching model config for a repository

Return the branching model configuration for a repository. The returned object:  1. Always has a `development` property for the development branch. 2. Always a `production` property for the production branch. The    production branch can be disabled. 3. The `branch_types` contains all the branch types.  This is the raw configuration for the branching model. A client wishing to see the branching model with its actual current branches may find the [active model API](/cloud/bitbucket/rest/api-group-branching-model/#api-repositories-workspace-repo-slug-branching-model-get) more useful.  Example body:  ``` {   \"development\": {     \"is_valid\": true,     \"name\": null,     \"use_mainbranch\": true   },   \"production\": {     \"is_valid\": true,     \"name\": \"production\",     \"use_mainbranch\": false,     \"enabled\": false   },   \"branch_types\": [     {       \"kind\": \"release\",       \"enabled\": true,       \"prefix\": \"release/\"     },     {       \"kind\": \"hotfix\",       \"enabled\": true,       \"prefix\": \"hotfix/\"     },     {       \"kind\": \"feature\",       \"enabled\": true,       \"prefix\": \"feature/\"     },     {       \"kind\": \"bugfix\",       \"enabled\": false,       \"prefix\": \"bugfix/\"     }   ],   \"type\": \"branching_model_settings\",   \"links\": {     \"self\": {       \"href\": \"https://api.bitbucket.org/.../branching-model/settings\"     }   } } ```

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

api_instance = Bitbucket::BranchingModelApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the branching model config for a repository
  result = api_instance.repositories_workspace_repo_slug_branching_model_settings_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->repositories_workspace_repo_slug_branching_model_settings_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_branching_model_settings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BranchingModelSettings>, Integer, Hash)> repositories_workspace_repo_slug_branching_model_settings_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # Get the branching model config for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_branching_model_settings_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BranchingModelSettings>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->repositories_workspace_repo_slug_branching_model_settings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**BranchingModelSettings**](BranchingModelSettings.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_branching_model_settings_put

> <BranchingModelSettings> repositories_workspace_repo_slug_branching_model_settings_put(repo_slug, workspace)

Update the branching model config for a repository

Update the branching model configuration for a repository.  The `development` branch can be configured to a specific branch or to track the main branch. When set to a specific branch it must currently exist. Only the passed properties will be updated. The properties not passed will be left unchanged. A request without a `development` property will leave the development branch unchanged.  It is possible for the `development` branch to be invalid. This happens when it points at a specific branch that has been deleted. This is indicated in the `is_valid` field for the branch. It is not possible to update the settings for `development` if that would leave the branch in an invalid state. Such a request will be rejected.  The `production` branch can be a specific branch, the main branch or disabled. When set to a specific branch it must currently exist. The `enabled` property can be used to enable (`true`) or disable (`false`) it. Only the passed properties will be updated. The properties not passed will be left unchanged. A request without a `production` property will leave the production branch unchanged.  It is possible for the `production` branch to be invalid. This happens when it points at a specific branch that has been deleted. This is indicated in the `is_valid` field for the branch. A request that would leave `production` enabled and invalid will be rejected. It is possible to update `production` and make it invalid if it would also be left disabled.  The `branch_types` property contains the branch types to be updated. Only the branch types passed will be updated. All updates will be rejected if it would leave the branching model in an invalid state. For branch types this means that:  1. The prefixes for all enabled branch types are valid. For example,    it is not possible to use '*' inside a Git prefix. 2. A prefix of an enabled branch type must not be a prefix of another    enabled branch type. This is to ensure that a branch can be easily    classified by its prefix unambiguously.  It is possible to store an invalid prefix if that branch type would be left disabled. Only the passed properties will be updated. The properties not passed will be left unchanged. Each branch type must have a `kind` property to identify it.  Example Body:  ```     {       \"development\": {         \"use_mainbranch\": true       },       \"production\": {         \"enabled\": true,         \"use_mainbranch\": false,         \"name\": \"production\"       },       \"branch_types\": [         {           \"kind\": \"bugfix\",           \"enabled\": true,           \"prefix\": \"bugfix/\"         },         {           \"kind\": \"feature\",           \"enabled\": true,           \"prefix\": \"feature/\"         },         {           \"kind\": \"hotfix\",           \"prefix\": \"hotfix/\"         },         {           \"kind\": \"release\",           \"enabled\": false,         }       ]     } ```  There is currently a side effect when using this API endpoint. If the repository is inheriting branching model settings from its project, updating the branching model for this repository will disable the project setting inheritance.   We have deprecated this side effect and will remove it on 1 August 2022.

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

api_instance = Bitbucket::BranchingModelApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update the branching model config for a repository
  result = api_instance.repositories_workspace_repo_slug_branching_model_settings_put(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->repositories_workspace_repo_slug_branching_model_settings_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_branching_model_settings_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BranchingModelSettings>, Integer, Hash)> repositories_workspace_repo_slug_branching_model_settings_put_with_http_info(repo_slug, workspace)

```ruby
begin
  # Update the branching model config for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_branching_model_settings_put_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BranchingModelSettings>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->repositories_workspace_repo_slug_branching_model_settings_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**BranchingModelSettings**](BranchingModelSettings.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_effective_branching_model_get

> <EffectiveRepoBranchingModel> repositories_workspace_repo_slug_effective_branching_model_get(repo_slug, workspace)

Get the effective, or currently applied, branching model for a repository



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

api_instance = Bitbucket::BranchingModelApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the effective, or currently applied, branching model for a repository
  result = api_instance.repositories_workspace_repo_slug_effective_branching_model_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->repositories_workspace_repo_slug_effective_branching_model_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_effective_branching_model_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EffectiveRepoBranchingModel>, Integer, Hash)> repositories_workspace_repo_slug_effective_branching_model_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # Get the effective, or currently applied, branching model for a repository
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_effective_branching_model_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EffectiveRepoBranchingModel>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->repositories_workspace_repo_slug_effective_branching_model_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**EffectiveRepoBranchingModel**](EffectiveRepoBranchingModel.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_project_key_branching_model_get

> <ProjectBranchingModel> workspaces_workspace_projects_project_key_branching_model_get(project_key, workspace)

Get the branching model for a project

Return the branching model set at the project level. This view is read-only. The branching model settings can be changed using the [settings](#api-workspaces-workspace-projects-project-key-branching-model-settings-get) API.  The returned object:  1. Always has a `development` property. `development.name` is    the user-specified branch that can be inherited by an individual repository's    branching model. 2. Might have a `production` property. `production` will not    be present when `production` is disabled.    `production.name` is the user-specified branch that can be    inherited by an individual repository's branching model. 3. Always has a `branch_types` array which contains all enabled branch    types.  Example body:  ``` {   \"development\": {     \"name\": \"master\",     \"use_mainbranch\": true   },   \"production\": {     \"name\": \"production\",     \"use_mainbranch\": false   },   \"branch_types\": [     {       \"kind\": \"release\",       \"prefix\": \"release/\"     },     {       \"kind\": \"hotfix\",       \"prefix\": \"hotfix/\"     },     {       \"kind\": \"feature\",       \"prefix\": \"feature/\"     },     {       \"kind\": \"bugfix\",       \"prefix\": \"bugfix/\"     }   ],   \"type\": \"project_branching_model\",   \"links\": {     \"self\": {       \"href\": \"https://api.bitbucket.org/.../branching-model\"     }   } } ```

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

api_instance = Bitbucket::BranchingModelApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the branching model for a project
  result = api_instance.workspaces_workspace_projects_project_key_branching_model_get(project_key, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->workspaces_workspace_projects_project_key_branching_model_get: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_branching_model_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProjectBranchingModel>, Integer, Hash)> workspaces_workspace_projects_project_key_branching_model_get_with_http_info(project_key, workspace)

```ruby
begin
  # Get the branching model for a project
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_branching_model_get_with_http_info(project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProjectBranchingModel>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->workspaces_workspace_projects_project_key_branching_model_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**ProjectBranchingModel**](ProjectBranchingModel.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_project_key_branching_model_settings_get

> <BranchingModelSettings> workspaces_workspace_projects_project_key_branching_model_settings_get(project_key, workspace)

Get the branching model config for a project

Return the branching model configuration for a project. The returned object:  1. Always has a `development` property for the development branch. 2. Always a `production` property for the production branch. The    production branch can be disabled. 3. The `branch_types` contains all the branch types.   This is the raw configuration for the branching model. A client wishing to see the branching model with its actual current branches may find the [active model API](#api-workspaces-workspace-projects-project-key-branching-model-get) more useful.  Example body:  ``` {   \"development\": {     \"name\": null,     \"use_mainbranch\": true   },   \"production\": {     \"name\": \"production\",     \"use_mainbranch\": false,     \"enabled\": false   },   \"branch_types\": [     {       \"kind\": \"release\",       \"enabled\": true,       \"prefix\": \"release/\"     },     {       \"kind\": \"hotfix\",       \"enabled\": true,       \"prefix\": \"hotfix/\"     },     {       \"kind\": \"feature\",       \"enabled\": true,       \"prefix\": \"feature/\"     },     {       \"kind\": \"bugfix\",       \"enabled\": false,       \"prefix\": \"bugfix/\"     }   ],   \"type\": \"branching_model_settings\",   \"links\": {     \"self\": {       \"href\": \"https://api.bitbucket.org/.../branching-model/settings\"     }   } } ```

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

api_instance = Bitbucket::BranchingModelApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the branching model config for a project
  result = api_instance.workspaces_workspace_projects_project_key_branching_model_settings_get(project_key, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->workspaces_workspace_projects_project_key_branching_model_settings_get: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_branching_model_settings_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BranchingModelSettings>, Integer, Hash)> workspaces_workspace_projects_project_key_branching_model_settings_get_with_http_info(project_key, workspace)

```ruby
begin
  # Get the branching model config for a project
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_branching_model_settings_get_with_http_info(project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BranchingModelSettings>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->workspaces_workspace_projects_project_key_branching_model_settings_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**BranchingModelSettings**](BranchingModelSettings.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workspaces_workspace_projects_project_key_branching_model_settings_put

> <BranchingModelSettings> workspaces_workspace_projects_project_key_branching_model_settings_put(project_key, workspace)

Update the branching model config for a project

Update the branching model configuration for a project.  The `development` branch can be configured to a specific branch or to track the main branch. Any branch name can be supplied, but will only successfully be applied to a repository via inheritance if that branch exists for that repository. Only the passed properties will be updated. The properties not passed will be left unchanged. A request without a `development` property will leave the development branch unchanged.  The `production` branch can be a specific branch, the main branch or disabled. Any branch name can be supplied, but will only successfully be applied to a repository via inheritance if that branch exists for that repository. The `enabled` property can be used to enable (`true`) or disable (`false`) it. Only the passed properties will be updated. The properties not passed will be left unchanged. A request without a `production` property will leave the production branch unchanged.  The `branch_types` property contains the branch types to be updated. Only the branch types passed will be updated. All updates will be rejected if it would leave the branching model in an invalid state. For branch types this means that:  1. The prefixes for all enabled branch types are valid. For example,    it is not possible to use '*' inside a Git prefix. 2. A prefix of an enabled branch type must not be a prefix of another    enabled branch type. This is to ensure that a branch can be easily    classified by its prefix unambiguously.  It is possible to store an invalid prefix if that branch type would be left disabled. Only the passed properties will be updated. The properties not passed will be left unchanged. Each branch type must have a `kind` property to identify it.  Example Body:  ```     {       \"development\": {         \"use_mainbranch\": true       },       \"production\": {         \"enabled\": true,         \"use_mainbranch\": false,         \"name\": \"production\"       },       \"branch_types\": [         {           \"kind\": \"bugfix\",           \"enabled\": true,           \"prefix\": \"bugfix/\"         },         {           \"kind\": \"feature\",           \"enabled\": true,           \"prefix\": \"feature/\"         },         {           \"kind\": \"hotfix\",           \"prefix\": \"hotfix/\"         },         {           \"kind\": \"release\",           \"enabled\": false,         }       ]     } ```

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

api_instance = Bitbucket::BranchingModelApi.new
project_key = 'project_key_example' # String | The project in question. This is the actual `key` assigned to the project. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update the branching model config for a project
  result = api_instance.workspaces_workspace_projects_project_key_branching_model_settings_put(project_key, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->workspaces_workspace_projects_project_key_branching_model_settings_put: #{e}"
end
```

#### Using the workspaces_workspace_projects_project_key_branching_model_settings_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BranchingModelSettings>, Integer, Hash)> workspaces_workspace_projects_project_key_branching_model_settings_put_with_http_info(project_key, workspace)

```ruby
begin
  # Update the branching model config for a project
  data, status_code, headers = api_instance.workspaces_workspace_projects_project_key_branching_model_settings_put_with_http_info(project_key, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BranchingModelSettings>
rescue Bitbucket::ApiError => e
  puts "Error when calling BranchingModelApi->workspaces_workspace_projects_project_key_branching_model_settings_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project_key** | **String** | The project in question. This is the actual &#x60;key&#x60; assigned to the project.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**BranchingModelSettings**](BranchingModelSettings.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

