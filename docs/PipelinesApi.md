# Bitbucket::PipelinesApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_deployment_variable**](PipelinesApi.md#create_deployment_variable) | **POST** /repositories/{workspace}/{repo_slug}/deployments_config/environments/{environment_uuid}/variables | Create a variable for an environment |
| [**create_pipeline_for_repository**](PipelinesApi.md#create_pipeline_for_repository) | **POST** /repositories/{workspace}/{repo_slug}/pipelines/ | Run a pipeline |
| [**create_pipeline_variable_for_team**](PipelinesApi.md#create_pipeline_variable_for_team) | **POST** /teams/{username}/pipelines_config/variables/ | Create a variable for a user |
| [**create_pipeline_variable_for_user**](PipelinesApi.md#create_pipeline_variable_for_user) | **POST** /users/{selected_user}/pipelines_config/variables/ | Create a variable for a user |
| [**create_pipeline_variable_for_workspace**](PipelinesApi.md#create_pipeline_variable_for_workspace) | **POST** /workspaces/{workspace}/pipelines-config/variables | Create a variable for a workspace |
| [**create_repository_pipeline_known_host**](PipelinesApi.md#create_repository_pipeline_known_host) | **POST** /repositories/{workspace}/{repo_slug}/pipelines_config/ssh/known_hosts/ | Create a known host |
| [**create_repository_pipeline_schedule**](PipelinesApi.md#create_repository_pipeline_schedule) | **POST** /repositories/{workspace}/{repo_slug}/pipelines_config/schedules/ | Create a schedule |
| [**create_repository_pipeline_variable**](PipelinesApi.md#create_repository_pipeline_variable) | **POST** /repositories/{workspace}/{repo_slug}/pipelines_config/variables/ | Create a variable for a repository |
| [**delete_deployment_variable**](PipelinesApi.md#delete_deployment_variable) | **DELETE** /repositories/{workspace}/{repo_slug}/deployments_config/environments/{environment_uuid}/variables/{variable_uuid} | Delete a variable for an environment |
| [**delete_pipeline_variable_for_team**](PipelinesApi.md#delete_pipeline_variable_for_team) | **DELETE** /teams/{username}/pipelines_config/variables/{variable_uuid} | Delete a variable for a team |
| [**delete_pipeline_variable_for_user**](PipelinesApi.md#delete_pipeline_variable_for_user) | **DELETE** /users/{selected_user}/pipelines_config/variables/{variable_uuid} | Delete a variable for a user |
| [**delete_pipeline_variable_for_workspace**](PipelinesApi.md#delete_pipeline_variable_for_workspace) | **DELETE** /workspaces/{workspace}/pipelines-config/variables/{variable_uuid} | Delete a variable for a workspace |
| [**delete_repository_pipeline_cache**](PipelinesApi.md#delete_repository_pipeline_cache) | **DELETE** /repositories/{workspace}/{repo_slug}/pipelines-config/caches/{cache_uuid} | Delete a cache |
| [**delete_repository_pipeline_caches**](PipelinesApi.md#delete_repository_pipeline_caches) | **DELETE** /repositories/{workspace}/{repo_slug}/pipelines-config/caches | Delete caches |
| [**delete_repository_pipeline_key_pair**](PipelinesApi.md#delete_repository_pipeline_key_pair) | **DELETE** /repositories/{workspace}/{repo_slug}/pipelines_config/ssh/key_pair | Delete SSH key pair |
| [**delete_repository_pipeline_known_host**](PipelinesApi.md#delete_repository_pipeline_known_host) | **DELETE** /repositories/{workspace}/{repo_slug}/pipelines_config/ssh/known_hosts/{known_host_uuid} | Delete a known host |
| [**delete_repository_pipeline_schedule**](PipelinesApi.md#delete_repository_pipeline_schedule) | **DELETE** /repositories/{workspace}/{repo_slug}/pipelines_config/schedules/{schedule_uuid} | Delete a schedule |
| [**delete_repository_pipeline_variable**](PipelinesApi.md#delete_repository_pipeline_variable) | **DELETE** /repositories/{workspace}/{repo_slug}/pipelines_config/variables/{variable_uuid} | Delete a variable for a repository |
| [**get_deployment_variables**](PipelinesApi.md#get_deployment_variables) | **GET** /repositories/{workspace}/{repo_slug}/deployments_config/environments/{environment_uuid}/variables | List variables for an environment |
| [**get_oidc_configuration**](PipelinesApi.md#get_oidc_configuration) | **GET** /workspaces/{workspace}/pipelines-config/identity/oidc/.well-known/openid-configuration | Get OpenID configuration for OIDC in Pipelines |
| [**get_oidc_keys**](PipelinesApi.md#get_oidc_keys) | **GET** /workspaces/{workspace}/pipelines-config/identity/oidc/keys.json | Get keys for OIDC in Pipelines |
| [**get_pipeline_container_log**](PipelinesApi.md#get_pipeline_container_log) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid}/steps/{step_uuid}/logs/{log_uuid} | Get the logs for the build container or a service container for a given step of a pipeline. |
| [**get_pipeline_for_repository**](PipelinesApi.md#get_pipeline_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid} | Get a pipeline |
| [**get_pipeline_step_for_repository**](PipelinesApi.md#get_pipeline_step_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid}/steps/{step_uuid} | Get a step of a pipeline |
| [**get_pipeline_step_log_for_repository**](PipelinesApi.md#get_pipeline_step_log_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid}/steps/{step_uuid}/log | Get log file for a step |
| [**get_pipeline_steps_for_repository**](PipelinesApi.md#get_pipeline_steps_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid}/steps/ | List steps for a pipeline |
| [**get_pipeline_test_report_test_case_reasons**](PipelinesApi.md#get_pipeline_test_report_test_case_reasons) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid}/steps/{step_uuid}/test_reports/test_cases/{test_case_uuid}/test_case_reasons | Get test case reasons (output) for a given test case in a step of a pipeline. |
| [**get_pipeline_test_report_test_cases**](PipelinesApi.md#get_pipeline_test_report_test_cases) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid}/steps/{step_uuid}/test_reports/test_cases | Get test cases for a given step of a pipeline. |
| [**get_pipeline_test_reports**](PipelinesApi.md#get_pipeline_test_reports) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid}/steps/{step_uuid}/test_reports | Get a summary of test reports for a given step of a pipeline. |
| [**get_pipeline_variable_for_team**](PipelinesApi.md#get_pipeline_variable_for_team) | **GET** /teams/{username}/pipelines_config/variables/{variable_uuid} | Get a variable for a team |
| [**get_pipeline_variable_for_user**](PipelinesApi.md#get_pipeline_variable_for_user) | **GET** /users/{selected_user}/pipelines_config/variables/{variable_uuid} | Get a variable for a user |
| [**get_pipeline_variable_for_workspace**](PipelinesApi.md#get_pipeline_variable_for_workspace) | **GET** /workspaces/{workspace}/pipelines-config/variables/{variable_uuid} | Get variable for a workspace |
| [**get_pipeline_variables_for_team**](PipelinesApi.md#get_pipeline_variables_for_team) | **GET** /teams/{username}/pipelines_config/variables/ | List variables for an account |
| [**get_pipeline_variables_for_user**](PipelinesApi.md#get_pipeline_variables_for_user) | **GET** /users/{selected_user}/pipelines_config/variables/ | List variables for a user |
| [**get_pipeline_variables_for_workspace**](PipelinesApi.md#get_pipeline_variables_for_workspace) | **GET** /workspaces/{workspace}/pipelines-config/variables | List variables for a workspace |
| [**get_pipelines_for_repository**](PipelinesApi.md#get_pipelines_for_repository) | **GET** /repositories/{workspace}/{repo_slug}/pipelines/ | List pipelines |
| [**get_repository_pipeline_cache_content_uri**](PipelinesApi.md#get_repository_pipeline_cache_content_uri) | **GET** /repositories/{workspace}/{repo_slug}/pipelines-config/caches/{cache_uuid}/content-uri | Get cache content URI |
| [**get_repository_pipeline_caches**](PipelinesApi.md#get_repository_pipeline_caches) | **GET** /repositories/{workspace}/{repo_slug}/pipelines-config/caches/ | List caches |
| [**get_repository_pipeline_config**](PipelinesApi.md#get_repository_pipeline_config) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config | Get configuration |
| [**get_repository_pipeline_known_host**](PipelinesApi.md#get_repository_pipeline_known_host) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config/ssh/known_hosts/{known_host_uuid} | Get a known host |
| [**get_repository_pipeline_known_hosts**](PipelinesApi.md#get_repository_pipeline_known_hosts) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config/ssh/known_hosts/ | List known hosts |
| [**get_repository_pipeline_schedule**](PipelinesApi.md#get_repository_pipeline_schedule) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config/schedules/{schedule_uuid} | Get a schedule |
| [**get_repository_pipeline_schedule_executions**](PipelinesApi.md#get_repository_pipeline_schedule_executions) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config/schedules/{schedule_uuid}/executions/ | List executions of a schedule |
| [**get_repository_pipeline_schedules**](PipelinesApi.md#get_repository_pipeline_schedules) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config/schedules/ | List schedules |
| [**get_repository_pipeline_ssh_key_pair**](PipelinesApi.md#get_repository_pipeline_ssh_key_pair) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config/ssh/key_pair | Get SSH key pair |
| [**get_repository_pipeline_variable**](PipelinesApi.md#get_repository_pipeline_variable) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config/variables/{variable_uuid} | Get a variable for a repository |
| [**get_repository_pipeline_variables**](PipelinesApi.md#get_repository_pipeline_variables) | **GET** /repositories/{workspace}/{repo_slug}/pipelines_config/variables/ | List variables for a repository |
| [**stop_pipeline**](PipelinesApi.md#stop_pipeline) | **POST** /repositories/{workspace}/{repo_slug}/pipelines/{pipeline_uuid}/stopPipeline | Stop a pipeline |
| [**update_deployment_variable**](PipelinesApi.md#update_deployment_variable) | **PUT** /repositories/{workspace}/{repo_slug}/deployments_config/environments/{environment_uuid}/variables/{variable_uuid} | Update a variable for an environment |
| [**update_pipeline_variable_for_team**](PipelinesApi.md#update_pipeline_variable_for_team) | **PUT** /teams/{username}/pipelines_config/variables/{variable_uuid} | Update a variable for a team |
| [**update_pipeline_variable_for_user**](PipelinesApi.md#update_pipeline_variable_for_user) | **PUT** /users/{selected_user}/pipelines_config/variables/{variable_uuid} | Update a variable for a user |
| [**update_pipeline_variable_for_workspace**](PipelinesApi.md#update_pipeline_variable_for_workspace) | **PUT** /workspaces/{workspace}/pipelines-config/variables/{variable_uuid} | Update variable for a workspace |
| [**update_repository_build_number**](PipelinesApi.md#update_repository_build_number) | **PUT** /repositories/{workspace}/{repo_slug}/pipelines_config/build_number | Update the next build number |
| [**update_repository_pipeline_config**](PipelinesApi.md#update_repository_pipeline_config) | **PUT** /repositories/{workspace}/{repo_slug}/pipelines_config | Update configuration |
| [**update_repository_pipeline_key_pair**](PipelinesApi.md#update_repository_pipeline_key_pair) | **PUT** /repositories/{workspace}/{repo_slug}/pipelines_config/ssh/key_pair | Update SSH key pair |
| [**update_repository_pipeline_known_host**](PipelinesApi.md#update_repository_pipeline_known_host) | **PUT** /repositories/{workspace}/{repo_slug}/pipelines_config/ssh/known_hosts/{known_host_uuid} | Update a known host |
| [**update_repository_pipeline_schedule**](PipelinesApi.md#update_repository_pipeline_schedule) | **PUT** /repositories/{workspace}/{repo_slug}/pipelines_config/schedules/{schedule_uuid} | Update a schedule |
| [**update_repository_pipeline_variable**](PipelinesApi.md#update_repository_pipeline_variable) | **PUT** /repositories/{workspace}/{repo_slug}/pipelines_config/variables/{variable_uuid} | Update a variable for a repository |


## create_deployment_variable

> <DeploymentVariable> create_deployment_variable(workspace, repo_slug, environment_uuid, deployment_variable)

Create a variable for an environment

Create a deployment environment level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
environment_uuid = 'environment_uuid_example' # String | The environment.
deployment_variable = Bitbucket::DeploymentVariable.new # DeploymentVariable | The variable to create

begin
  # Create a variable for an environment
  result = api_instance.create_deployment_variable(workspace, repo_slug, environment_uuid, deployment_variable)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_deployment_variable: #{e}"
end
```

#### Using the create_deployment_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentVariable>, Integer, Hash)> create_deployment_variable_with_http_info(workspace, repo_slug, environment_uuid, deployment_variable)

```ruby
begin
  # Create a variable for an environment
  data, status_code, headers = api_instance.create_deployment_variable_with_http_info(workspace, repo_slug, environment_uuid, deployment_variable)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_deployment_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **environment_uuid** | **String** | The environment. |  |
| **deployment_variable** | [**DeploymentVariable**](DeploymentVariable.md) | The variable to create |  |

### Return type

[**DeploymentVariable**](DeploymentVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_pipeline_for_repository

> <Pipeline> create_pipeline_for_repository(workspace, repo_slug, pipeline)

Run a pipeline

Endpoint to create and initiate a pipeline. There are a couple of different options to initiate a pipeline, where the payload of the request will determine which type of pipeline will be instantiated. # Trigger a Pipeline for a branch One way to trigger pipelines is by specifying the branch for which you want to trigger a pipeline. The specified branch will be used to determine which pipeline definition from the `bitbucket-pipelines.yml` file will be applied to initiate the pipeline. The pipeline will then do a clone of the repository and checkout the latest revision of the specified branch.  ### Example  ``` $ curl -X POST -is -u username:password \\   -H 'Content-Type: application/json' \\  https://api.bitbucket.org/2.0/repositories/jeroendr/meat-demo2/pipelines/ \\   -d '   {     \"target\": {       \"ref_type\": \"branch\",       \"type\": \"pipeline_ref_target\",       \"ref_name\": \"master\"     }   }' ``` # Trigger a Pipeline for a commit on a branch or tag You can initiate a pipeline for a specific commit and in the context of a specified reference (e.g. a branch, tag or bookmark). The specified reference will be used to determine which pipeline definition from the bitbucket-pipelines.yml file will be applied to initiate the pipeline. The pipeline will clone the repository and then do a checkout the specified reference.  The following reference types are supported:  * `branch` * `named_branch` * `bookmark`  * `tag`  ### Example  ``` $ curl -X POST -is -u username:password \\   -H 'Content-Type: application/json' \\   https://api.bitbucket.org/2.0/repositories/jeroendr/meat-demo2/pipelines/ \\   -d '   {     \"target\": {       \"commit\": {         \"type\": \"commit\",         \"hash\": \"ce5b7431602f7cbba007062eeb55225c6e18e956\"       },       \"ref_type\": \"branch\",       \"type\": \"pipeline_ref_target\",       \"ref_name\": \"master\"     }   }' ``` # Trigger a specific pipeline definition for a commit You can trigger a specific pipeline that is defined in your `bitbucket-pipelines.yml` file for a specific commit. In addition to the commit revision, you specify the type and pattern of the selector that identifies the pipeline definition. The resulting pipeline will then clone the repository and checkout the specified revision.  ### Example  ``` $ curl -X POST -is -u username:password \\   -H 'Content-Type: application/json' \\  https://api.bitbucket.org/2.0/repositories/jeroendr/meat-demo2/pipelines/ \\  -d '   {      \"target\": {       \"commit\": {          \"hash\":\"a3c4e02c9a3755eccdc3764e6ea13facdf30f923\",          \"type\":\"commit\"        },         \"selector\": {            \"type\":\"custom\",               \"pattern\":\"Deploy to production\"           },         \"type\":\"pipeline_commit_target\"    }   }' ``` # Trigger a specific pipeline definition for a commit on a branch or tag You can trigger a specific pipeline that is defined in your `bitbucket-pipelines.yml` file for a specific commit in the context of a specified reference. In addition to the commit revision, you specify the type and pattern of the selector that identifies the pipeline definition, as well as the reference information. The resulting pipeline will then clone the repository a checkout the specified reference.  ### Example  ``` $ curl -X POST -is -u username:password \\   -H 'Content-Type: application/json' \\  https://api.bitbucket.org/2.0/repositories/jeroendr/meat-demo2/pipelines/ \\  -d '   {      \"target\": {       \"commit\": {          \"hash\":\"a3c4e02c9a3755eccdc3764e6ea13facdf30f923\",          \"type\":\"commit\"        },        \"selector\": {           \"type\": \"custom\",           \"pattern\": \"Deploy to production\"        },        \"type\": \"pipeline_ref_target\",        \"ref_name\": \"master\",        \"ref_type\": \"branch\"      }   }' ```   # Trigger a custom pipeline with variables In addition to triggering a custom pipeline that is defined in your `bitbucket-pipelines.yml` file as shown in the examples above, you can specify variables that will be available for your build. In the request, provide a list of variables, specifying the following for each variable: key, value, and whether it should be secured or not (this field is optional and defaults to not secured).  ### Example  ``` $ curl -X POST -is -u username:password \\   -H 'Content-Type: application/json' \\  https://api.bitbucket.org/2.0/repositories/{workspace}/{repo_slug}/pipelines/ \\  -d '   {     \"target\": {       \"type\": \"pipeline_ref_target\",       \"ref_type\": \"branch\",       \"ref_name\": \"master\",       \"selector\": {         \"type\": \"custom\",         \"pattern\": \"Deploy to production\"       }     },     \"variables\": [       {         \"key\": \"var1key\",         \"value\": \"var1value\",         \"secured\": true       },       {         \"key\": \"var2key\",         \"value\": \"var2value\"       }     ]   }' ```  # Trigger a pull request pipeline  You can also initiate a pipeline for a specific pull request.  ### Example  ``` $ curl -X POST -is -u username:password \\   -H 'Content-Type: application/json' \\  https://api.bitbucket.org/2.0/repositories/{workspace}/{repo_slug}/pipelines/ \\  -d '   {  \"target\": {       \"type\": \"pipeline_pullrequest_target\",    \"source\": \"pull-request-branch\",       \"destination\": \"master\",       \"destination_commit\": {         \"hash\" : \"9f848b7\"       },       \"commit\": {        \"hash\" : \"1a372fc\"       },       \"pullrequest\" : {        \"id\" : \"3\"       },    \"selector\": {         \"type\": \"pull-requests\",         \"pattern\": \"**\"       }     }   }' ``` 

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline = Bitbucket::Pipeline.new # Pipeline | The pipeline to initiate.

begin
  # Run a pipeline
  result = api_instance.create_pipeline_for_repository(workspace, repo_slug, pipeline)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_for_repository: #{e}"
end
```

#### Using the create_pipeline_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> create_pipeline_for_repository_with_http_info(workspace, repo_slug, pipeline)

```ruby
begin
  # Run a pipeline
  data, status_code, headers = api_instance.create_pipeline_for_repository_with_http_info(workspace, repo_slug, pipeline)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline** | [**Pipeline**](Pipeline.md) | The pipeline to initiate. |  |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_pipeline_variable_for_team

> <PipelineVariable> create_pipeline_variable_for_team(username, opts)

Create a variable for a user

Create an account level variable. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
username = 'username_example' # String | The account.
opts = {
  pipeline_variable: Bitbucket::PipelineVariable.new # PipelineVariable | The variable to create.
}

begin
  # Create a variable for a user
  result = api_instance.create_pipeline_variable_for_team(username, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_variable_for_team: #{e}"
end
```

#### Using the create_pipeline_variable_for_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> create_pipeline_variable_for_team_with_http_info(username, opts)

```ruby
begin
  # Create a variable for a user
  data, status_code, headers = api_instance.create_pipeline_variable_for_team_with_http_info(username, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_variable_for_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The account. |  |
| **pipeline_variable** | [**PipelineVariable**](PipelineVariable.md) | The variable to create. | [optional] |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_pipeline_variable_for_user

> <PipelineVariable> create_pipeline_variable_for_user(selected_user, opts)

Create a variable for a user

Create a user level variable. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.
opts = {
  pipeline_variable: Bitbucket::PipelineVariable.new # PipelineVariable | The variable to create.
}

begin
  # Create a variable for a user
  result = api_instance.create_pipeline_variable_for_user(selected_user, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_variable_for_user: #{e}"
end
```

#### Using the create_pipeline_variable_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> create_pipeline_variable_for_user_with_http_info(selected_user, opts)

```ruby
begin
  # Create a variable for a user
  data, status_code, headers = api_instance.create_pipeline_variable_for_user_with_http_info(selected_user, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_variable_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |
| **pipeline_variable** | [**PipelineVariable**](PipelineVariable.md) | The variable to create. | [optional] |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_pipeline_variable_for_workspace

> <PipelineVariable> create_pipeline_variable_for_workspace(workspace, opts)

Create a variable for a workspace

Create a workspace level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
opts = {
  pipeline_variable: Bitbucket::PipelineVariable.new # PipelineVariable | The variable to create.
}

begin
  # Create a variable for a workspace
  result = api_instance.create_pipeline_variable_for_workspace(workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_variable_for_workspace: #{e}"
end
```

#### Using the create_pipeline_variable_for_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> create_pipeline_variable_for_workspace_with_http_info(workspace, opts)

```ruby
begin
  # Create a variable for a workspace
  data, status_code, headers = api_instance.create_pipeline_variable_for_workspace_with_http_info(workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_pipeline_variable_for_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **pipeline_variable** | [**PipelineVariable**](PipelineVariable.md) | The variable to create. | [optional] |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_repository_pipeline_known_host

> <PipelineKnownHost> create_repository_pipeline_known_host(workspace, repo_slug, pipeline_known_host)

Create a known host

Create a repository level known host.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_known_host = Bitbucket::PipelineKnownHost.new # PipelineKnownHost | The known host to create.

begin
  # Create a known host
  result = api_instance.create_repository_pipeline_known_host(workspace, repo_slug, pipeline_known_host)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_repository_pipeline_known_host: #{e}"
end
```

#### Using the create_repository_pipeline_known_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineKnownHost>, Integer, Hash)> create_repository_pipeline_known_host_with_http_info(workspace, repo_slug, pipeline_known_host)

```ruby
begin
  # Create a known host
  data, status_code, headers = api_instance.create_repository_pipeline_known_host_with_http_info(workspace, repo_slug, pipeline_known_host)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineKnownHost>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_repository_pipeline_known_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_known_host** | [**PipelineKnownHost**](PipelineKnownHost.md) | The known host to create. |  |

### Return type

[**PipelineKnownHost**](PipelineKnownHost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_repository_pipeline_schedule

> <PipelineSchedule> create_repository_pipeline_schedule(workspace, repo_slug, pipeline_schedule)

Create a schedule

Create a schedule for the given repository.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_schedule = Bitbucket::PipelineSchedule.new # PipelineSchedule | The schedule to create.

begin
  # Create a schedule
  result = api_instance.create_repository_pipeline_schedule(workspace, repo_slug, pipeline_schedule)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_repository_pipeline_schedule: #{e}"
end
```

#### Using the create_repository_pipeline_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineSchedule>, Integer, Hash)> create_repository_pipeline_schedule_with_http_info(workspace, repo_slug, pipeline_schedule)

```ruby
begin
  # Create a schedule
  data, status_code, headers = api_instance.create_repository_pipeline_schedule_with_http_info(workspace, repo_slug, pipeline_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineSchedule>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_repository_pipeline_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_schedule** | [**PipelineSchedule**](PipelineSchedule.md) | The schedule to create. |  |

### Return type

[**PipelineSchedule**](PipelineSchedule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_repository_pipeline_variable

> <PipelineVariable> create_repository_pipeline_variable(workspace, repo_slug, pipeline_variable)

Create a variable for a repository

Create a repository level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_variable = Bitbucket::PipelineVariable.new # PipelineVariable | The variable to create.

begin
  # Create a variable for a repository
  result = api_instance.create_repository_pipeline_variable(workspace, repo_slug, pipeline_variable)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_repository_pipeline_variable: #{e}"
end
```

#### Using the create_repository_pipeline_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> create_repository_pipeline_variable_with_http_info(workspace, repo_slug, pipeline_variable)

```ruby
begin
  # Create a variable for a repository
  data, status_code, headers = api_instance.create_repository_pipeline_variable_with_http_info(workspace, repo_slug, pipeline_variable)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->create_repository_pipeline_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_variable** | [**PipelineVariable**](PipelineVariable.md) | The variable to create. |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_deployment_variable

> delete_deployment_variable(workspace, repo_slug, environment_uuid, variable_uuid)

Delete a variable for an environment

Delete a deployment environment level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
environment_uuid = 'environment_uuid_example' # String | The environment.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to delete.

begin
  # Delete a variable for an environment
  api_instance.delete_deployment_variable(workspace, repo_slug, environment_uuid, variable_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_deployment_variable: #{e}"
end
```

#### Using the delete_deployment_variable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_deployment_variable_with_http_info(workspace, repo_slug, environment_uuid, variable_uuid)

```ruby
begin
  # Delete a variable for an environment
  data, status_code, headers = api_instance.delete_deployment_variable_with_http_info(workspace, repo_slug, environment_uuid, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_deployment_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **environment_uuid** | **String** | The environment. |  |
| **variable_uuid** | **String** | The UUID of the variable to delete. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pipeline_variable_for_team

> delete_pipeline_variable_for_team(username, variable_uuid)

Delete a variable for a team

Delete a team level variable. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
username = 'username_example' # String | The account.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to delete.

begin
  # Delete a variable for a team
  api_instance.delete_pipeline_variable_for_team(username, variable_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_pipeline_variable_for_team: #{e}"
end
```

#### Using the delete_pipeline_variable_for_team_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pipeline_variable_for_team_with_http_info(username, variable_uuid)

```ruby
begin
  # Delete a variable for a team
  data, status_code, headers = api_instance.delete_pipeline_variable_for_team_with_http_info(username, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_pipeline_variable_for_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The account. |  |
| **variable_uuid** | **String** | The UUID of the variable to delete. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pipeline_variable_for_user

> delete_pipeline_variable_for_user(selected_user, variable_uuid)

Delete a variable for a user

Delete an account level variable. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to delete.

begin
  # Delete a variable for a user
  api_instance.delete_pipeline_variable_for_user(selected_user, variable_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_pipeline_variable_for_user: #{e}"
end
```

#### Using the delete_pipeline_variable_for_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pipeline_variable_for_user_with_http_info(selected_user, variable_uuid)

```ruby
begin
  # Delete a variable for a user
  data, status_code, headers = api_instance.delete_pipeline_variable_for_user_with_http_info(selected_user, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_pipeline_variable_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |
| **variable_uuid** | **String** | The UUID of the variable to delete. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_pipeline_variable_for_workspace

> delete_pipeline_variable_for_workspace(workspace, variable_uuid)

Delete a variable for a workspace

Delete a workspace level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to delete.

begin
  # Delete a variable for a workspace
  api_instance.delete_pipeline_variable_for_workspace(workspace, variable_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_pipeline_variable_for_workspace: #{e}"
end
```

#### Using the delete_pipeline_variable_for_workspace_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pipeline_variable_for_workspace_with_http_info(workspace, variable_uuid)

```ruby
begin
  # Delete a variable for a workspace
  data, status_code, headers = api_instance.delete_pipeline_variable_for_workspace_with_http_info(workspace, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_pipeline_variable_for_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **variable_uuid** | **String** | The UUID of the variable to delete. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_repository_pipeline_cache

> delete_repository_pipeline_cache(workspace, repo_slug, cache_uuid)

Delete a cache

Delete a repository cache.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | The account.
repo_slug = 'repo_slug_example' # String | The repository.
cache_uuid = 'cache_uuid_example' # String | The UUID of the cache to delete.

begin
  # Delete a cache
  api_instance.delete_repository_pipeline_cache(workspace, repo_slug, cache_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_cache: #{e}"
end
```

#### Using the delete_repository_pipeline_cache_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_pipeline_cache_with_http_info(workspace, repo_slug, cache_uuid)

```ruby
begin
  # Delete a cache
  data, status_code, headers = api_instance.delete_repository_pipeline_cache_with_http_info(workspace, repo_slug, cache_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_cache_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The account. |  |
| **repo_slug** | **String** | The repository. |  |
| **cache_uuid** | **String** | The UUID of the cache to delete. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_repository_pipeline_caches

> delete_repository_pipeline_caches(workspace, repo_slug, name)

Delete caches

Delete repository cache versions by name.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | The account.
repo_slug = 'repo_slug_example' # String | The repository.
name = 'name_example' # String | The cache name.

begin
  # Delete caches
  api_instance.delete_repository_pipeline_caches(workspace, repo_slug, name)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_caches: #{e}"
end
```

#### Using the delete_repository_pipeline_caches_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_pipeline_caches_with_http_info(workspace, repo_slug, name)

```ruby
begin
  # Delete caches
  data, status_code, headers = api_instance.delete_repository_pipeline_caches_with_http_info(workspace, repo_slug, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_caches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The account. |  |
| **repo_slug** | **String** | The repository. |  |
| **name** | **String** | The cache name. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_repository_pipeline_key_pair

> delete_repository_pipeline_key_pair(workspace, repo_slug)

Delete SSH key pair

Delete the repository SSH key pair.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # Delete SSH key pair
  api_instance.delete_repository_pipeline_key_pair(workspace, repo_slug)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_key_pair: #{e}"
end
```

#### Using the delete_repository_pipeline_key_pair_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_pipeline_key_pair_with_http_info(workspace, repo_slug)

```ruby
begin
  # Delete SSH key pair
  data, status_code, headers = api_instance.delete_repository_pipeline_key_pair_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_key_pair_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_repository_pipeline_known_host

> delete_repository_pipeline_known_host(workspace, repo_slug, known_host_uuid)

Delete a known host

Delete a repository level known host.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
known_host_uuid = 'known_host_uuid_example' # String | The UUID of the known host to delete.

begin
  # Delete a known host
  api_instance.delete_repository_pipeline_known_host(workspace, repo_slug, known_host_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_known_host: #{e}"
end
```

#### Using the delete_repository_pipeline_known_host_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_pipeline_known_host_with_http_info(workspace, repo_slug, known_host_uuid)

```ruby
begin
  # Delete a known host
  data, status_code, headers = api_instance.delete_repository_pipeline_known_host_with_http_info(workspace, repo_slug, known_host_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_known_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **known_host_uuid** | **String** | The UUID of the known host to delete. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_repository_pipeline_schedule

> delete_repository_pipeline_schedule(workspace, repo_slug, schedule_uuid)

Delete a schedule

Delete a schedule.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
schedule_uuid = 'schedule_uuid_example' # String | The uuid of the schedule.

begin
  # Delete a schedule
  api_instance.delete_repository_pipeline_schedule(workspace, repo_slug, schedule_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_schedule: #{e}"
end
```

#### Using the delete_repository_pipeline_schedule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_pipeline_schedule_with_http_info(workspace, repo_slug, schedule_uuid)

```ruby
begin
  # Delete a schedule
  data, status_code, headers = api_instance.delete_repository_pipeline_schedule_with_http_info(workspace, repo_slug, schedule_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **schedule_uuid** | **String** | The uuid of the schedule. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_repository_pipeline_variable

> delete_repository_pipeline_variable(workspace, repo_slug, variable_uuid)

Delete a variable for a repository

Delete a repository level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to delete.

begin
  # Delete a variable for a repository
  api_instance.delete_repository_pipeline_variable(workspace, repo_slug, variable_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_variable: #{e}"
end
```

#### Using the delete_repository_pipeline_variable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_repository_pipeline_variable_with_http_info(workspace, repo_slug, variable_uuid)

```ruby
begin
  # Delete a variable for a repository
  data, status_code, headers = api_instance.delete_repository_pipeline_variable_with_http_info(workspace, repo_slug, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->delete_repository_pipeline_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **variable_uuid** | **String** | The UUID of the variable to delete. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deployment_variables

> <PaginatedDeploymentVariable> get_deployment_variables(workspace, repo_slug, environment_uuid)

List variables for an environment

Find deployment environment level variables.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
environment_uuid = 'environment_uuid_example' # String | The environment.

begin
  # List variables for an environment
  result = api_instance.get_deployment_variables(workspace, repo_slug, environment_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_deployment_variables: #{e}"
end
```

#### Using the get_deployment_variables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDeploymentVariable>, Integer, Hash)> get_deployment_variables_with_http_info(workspace, repo_slug, environment_uuid)

```ruby
begin
  # List variables for an environment
  data, status_code, headers = api_instance.get_deployment_variables_with_http_info(workspace, repo_slug, environment_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDeploymentVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_deployment_variables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **environment_uuid** | **String** | The environment. |  |

### Return type

[**PaginatedDeploymentVariable**](PaginatedDeploymentVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_oidc_configuration

> get_oidc_configuration(workspace)

Get OpenID configuration for OIDC in Pipelines

This is part of OpenID Connect for Pipelines, see https://support.atlassian.com/bitbucket-cloud/docs/integrate-pipelines-with-resource-servers-using-oidc/

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.

begin
  # Get OpenID configuration for OIDC in Pipelines
  api_instance.get_oidc_configuration(workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_oidc_configuration: #{e}"
end
```

#### Using the get_oidc_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_oidc_configuration_with_http_info(workspace)

```ruby
begin
  # Get OpenID configuration for OIDC in Pipelines
  data, status_code, headers = api_instance.get_oidc_configuration_with_http_info(workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_oidc_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_oidc_keys

> get_oidc_keys(workspace)

Get keys for OIDC in Pipelines

This is part of OpenID Connect for Pipelines, see https://support.atlassian.com/bitbucket-cloud/docs/integrate-pipelines-with-resource-servers-using-oidc/

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.

begin
  # Get keys for OIDC in Pipelines
  api_instance.get_oidc_keys(workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_oidc_keys: #{e}"
end
```

#### Using the get_oidc_keys_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_oidc_keys_with_http_info(workspace)

```ruby
begin
  # Get keys for OIDC in Pipelines
  data, status_code, headers = api_instance.get_oidc_keys_with_http_info(workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_oidc_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_container_log

> get_pipeline_container_log(workspace, repo_slug, pipeline_uuid, step_uuid, log_uuid)

Get the logs for the build container or a service container for a given step of a pipeline.

Retrieve the log file for a build container or service container.  This endpoint supports (and encourages!) the use of [HTTP Range requests](https://tools.ietf.org/html/rfc7233) to deal with potentially very large log files.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The UUID of the pipeline.
step_uuid = 'step_uuid_example' # String | The UUID of the step.
log_uuid = 'log_uuid_example' # String | For the main build container specify the step UUID; for a service container specify the service container UUID

begin
  # Get the logs for the build container or a service container for a given step of a pipeline.
  api_instance.get_pipeline_container_log(workspace, repo_slug, pipeline_uuid, step_uuid, log_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_container_log: #{e}"
end
```

#### Using the get_pipeline_container_log_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_pipeline_container_log_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid, log_uuid)

```ruby
begin
  # Get the logs for the build container or a service container for a given step of a pipeline.
  data, status_code, headers = api_instance.get_pipeline_container_log_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid, log_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_container_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The UUID of the pipeline. |  |
| **step_uuid** | **String** | The UUID of the step. |  |
| **log_uuid** | **String** | For the main build container specify the step UUID; for a service container specify the service container UUID |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## get_pipeline_for_repository

> <Pipeline> get_pipeline_for_repository(workspace, repo_slug, pipeline_uuid)

Get a pipeline

Retrieve a specified pipeline

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The pipeline UUID.

begin
  # Get a pipeline
  result = api_instance.get_pipeline_for_repository(workspace, repo_slug, pipeline_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_for_repository: #{e}"
end
```

#### Using the get_pipeline_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> get_pipeline_for_repository_with_http_info(workspace, repo_slug, pipeline_uuid)

```ruby
begin
  # Get a pipeline
  data, status_code, headers = api_instance.get_pipeline_for_repository_with_http_info(workspace, repo_slug, pipeline_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The pipeline UUID. |  |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_step_for_repository

> <PipelineStep> get_pipeline_step_for_repository(workspace, repo_slug, pipeline_uuid, step_uuid)

Get a step of a pipeline

Retrieve a given step of a pipeline.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The UUID of the pipeline.
step_uuid = 'step_uuid_example' # String | The UUID of the step.

begin
  # Get a step of a pipeline
  result = api_instance.get_pipeline_step_for_repository(workspace, repo_slug, pipeline_uuid, step_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_step_for_repository: #{e}"
end
```

#### Using the get_pipeline_step_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineStep>, Integer, Hash)> get_pipeline_step_for_repository_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid)

```ruby
begin
  # Get a step of a pipeline
  data, status_code, headers = api_instance.get_pipeline_step_for_repository_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineStep>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_step_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The UUID of the pipeline. |  |
| **step_uuid** | **String** | The UUID of the step. |  |

### Return type

[**PipelineStep**](PipelineStep.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_step_log_for_repository

> get_pipeline_step_log_for_repository(workspace, repo_slug, pipeline_uuid, step_uuid)

Get log file for a step

Retrieve the log file for a given step of a pipeline.  This endpoint supports (and encourages!) the use of [HTTP Range requests](https://tools.ietf.org/html/rfc7233) to deal with potentially very large log files.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The UUID of the pipeline.
step_uuid = 'step_uuid_example' # String | The UUID of the step.

begin
  # Get log file for a step
  api_instance.get_pipeline_step_log_for_repository(workspace, repo_slug, pipeline_uuid, step_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_step_log_for_repository: #{e}"
end
```

#### Using the get_pipeline_step_log_for_repository_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_pipeline_step_log_for_repository_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid)

```ruby
begin
  # Get log file for a step
  data, status_code, headers = api_instance.get_pipeline_step_log_for_repository_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_step_log_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The UUID of the pipeline. |  |
| **step_uuid** | **String** | The UUID of the step. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream


## get_pipeline_steps_for_repository

> <PaginatedPipelineSteps> get_pipeline_steps_for_repository(workspace, repo_slug, pipeline_uuid)

List steps for a pipeline

Find steps for the given pipeline.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The UUID of the pipeline.

begin
  # List steps for a pipeline
  result = api_instance.get_pipeline_steps_for_repository(workspace, repo_slug, pipeline_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_steps_for_repository: #{e}"
end
```

#### Using the get_pipeline_steps_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineSteps>, Integer, Hash)> get_pipeline_steps_for_repository_with_http_info(workspace, repo_slug, pipeline_uuid)

```ruby
begin
  # List steps for a pipeline
  data, status_code, headers = api_instance.get_pipeline_steps_for_repository_with_http_info(workspace, repo_slug, pipeline_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineSteps>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_steps_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The UUID of the pipeline. |  |

### Return type

[**PaginatedPipelineSteps**](PaginatedPipelineSteps.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_test_report_test_case_reasons

> get_pipeline_test_report_test_case_reasons(workspace, repo_slug, pipeline_uuid, step_uuid, test_case_uuid)

Get test case reasons (output) for a given test case in a step of a pipeline.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The UUID of the pipeline.
step_uuid = 'step_uuid_example' # String | The UUID of the step.
test_case_uuid = 'test_case_uuid_example' # String | The UUID of the test case.

begin
  # Get test case reasons (output) for a given test case in a step of a pipeline.
  api_instance.get_pipeline_test_report_test_case_reasons(workspace, repo_slug, pipeline_uuid, step_uuid, test_case_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_test_report_test_case_reasons: #{e}"
end
```

#### Using the get_pipeline_test_report_test_case_reasons_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_pipeline_test_report_test_case_reasons_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid, test_case_uuid)

```ruby
begin
  # Get test case reasons (output) for a given test case in a step of a pipeline.
  data, status_code, headers = api_instance.get_pipeline_test_report_test_case_reasons_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid, test_case_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_test_report_test_case_reasons_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The UUID of the pipeline. |  |
| **step_uuid** | **String** | The UUID of the step. |  |
| **test_case_uuid** | **String** | The UUID of the test case. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_test_report_test_cases

> get_pipeline_test_report_test_cases(workspace, repo_slug, pipeline_uuid, step_uuid)

Get test cases for a given step of a pipeline.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The UUID of the pipeline.
step_uuid = 'step_uuid_example' # String | The UUID of the step.

begin
  # Get test cases for a given step of a pipeline.
  api_instance.get_pipeline_test_report_test_cases(workspace, repo_slug, pipeline_uuid, step_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_test_report_test_cases: #{e}"
end
```

#### Using the get_pipeline_test_report_test_cases_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_pipeline_test_report_test_cases_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid)

```ruby
begin
  # Get test cases for a given step of a pipeline.
  data, status_code, headers = api_instance.get_pipeline_test_report_test_cases_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_test_report_test_cases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The UUID of the pipeline. |  |
| **step_uuid** | **String** | The UUID of the step. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_test_reports

> get_pipeline_test_reports(workspace, repo_slug, pipeline_uuid, step_uuid)

Get a summary of test reports for a given step of a pipeline.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The UUID of the pipeline.
step_uuid = 'step_uuid_example' # String | The UUID of the step.

begin
  # Get a summary of test reports for a given step of a pipeline.
  api_instance.get_pipeline_test_reports(workspace, repo_slug, pipeline_uuid, step_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_test_reports: #{e}"
end
```

#### Using the get_pipeline_test_reports_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_pipeline_test_reports_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid)

```ruby
begin
  # Get a summary of test reports for a given step of a pipeline.
  data, status_code, headers = api_instance.get_pipeline_test_reports_with_http_info(workspace, repo_slug, pipeline_uuid, step_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_test_reports_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The UUID of the pipeline. |  |
| **step_uuid** | **String** | The UUID of the step. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_variable_for_team

> <PipelineVariable> get_pipeline_variable_for_team(username, variable_uuid)

Get a variable for a team

Retrieve a team level variable. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
username = 'username_example' # String | The account.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to retrieve.

begin
  # Get a variable for a team
  result = api_instance.get_pipeline_variable_for_team(username, variable_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variable_for_team: #{e}"
end
```

#### Using the get_pipeline_variable_for_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> get_pipeline_variable_for_team_with_http_info(username, variable_uuid)

```ruby
begin
  # Get a variable for a team
  data, status_code, headers = api_instance.get_pipeline_variable_for_team_with_http_info(username, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variable_for_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The account. |  |
| **variable_uuid** | **String** | The UUID of the variable to retrieve. |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_variable_for_user

> <PipelineVariable> get_pipeline_variable_for_user(selected_user, variable_uuid)

Get a variable for a user

Retrieve a user level variable. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to retrieve.

begin
  # Get a variable for a user
  result = api_instance.get_pipeline_variable_for_user(selected_user, variable_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variable_for_user: #{e}"
end
```

#### Using the get_pipeline_variable_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> get_pipeline_variable_for_user_with_http_info(selected_user, variable_uuid)

```ruby
begin
  # Get a variable for a user
  data, status_code, headers = api_instance.get_pipeline_variable_for_user_with_http_info(selected_user, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variable_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |
| **variable_uuid** | **String** | The UUID of the variable to retrieve. |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_variable_for_workspace

> <PipelineVariable> get_pipeline_variable_for_workspace(workspace, variable_uuid)

Get variable for a workspace

Retrieve a workspace level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to retrieve.

begin
  # Get variable for a workspace
  result = api_instance.get_pipeline_variable_for_workspace(workspace, variable_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variable_for_workspace: #{e}"
end
```

#### Using the get_pipeline_variable_for_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> get_pipeline_variable_for_workspace_with_http_info(workspace, variable_uuid)

```ruby
begin
  # Get variable for a workspace
  data, status_code, headers = api_instance.get_pipeline_variable_for_workspace_with_http_info(workspace, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variable_for_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **variable_uuid** | **String** | The UUID of the variable to retrieve. |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_variables_for_team

> <PaginatedPipelineVariables> get_pipeline_variables_for_team(username)

List variables for an account

Find account level variables. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
username = 'username_example' # String | The account.

begin
  # List variables for an account
  result = api_instance.get_pipeline_variables_for_team(username)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variables_for_team: #{e}"
end
```

#### Using the get_pipeline_variables_for_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineVariables>, Integer, Hash)> get_pipeline_variables_for_team_with_http_info(username)

```ruby
begin
  # List variables for an account
  data, status_code, headers = api_instance.get_pipeline_variables_for_team_with_http_info(username)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineVariables>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variables_for_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The account. |  |

### Return type

[**PaginatedPipelineVariables**](PaginatedPipelineVariables.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_variables_for_user

> <PaginatedPipelineVariables> get_pipeline_variables_for_user(selected_user)

List variables for a user

Find user level variables. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.

begin
  # List variables for a user
  result = api_instance.get_pipeline_variables_for_user(selected_user)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variables_for_user: #{e}"
end
```

#### Using the get_pipeline_variables_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineVariables>, Integer, Hash)> get_pipeline_variables_for_user_with_http_info(selected_user)

```ruby
begin
  # List variables for a user
  data, status_code, headers = api_instance.get_pipeline_variables_for_user_with_http_info(selected_user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineVariables>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variables_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |

### Return type

[**PaginatedPipelineVariables**](PaginatedPipelineVariables.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_variables_for_workspace

> <PaginatedPipelineVariables> get_pipeline_variables_for_workspace(workspace)

List variables for a workspace

Find workspace level variables.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.

begin
  # List variables for a workspace
  result = api_instance.get_pipeline_variables_for_workspace(workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variables_for_workspace: #{e}"
end
```

#### Using the get_pipeline_variables_for_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineVariables>, Integer, Hash)> get_pipeline_variables_for_workspace_with_http_info(workspace)

```ruby
begin
  # List variables for a workspace
  data, status_code, headers = api_instance.get_pipeline_variables_for_workspace_with_http_info(workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineVariables>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_variables_for_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |

### Return type

[**PaginatedPipelineVariables**](PaginatedPipelineVariables.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipelines_for_repository

> <PaginatedPipelines> get_pipelines_for_repository(workspace, repo_slug)

List pipelines

Find pipelines

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # List pipelines
  result = api_instance.get_pipelines_for_repository(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipelines_for_repository: #{e}"
end
```

#### Using the get_pipelines_for_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelines>, Integer, Hash)> get_pipelines_for_repository_with_http_info(workspace, repo_slug)

```ruby
begin
  # List pipelines
  data, status_code, headers = api_instance.get_pipelines_for_repository_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelines>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_pipelines_for_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PaginatedPipelines**](PaginatedPipelines.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_cache_content_uri

> <PipelineCacheContentUri> get_repository_pipeline_cache_content_uri(workspace, repo_slug, cache_uuid)

Get cache content URI

Retrieve the URI of the content of the specified cache.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | The account.
repo_slug = 'repo_slug_example' # String | The repository.
cache_uuid = 'cache_uuid_example' # String | The UUID of the cache.

begin
  # Get cache content URI
  result = api_instance.get_repository_pipeline_cache_content_uri(workspace, repo_slug, cache_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_cache_content_uri: #{e}"
end
```

#### Using the get_repository_pipeline_cache_content_uri_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineCacheContentUri>, Integer, Hash)> get_repository_pipeline_cache_content_uri_with_http_info(workspace, repo_slug, cache_uuid)

```ruby
begin
  # Get cache content URI
  data, status_code, headers = api_instance.get_repository_pipeline_cache_content_uri_with_http_info(workspace, repo_slug, cache_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineCacheContentUri>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_cache_content_uri_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The account. |  |
| **repo_slug** | **String** | The repository. |  |
| **cache_uuid** | **String** | The UUID of the cache. |  |

### Return type

[**PipelineCacheContentUri**](PipelineCacheContentUri.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_caches

> <PaginatedPipelineCaches> get_repository_pipeline_caches(workspace, repo_slug)

List caches

Retrieve the repository pipelines caches.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | The account.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # List caches
  result = api_instance.get_repository_pipeline_caches(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_caches: #{e}"
end
```

#### Using the get_repository_pipeline_caches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineCaches>, Integer, Hash)> get_repository_pipeline_caches_with_http_info(workspace, repo_slug)

```ruby
begin
  # List caches
  data, status_code, headers = api_instance.get_repository_pipeline_caches_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineCaches>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_caches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The account. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PaginatedPipelineCaches**](PaginatedPipelineCaches.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_config

> <PipelinesConfig> get_repository_pipeline_config(workspace, repo_slug)

Get configuration

Retrieve the repository pipelines configuration.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | The account.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # Get configuration
  result = api_instance.get_repository_pipeline_config(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_config: #{e}"
end
```

#### Using the get_repository_pipeline_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelinesConfig>, Integer, Hash)> get_repository_pipeline_config_with_http_info(workspace, repo_slug)

```ruby
begin
  # Get configuration
  data, status_code, headers = api_instance.get_repository_pipeline_config_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelinesConfig>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | The account. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PipelinesConfig**](PipelinesConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_known_host

> <PipelineKnownHost> get_repository_pipeline_known_host(workspace, repo_slug, known_host_uuid)

Get a known host

Retrieve a repository level known host.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
known_host_uuid = 'known_host_uuid_example' # String | The UUID of the known host to retrieve.

begin
  # Get a known host
  result = api_instance.get_repository_pipeline_known_host(workspace, repo_slug, known_host_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_known_host: #{e}"
end
```

#### Using the get_repository_pipeline_known_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineKnownHost>, Integer, Hash)> get_repository_pipeline_known_host_with_http_info(workspace, repo_slug, known_host_uuid)

```ruby
begin
  # Get a known host
  data, status_code, headers = api_instance.get_repository_pipeline_known_host_with_http_info(workspace, repo_slug, known_host_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineKnownHost>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_known_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **known_host_uuid** | **String** | The UUID of the known host to retrieve. |  |

### Return type

[**PipelineKnownHost**](PipelineKnownHost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_known_hosts

> <PaginatedPipelineKnownHosts> get_repository_pipeline_known_hosts(workspace, repo_slug)

List known hosts

Find repository level known hosts.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # List known hosts
  result = api_instance.get_repository_pipeline_known_hosts(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_known_hosts: #{e}"
end
```

#### Using the get_repository_pipeline_known_hosts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineKnownHosts>, Integer, Hash)> get_repository_pipeline_known_hosts_with_http_info(workspace, repo_slug)

```ruby
begin
  # List known hosts
  data, status_code, headers = api_instance.get_repository_pipeline_known_hosts_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineKnownHosts>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_known_hosts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PaginatedPipelineKnownHosts**](PaginatedPipelineKnownHosts.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_schedule

> <PipelineSchedule> get_repository_pipeline_schedule(workspace, repo_slug, schedule_uuid)

Get a schedule

Retrieve a schedule by its UUID.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
schedule_uuid = 'schedule_uuid_example' # String | The uuid of the schedule.

begin
  # Get a schedule
  result = api_instance.get_repository_pipeline_schedule(workspace, repo_slug, schedule_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_schedule: #{e}"
end
```

#### Using the get_repository_pipeline_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineSchedule>, Integer, Hash)> get_repository_pipeline_schedule_with_http_info(workspace, repo_slug, schedule_uuid)

```ruby
begin
  # Get a schedule
  data, status_code, headers = api_instance.get_repository_pipeline_schedule_with_http_info(workspace, repo_slug, schedule_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineSchedule>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **schedule_uuid** | **String** | The uuid of the schedule. |  |

### Return type

[**PipelineSchedule**](PipelineSchedule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_schedule_executions

> <PaginatedPipelineScheduleExecutions> get_repository_pipeline_schedule_executions(workspace, repo_slug, schedule_uuid)

List executions of a schedule

Retrieve the executions of a given schedule.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
schedule_uuid = 'schedule_uuid_example' # String | The uuid of the schedule.

begin
  # List executions of a schedule
  result = api_instance.get_repository_pipeline_schedule_executions(workspace, repo_slug, schedule_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_schedule_executions: #{e}"
end
```

#### Using the get_repository_pipeline_schedule_executions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineScheduleExecutions>, Integer, Hash)> get_repository_pipeline_schedule_executions_with_http_info(workspace, repo_slug, schedule_uuid)

```ruby
begin
  # List executions of a schedule
  data, status_code, headers = api_instance.get_repository_pipeline_schedule_executions_with_http_info(workspace, repo_slug, schedule_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineScheduleExecutions>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_schedule_executions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **schedule_uuid** | **String** | The uuid of the schedule. |  |

### Return type

[**PaginatedPipelineScheduleExecutions**](PaginatedPipelineScheduleExecutions.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_schedules

> <PaginatedPipelineSchedules> get_repository_pipeline_schedules(workspace, repo_slug)

List schedules

Retrieve the configured schedules for the given repository.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # List schedules
  result = api_instance.get_repository_pipeline_schedules(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_schedules: #{e}"
end
```

#### Using the get_repository_pipeline_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineSchedules>, Integer, Hash)> get_repository_pipeline_schedules_with_http_info(workspace, repo_slug)

```ruby
begin
  # List schedules
  data, status_code, headers = api_instance.get_repository_pipeline_schedules_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineSchedules>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_schedules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PaginatedPipelineSchedules**](PaginatedPipelineSchedules.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_ssh_key_pair

> <PipelineSshKeyPair> get_repository_pipeline_ssh_key_pair(workspace, repo_slug)

Get SSH key pair

Retrieve the repository SSH key pair excluding the SSH private key. The private key is a write only field and will never be exposed in the logs or the REST API.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # Get SSH key pair
  result = api_instance.get_repository_pipeline_ssh_key_pair(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_ssh_key_pair: #{e}"
end
```

#### Using the get_repository_pipeline_ssh_key_pair_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineSshKeyPair>, Integer, Hash)> get_repository_pipeline_ssh_key_pair_with_http_info(workspace, repo_slug)

```ruby
begin
  # Get SSH key pair
  data, status_code, headers = api_instance.get_repository_pipeline_ssh_key_pair_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineSshKeyPair>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_ssh_key_pair_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PipelineSshKeyPair**](PipelineSshKeyPair.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_variable

> <PipelineVariable> get_repository_pipeline_variable(workspace, repo_slug, variable_uuid)

Get a variable for a repository

Retrieve a repository level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to retrieve.

begin
  # Get a variable for a repository
  result = api_instance.get_repository_pipeline_variable(workspace, repo_slug, variable_uuid)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_variable: #{e}"
end
```

#### Using the get_repository_pipeline_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> get_repository_pipeline_variable_with_http_info(workspace, repo_slug, variable_uuid)

```ruby
begin
  # Get a variable for a repository
  data, status_code, headers = api_instance.get_repository_pipeline_variable_with_http_info(workspace, repo_slug, variable_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **variable_uuid** | **String** | The UUID of the variable to retrieve. |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_pipeline_variables

> <PaginatedPipelineVariables> get_repository_pipeline_variables(workspace, repo_slug)

List variables for a repository

Find repository level variables.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.

begin
  # List variables for a repository
  result = api_instance.get_repository_pipeline_variables(workspace, repo_slug)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_variables: #{e}"
end
```

#### Using the get_repository_pipeline_variables_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedPipelineVariables>, Integer, Hash)> get_repository_pipeline_variables_with_http_info(workspace, repo_slug)

```ruby
begin
  # List variables for a repository
  data, status_code, headers = api_instance.get_repository_pipeline_variables_with_http_info(workspace, repo_slug)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedPipelineVariables>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->get_repository_pipeline_variables_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |

### Return type

[**PaginatedPipelineVariables**](PaginatedPipelineVariables.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## stop_pipeline

> stop_pipeline(workspace, repo_slug, pipeline_uuid)

Stop a pipeline

Signal the stop of a pipeline and all of its steps that not have completed yet.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_uuid = 'pipeline_uuid_example' # String | The UUID of the pipeline.

begin
  # Stop a pipeline
  api_instance.stop_pipeline(workspace, repo_slug, pipeline_uuid)
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->stop_pipeline: #{e}"
end
```

#### Using the stop_pipeline_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> stop_pipeline_with_http_info(workspace, repo_slug, pipeline_uuid)

```ruby
begin
  # Stop a pipeline
  data, status_code, headers = api_instance.stop_pipeline_with_http_info(workspace, repo_slug, pipeline_uuid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->stop_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_uuid** | **String** | The UUID of the pipeline. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_deployment_variable

> <DeploymentVariable> update_deployment_variable(workspace, repo_slug, environment_uuid, variable_uuid, deployment_variable)

Update a variable for an environment

Update a deployment environment level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
environment_uuid = 'environment_uuid_example' # String | The environment.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to update.
deployment_variable = Bitbucket::DeploymentVariable.new # DeploymentVariable | The updated deployment variable.

begin
  # Update a variable for an environment
  result = api_instance.update_deployment_variable(workspace, repo_slug, environment_uuid, variable_uuid, deployment_variable)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_deployment_variable: #{e}"
end
```

#### Using the update_deployment_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeploymentVariable>, Integer, Hash)> update_deployment_variable_with_http_info(workspace, repo_slug, environment_uuid, variable_uuid, deployment_variable)

```ruby
begin
  # Update a variable for an environment
  data, status_code, headers = api_instance.update_deployment_variable_with_http_info(workspace, repo_slug, environment_uuid, variable_uuid, deployment_variable)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeploymentVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_deployment_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **environment_uuid** | **String** | The environment. |  |
| **variable_uuid** | **String** | The UUID of the variable to update. |  |
| **deployment_variable** | [**DeploymentVariable**](DeploymentVariable.md) | The updated deployment variable. |  |

### Return type

[**DeploymentVariable**](DeploymentVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pipeline_variable_for_team

> <PipelineVariable> update_pipeline_variable_for_team(username, variable_uuid, pipeline_variable)

Update a variable for a team

Update a team level variable. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
username = 'username_example' # String | The account.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable.
pipeline_variable = Bitbucket::PipelineVariable.new # PipelineVariable | The updated variable.

begin
  # Update a variable for a team
  result = api_instance.update_pipeline_variable_for_team(username, variable_uuid, pipeline_variable)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_pipeline_variable_for_team: #{e}"
end
```

#### Using the update_pipeline_variable_for_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> update_pipeline_variable_for_team_with_http_info(username, variable_uuid, pipeline_variable)

```ruby
begin
  # Update a variable for a team
  data, status_code, headers = api_instance.update_pipeline_variable_for_team_with_http_info(username, variable_uuid, pipeline_variable)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_pipeline_variable_for_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The account. |  |
| **variable_uuid** | **String** | The UUID of the variable. |  |
| **pipeline_variable** | [**PipelineVariable**](PipelineVariable.md) | The updated variable. |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pipeline_variable_for_user

> <PipelineVariable> update_pipeline_variable_for_user(selected_user, variable_uuid, pipeline_variable)

Update a variable for a user

Update a user level variable. This endpoint has been deprecated, and you should use the new workspaces endpoint. For more information, see [the announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-teams-deprecation/).

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
selected_user = 'selected_user_example' # String | Either the UUID of the account surrounded by curly-braces, for example `{account UUID}`, OR an Atlassian Account ID.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable.
pipeline_variable = Bitbucket::PipelineVariable.new # PipelineVariable | The updated variable.

begin
  # Update a variable for a user
  result = api_instance.update_pipeline_variable_for_user(selected_user, variable_uuid, pipeline_variable)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_pipeline_variable_for_user: #{e}"
end
```

#### Using the update_pipeline_variable_for_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> update_pipeline_variable_for_user_with_http_info(selected_user, variable_uuid, pipeline_variable)

```ruby
begin
  # Update a variable for a user
  data, status_code, headers = api_instance.update_pipeline_variable_for_user_with_http_info(selected_user, variable_uuid, pipeline_variable)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_pipeline_variable_for_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selected_user** | **String** | Either the UUID of the account surrounded by curly-braces, for example &#x60;{account UUID}&#x60;, OR an Atlassian Account ID. |  |
| **variable_uuid** | **String** | The UUID of the variable. |  |
| **pipeline_variable** | [**PipelineVariable**](PipelineVariable.md) | The updated variable. |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_pipeline_variable_for_workspace

> <PipelineVariable> update_pipeline_variable_for_workspace(workspace, variable_uuid, pipeline_variable)

Update variable for a workspace

Update a workspace level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable.
pipeline_variable = Bitbucket::PipelineVariable.new # PipelineVariable | The updated variable.

begin
  # Update variable for a workspace
  result = api_instance.update_pipeline_variable_for_workspace(workspace, variable_uuid, pipeline_variable)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_pipeline_variable_for_workspace: #{e}"
end
```

#### Using the update_pipeline_variable_for_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> update_pipeline_variable_for_workspace_with_http_info(workspace, variable_uuid, pipeline_variable)

```ruby
begin
  # Update variable for a workspace
  data, status_code, headers = api_instance.update_pipeline_variable_for_workspace_with_http_info(workspace, variable_uuid, pipeline_variable)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_pipeline_variable_for_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **variable_uuid** | **String** | The UUID of the variable. |  |
| **pipeline_variable** | [**PipelineVariable**](PipelineVariable.md) | The updated variable. |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_repository_build_number

> <PipelineBuildNumber> update_repository_build_number(workspace, repo_slug, pipeline_build_number)

Update the next build number

Update the next build number that should be assigned to a pipeline. The next build number that will be configured has to be strictly higher than the current latest build number for this repository.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_build_number = Bitbucket::PipelineBuildNumber.new # PipelineBuildNumber | The build number to update.

begin
  # Update the next build number
  result = api_instance.update_repository_build_number(workspace, repo_slug, pipeline_build_number)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_build_number: #{e}"
end
```

#### Using the update_repository_build_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineBuildNumber>, Integer, Hash)> update_repository_build_number_with_http_info(workspace, repo_slug, pipeline_build_number)

```ruby
begin
  # Update the next build number
  data, status_code, headers = api_instance.update_repository_build_number_with_http_info(workspace, repo_slug, pipeline_build_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineBuildNumber>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_build_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_build_number** | [**PipelineBuildNumber**](PipelineBuildNumber.md) | The build number to update. |  |

### Return type

[**PipelineBuildNumber**](PipelineBuildNumber.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_repository_pipeline_config

> <PipelinesConfig> update_repository_pipeline_config(workspace, repo_slug, pipelines_config)

Update configuration

Update the pipelines configuration for a repository.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipelines_config = Bitbucket::PipelinesConfig.new({type: 'type_example'}) # PipelinesConfig | The updated repository pipelines configuration.

begin
  # Update configuration
  result = api_instance.update_repository_pipeline_config(workspace, repo_slug, pipelines_config)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_config: #{e}"
end
```

#### Using the update_repository_pipeline_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelinesConfig>, Integer, Hash)> update_repository_pipeline_config_with_http_info(workspace, repo_slug, pipelines_config)

```ruby
begin
  # Update configuration
  data, status_code, headers = api_instance.update_repository_pipeline_config_with_http_info(workspace, repo_slug, pipelines_config)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelinesConfig>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipelines_config** | [**PipelinesConfig**](PipelinesConfig.md) | The updated repository pipelines configuration. |  |

### Return type

[**PipelinesConfig**](PipelinesConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_repository_pipeline_key_pair

> <PipelineSshKeyPair> update_repository_pipeline_key_pair(workspace, repo_slug, pipeline_ssh_key_pair)

Update SSH key pair

Create or update the repository SSH key pair. The private key will be set as a default SSH identity in your build container.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
pipeline_ssh_key_pair = Bitbucket::PipelineSshKeyPair.new({type: 'type_example'}) # PipelineSshKeyPair | The created or updated SSH key pair.

begin
  # Update SSH key pair
  result = api_instance.update_repository_pipeline_key_pair(workspace, repo_slug, pipeline_ssh_key_pair)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_key_pair: #{e}"
end
```

#### Using the update_repository_pipeline_key_pair_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineSshKeyPair>, Integer, Hash)> update_repository_pipeline_key_pair_with_http_info(workspace, repo_slug, pipeline_ssh_key_pair)

```ruby
begin
  # Update SSH key pair
  data, status_code, headers = api_instance.update_repository_pipeline_key_pair_with_http_info(workspace, repo_slug, pipeline_ssh_key_pair)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineSshKeyPair>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_key_pair_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **pipeline_ssh_key_pair** | [**PipelineSshKeyPair**](PipelineSshKeyPair.md) | The created or updated SSH key pair. |  |

### Return type

[**PipelineSshKeyPair**](PipelineSshKeyPair.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_repository_pipeline_known_host

> <PipelineKnownHost> update_repository_pipeline_known_host(workspace, repo_slug, known_host_uuid, pipeline_known_host)

Update a known host

Update a repository level known host.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
known_host_uuid = 'known_host_uuid_example' # String | The UUID of the known host to update.
pipeline_known_host = Bitbucket::PipelineKnownHost.new # PipelineKnownHost | The updated known host.

begin
  # Update a known host
  result = api_instance.update_repository_pipeline_known_host(workspace, repo_slug, known_host_uuid, pipeline_known_host)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_known_host: #{e}"
end
```

#### Using the update_repository_pipeline_known_host_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineKnownHost>, Integer, Hash)> update_repository_pipeline_known_host_with_http_info(workspace, repo_slug, known_host_uuid, pipeline_known_host)

```ruby
begin
  # Update a known host
  data, status_code, headers = api_instance.update_repository_pipeline_known_host_with_http_info(workspace, repo_slug, known_host_uuid, pipeline_known_host)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineKnownHost>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_known_host_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **known_host_uuid** | **String** | The UUID of the known host to update. |  |
| **pipeline_known_host** | [**PipelineKnownHost**](PipelineKnownHost.md) | The updated known host. |  |

### Return type

[**PipelineKnownHost**](PipelineKnownHost.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_repository_pipeline_schedule

> <PipelineSchedule> update_repository_pipeline_schedule(workspace, repo_slug, schedule_uuid, pipeline_schedule)

Update a schedule

Update a schedule.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
schedule_uuid = 'schedule_uuid_example' # String | The uuid of the schedule.
pipeline_schedule = Bitbucket::PipelineSchedule.new # PipelineSchedule | The schedule to update.

begin
  # Update a schedule
  result = api_instance.update_repository_pipeline_schedule(workspace, repo_slug, schedule_uuid, pipeline_schedule)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_schedule: #{e}"
end
```

#### Using the update_repository_pipeline_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineSchedule>, Integer, Hash)> update_repository_pipeline_schedule_with_http_info(workspace, repo_slug, schedule_uuid, pipeline_schedule)

```ruby
begin
  # Update a schedule
  data, status_code, headers = api_instance.update_repository_pipeline_schedule_with_http_info(workspace, repo_slug, schedule_uuid, pipeline_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineSchedule>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **schedule_uuid** | **String** | The uuid of the schedule. |  |
| **pipeline_schedule** | [**PipelineSchedule**](PipelineSchedule.md) | The schedule to update. |  |

### Return type

[**PipelineSchedule**](PipelineSchedule.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_repository_pipeline_variable

> <PipelineVariable> update_repository_pipeline_variable(workspace, repo_slug, variable_uuid, pipeline_variable)

Update a variable for a repository

Update a repository level variable.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::PipelinesApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
variable_uuid = 'variable_uuid_example' # String | The UUID of the variable to update.
pipeline_variable = Bitbucket::PipelineVariable.new # PipelineVariable | The updated variable

begin
  # Update a variable for a repository
  result = api_instance.update_repository_pipeline_variable(workspace, repo_slug, variable_uuid, pipeline_variable)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_variable: #{e}"
end
```

#### Using the update_repository_pipeline_variable_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineVariable>, Integer, Hash)> update_repository_pipeline_variable_with_http_info(workspace, repo_slug, variable_uuid, pipeline_variable)

```ruby
begin
  # Update a variable for a repository
  data, status_code, headers = api_instance.update_repository_pipeline_variable_with_http_info(workspace, repo_slug, variable_uuid, pipeline_variable)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineVariable>
rescue Bitbucket::ApiError => e
  puts "Error when calling PipelinesApi->update_repository_pipeline_variable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **variable_uuid** | **String** | The UUID of the variable to update. |  |
| **pipeline_variable** | [**PipelineVariable**](PipelineVariable.md) | The updated variable |  |

### Return type

[**PipelineVariable**](PipelineVariable.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

