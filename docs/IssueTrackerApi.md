# Bitbucket::IssueTrackerApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**repositories_workspace_repo_slug_components_component_id_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_components_component_id_get) | **GET** /repositories/{workspace}/{repo_slug}/components/{component_id} | Get a component for issues |
| [**repositories_workspace_repo_slug_components_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_components_get) | **GET** /repositories/{workspace}/{repo_slug}/components | List components |
| [**repositories_workspace_repo_slug_issues_export_post**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_export_post) | **POST** /repositories/{workspace}/{repo_slug}/issues/export | Export issues |
| [**repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/export/{repo_name}-issues-{task_id}.zip | Check issue export status |
| [**repositories_workspace_repo_slug_issues_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_get) | **GET** /repositories/{workspace}/{repo_slug}/issues | List issues |
| [**repositories_workspace_repo_slug_issues_import_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_import_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/import | Check issue import status |
| [**repositories_workspace_repo_slug_issues_import_post**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_import_post) | **POST** /repositories/{workspace}/{repo_slug}/issues/import | Import issues |
| [**repositories_workspace_repo_slug_issues_issue_id_attachments_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_attachments_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/attachments | List attachments for an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/attachments/{path} | Delete an attachment for an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_attachments_path_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_attachments_path_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/attachments/{path} | Get attachment for an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_attachments_post**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_attachments_post) | **POST** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/attachments | Upload an attachment to an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/changes/{change_id} | Get issue change object |
| [**repositories_workspace_repo_slug_issues_issue_id_changes_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_changes_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/changes | List changes on an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_changes_post**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_changes_post) | **POST** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/changes | Modify the state of an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/comments/{comment_id} | Delete a comment on an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/comments/{comment_id} | Get a comment on an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put) | **PUT** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/comments/{comment_id} | Update a comment on an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_comments_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_comments_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/comments | List comments on an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_comments_post**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_comments_post) | **POST** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/comments | Create a comment on an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_delete**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/issues/{issue_id} | Delete an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id} | Get an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_put**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_put) | **PUT** /repositories/{workspace}/{repo_slug}/issues/{issue_id} | Update an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_vote_delete**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_vote_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/vote | Remove vote for an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_vote_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_vote_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/vote | Check if current user voted for an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_vote_put**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_vote_put) | **PUT** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/vote | Vote for an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_watch_delete**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_watch_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/watch | Stop watching an issue |
| [**repositories_workspace_repo_slug_issues_issue_id_watch_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_watch_get) | **GET** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/watch | Check if current user is watching a issue |
| [**repositories_workspace_repo_slug_issues_issue_id_watch_put**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_issue_id_watch_put) | **PUT** /repositories/{workspace}/{repo_slug}/issues/{issue_id}/watch | Watch an issue |
| [**repositories_workspace_repo_slug_issues_post**](IssueTrackerApi.md#repositories_workspace_repo_slug_issues_post) | **POST** /repositories/{workspace}/{repo_slug}/issues | Create an issue |
| [**repositories_workspace_repo_slug_milestones_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_milestones_get) | **GET** /repositories/{workspace}/{repo_slug}/milestones | List milestones |
| [**repositories_workspace_repo_slug_milestones_milestone_id_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_milestones_milestone_id_get) | **GET** /repositories/{workspace}/{repo_slug}/milestones/{milestone_id} | Get a milestone |
| [**repositories_workspace_repo_slug_versions_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_versions_get) | **GET** /repositories/{workspace}/{repo_slug}/versions | List defined versions for issues |
| [**repositories_workspace_repo_slug_versions_version_id_get**](IssueTrackerApi.md#repositories_workspace_repo_slug_versions_version_id_get) | **GET** /repositories/{workspace}/{repo_slug}/versions/{version_id} | Get a defined version for issues |


## repositories_workspace_repo_slug_components_component_id_get

> <Component> repositories_workspace_repo_slug_components_component_id_get(component_id, repo_slug, workspace)

Get a component for issues

Returns the specified issue tracker component object.

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

api_instance = Bitbucket::IssueTrackerApi.new
component_id = 56 # Integer | The component's id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a component for issues
  result = api_instance.repositories_workspace_repo_slug_components_component_id_get(component_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_components_component_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_components_component_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Component>, Integer, Hash)> repositories_workspace_repo_slug_components_component_id_get_with_http_info(component_id, repo_slug, workspace)

```ruby
begin
  # Get a component for issues
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_components_component_id_get_with_http_info(component_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Component>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_components_component_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **component_id** | **Integer** | The component&#39;s id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Component**](Component.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_components_get

> <PaginatedComponents> repositories_workspace_repo_slug_components_get(repo_slug, workspace)

List components

Returns the components that have been defined in the issue tracker.  This resource is only available on repositories that have the issue tracker enabled.

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List components
  result = api_instance.repositories_workspace_repo_slug_components_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_components_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_components_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedComponents>, Integer, Hash)> repositories_workspace_repo_slug_components_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List components
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_components_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedComponents>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_components_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedComponents**](PaginatedComponents.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_export_post

> repositories_workspace_repo_slug_issues_export_post(repo_slug, workspace, opts)

Export issues

A POST request to this endpoint initiates a new background celery task that archives the repo's issues.  For example, you can run:  curl -u <username> -X POST http://api.bitbucket.org/2.0/repositories/<owner_username>/<repo_slug>/ issues/export  When the job has been accepted, it will return a 202 (Accepted) along with a unique url to this job in the 'Location' response header. This url is the endpoint for where the user can obtain their zip files.\"

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  request_body: { key: 3.56} # Hash<String, Object> | The options to apply to the export. Available options include `project_key` and `project_name` which, if specified, are used as the project key and name in the exported Jira json format. Option `send_email` specifies whether an email should be sent upon export result. Option `include_attachments` specifies whether attachments are included in the export.
}

begin
  # Export issues
  api_instance.repositories_workspace_repo_slug_issues_export_post(repo_slug, workspace, opts)
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_export_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_export_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_issues_export_post_with_http_info(repo_slug, workspace, opts)

```ruby
begin
  # Export issues
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_export_post_with_http_info(repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_export_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | The options to apply to the export. Available options include &#x60;project_key&#x60; and &#x60;project_name&#x60; which, if specified, are used as the project key and name in the exported Jira json format. Option &#x60;send_email&#x60; specifies whether an email should be sent upon export result. Option &#x60;include_attachments&#x60; specifies whether attachments are included in the export. | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get

> <IssueJobStatus> repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get(repo_name, repo_slug, task_id, workspace)

Check issue export status

This endpoint is used to poll for the progress of an issue export job and return the zip file after the job is complete. As long as the job is running, this will return a 200 response with in the response body a description of the current status.  After the job has been scheduled, but before it starts executing, this endpoint's response is:  {  \"type\": \"issue_job_status\",  \"status\": \"ACCEPTED\",  \"phase\": \"Initializing\",  \"total\": 0,  \"count\": 0,  \"pct\": 0 }   Then once it starts running, it becomes:  {  \"type\": \"issue_job_status\",  \"status\": \"STARTED\",  \"phase\": \"Attachments\",  \"total\": 15,  \"count\": 11,  \"pct\": 73 }  Once the job has successfully completed, it returns a stream of the zip file.

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_name = 'repo_name_example' # String | The name of the repo
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
task_id = 'task_id_example' # String | The ID of the export task
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Check issue export status
  result = api_instance.repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get(repo_name, repo_slug, task_id, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueJobStatus>, Integer, Hash)> repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get_with_http_info(repo_name, repo_slug, task_id, workspace)

```ruby
begin
  # Check issue export status
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get_with_http_info(repo_name, repo_slug, task_id, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueJobStatus>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_export_repo_name_issues_task_id_zip_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_name** | **String** | The name of the repo |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **task_id** | **String** | The ID of the export task |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**IssueJobStatus**](IssueJobStatus.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_get

> <PaginatedIssues> repositories_workspace_repo_slug_issues_get(repo_slug, workspace)

List issues

Returns the issues in the issue tracker.

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List issues
  result = api_instance.repositories_workspace_repo_slug_issues_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedIssues>, Integer, Hash)> repositories_workspace_repo_slug_issues_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List issues
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedIssues>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedIssues**](PaginatedIssues.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_import_get

> <IssueJobStatus> repositories_workspace_repo_slug_issues_import_get(repo_slug, workspace)

Check issue import status

When using GET, this endpoint reports the status of the current import task. Request example:  ``` $ curl -u <username> -X GET https://api.bitbucket.org/2.0/repositories/<owner_username>/<repo_slug>/issues/import ```  After the job has been scheduled, but before it starts executing, this endpoint's response is:  ``` < HTTP/1.1 202 Accepted {     \"type\": \"issue_job_status\",     \"status\": \"PENDING\",     \"phase\": \"Attachments\",     \"total\": 15,     \"count\": 0,     \"percent\": 0 } ```  Once it starts running, it is a 202 response with status STARTED and progress filled.  After it is finished, it becomes a 200 response with status SUCCESS or FAILURE.

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Check issue import status
  result = api_instance.repositories_workspace_repo_slug_issues_import_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_import_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_import_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueJobStatus>, Integer, Hash)> repositories_workspace_repo_slug_issues_import_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # Check issue import status
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_import_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueJobStatus>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_import_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**IssueJobStatus**](IssueJobStatus.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_import_post

> <IssueJobStatus> repositories_workspace_repo_slug_issues_import_post(repo_slug, workspace)

Import issues

A POST request to this endpoint will import the zip file given by the archive parameter into the repository. All existing issues will be deleted and replaced by the contents of the imported zip file.  Imports are done through a multipart/form-data POST. There is one valid and required form field, with the name \"archive,\" which needs to be a file field:  ``` $ curl -u <username> -X POST -F archive=@/path/to/file.zip https://api.bitbucket.org/2.0/repositories/<owner_username>/<repo_slug>/issues/import ```  When the import job is accepted, here is example output:  ``` < HTTP/1.1 202 Accepted  {     \"type\": \"issue_job_status\",     \"status\": \"ACCEPTED\",     \"phase\": \"Attachments\",     \"total\": 15,     \"count\": 0,     \"percent\": 0 } ```

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Import issues
  result = api_instance.repositories_workspace_repo_slug_issues_import_post(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_import_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_import_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueJobStatus>, Integer, Hash)> repositories_workspace_repo_slug_issues_import_post_with_http_info(repo_slug, workspace)

```ruby
begin
  # Import issues
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_import_post_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueJobStatus>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_import_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**IssueJobStatus**](IssueJobStatus.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_attachments_get

> <PaginatedIssueAttachments> repositories_workspace_repo_slug_issues_issue_id_attachments_get(issue_id, repo_slug, workspace)

List attachments for an issue

Returns all attachments for this issue.  This returns the files' meta data. This does not return the files' actual contents.  The files are always ordered by their upload date.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List attachments for an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_attachments_get(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_attachments_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_attachments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedIssueAttachments>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_attachments_get_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # List attachments for an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_attachments_get_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedIssueAttachments>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_attachments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedIssueAttachments**](PaginatedIssueAttachments.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete

> repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete(issue_id, path, repo_slug, workspace)

Delete an attachment for an issue

Deletes an attachment.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
path = 'path_example' # String | Path to the file.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete an attachment for an issue
  api_instance.repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete(issue_id, path, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete_with_http_info(issue_id, path, repo_slug, workspace)

```ruby
begin
  # Delete an attachment for an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete_with_http_info(issue_id, path, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_attachments_path_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **path** | **String** | Path to the file. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_attachments_path_get

> repositories_workspace_repo_slug_issues_issue_id_attachments_path_get(issue_id, path, repo_slug, workspace)

Get attachment for an issue

Returns the contents of the specified file attachment.  Note that this endpoint does not return a JSON response, but instead returns a redirect pointing to the actual file that in turn will return the raw contents.  The redirect URL contains a one-time token that has a limited lifetime. As a result, the link should not be persisted, stored, or shared.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
path = 'path_example' # String | Path to the file.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get attachment for an issue
  api_instance.repositories_workspace_repo_slug_issues_issue_id_attachments_path_get(issue_id, path, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_attachments_path_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_attachments_path_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_attachments_path_get_with_http_info(issue_id, path, repo_slug, workspace)

```ruby
begin
  # Get attachment for an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_attachments_path_get_with_http_info(issue_id, path, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_attachments_path_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **path** | **String** | Path to the file. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_attachments_post

> repositories_workspace_repo_slug_issues_issue_id_attachments_post(issue_id, repo_slug, workspace)

Upload an attachment to an issue

Upload new issue attachments.  To upload files, perform a `multipart/form-data` POST containing one or more file fields.  When a file is uploaded with the same name as an existing attachment, then the existing file will be replaced.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Upload an attachment to an issue
  api_instance.repositories_workspace_repo_slug_issues_issue_id_attachments_post(issue_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_attachments_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_attachments_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_attachments_post_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Upload an attachment to an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_attachments_post_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_attachments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get

> <IssueChange> repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get(change_id, issue_id, repo_slug, workspace)

Get issue change object

Returns the specified issue change object.  This resource is only available on repositories that have the issue tracker enabled.

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

api_instance = Bitbucket::IssueTrackerApi.new
change_id = 'change_id_example' # String | The issue change id
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get issue change object
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get(change_id, issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueChange>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get_with_http_info(change_id, issue_id, repo_slug, workspace)

```ruby
begin
  # Get issue change object
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get_with_http_info(change_id, issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueChange>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_changes_change_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_id** | **String** | The issue change id |  |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**IssueChange**](IssueChange.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_changes_get

> <PaginatedLogEntries> repositories_workspace_repo_slug_issues_issue_id_changes_get(issue_id, repo_slug, workspace, opts)

List changes on an issue

Returns the list of all changes that have been made to the specified issue. Changes are returned in chronological order with the oldest change first.  Each time an issue is edited in the UI or through the API, an immutable change record is created under the `/issues/123/changes` endpoint. It also has a comment associated with the change.  Note that this operation is changing significantly, due to privacy changes. See the [announcement](https://developer.atlassian.com/cloud/bitbucket/bitbucket-api-changes-gdpr/#changes-to-the-issue-changes-api) for details.  ``` $ curl -s https://api.bitbucket.org/2.0/repositories/evzijst/dogslow/issues/1/changes - | jq .  {   \"pagelen\": 20,   \"values\": [     {       \"changes\": {         \"priority\": {           \"new\": \"trivial\",           \"old\": \"major\"         },         \"assignee\": {           \"new\": \"\",           \"old\": \"evzijst\"         },         \"assignee_account_id\": {           \"new\": \"\",           \"old\": \"557058:c0b72ad0-1cb5-4018-9cdc-0cde8492c443\"         },         \"kind\": {           \"new\": \"enhancement\",           \"old\": \"bug\"         }       },       \"links\": {         \"self\": {           \"href\": \"https://api.bitbucket.org/2.0/repositories/evzijst/dogslow/issues/1/changes/2\"         },         \"html\": {           \"href\": \"https://bitbucket.org/evzijst/dogslow/issues/1#comment-2\"         }       },       \"issue\": {         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/evzijst/dogslow/issues/1\"           }         },         \"type\": \"issue\",         \"id\": 1,         \"repository\": {           \"links\": {             \"self\": {               \"href\": \"https://api.bitbucket.org/2.0/repositories/evzijst/dogslow\"             },             \"html\": {               \"href\": \"https://bitbucket.org/evzijst/dogslow\"             },             \"avatar\": {               \"href\": \"https://bitbucket.org/evzijst/dogslow/avatar/32/\"             }           },           \"type\": \"repository\",           \"name\": \"dogslow\",           \"full_name\": \"evzijst/dogslow\",           \"uuid\": \"{988b17c6-1a47-4e70-84ee-854d5f012bf6}\"         },         \"title\": \"Updated title\"       },       \"created_on\": \"2018-03-03T00:35:28.353630+00:00\",       \"user\": {         \"username\": \"evzijst\",         \"nickname\": \"evzijst\",         \"display_name\": \"evzijst\",         \"type\": \"user\",         \"uuid\": \"{aaa7972b-38af-4fb1-802d-6e3854c95778}\",         \"links\": {           \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/users/evzijst\"           },           \"html\": {             \"href\": \"https://bitbucket.org/evzijst/\"           },           \"avatar\": {             \"href\": \"https://bitbucket.org/account/evzijst/avatar/32/\"           }         }       },       \"message\": {         \"raw\": \"Removed assignee, changed kind and priority.\",         \"markup\": \"markdown\",         \"html\": \"<p>Removed assignee, changed kind and priority.</p>\",         \"type\": \"rendered\"       },       \"type\": \"issue_change\",       \"id\": 2     }   ],   \"page\": 1 } ```  Changes support [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) that can be used to search for specific changes. For instance, to see when an issue transitioned to \"resolved\":  ``` $ curl -s https://api.bitbucket.org/2.0/repositories/site/master/issues/1/changes \\    -G --data-urlencode='q=changes.state.new = \"resolved\"' ```  This resource is only available on repositories that have the issue tracker enabled.  N.B.  The `changes.assignee` and `changes.assignee_account_id` fields are not a `user` object. Instead, they contain the raw `username` and `account_id` of the user. This is to protect the integrity of the audit log even after a user account gets deleted.  The `changes.assignee` field is deprecated will disappear in the future. Use `changes.assignee_account_id` instead.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String |  Query string to narrow down the response. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for details.
  sort: 'sort_example' # String |  Name of a response property to sort results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results) for details. 
}

begin
  # List changes on an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_changes_get(issue_id, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_changes_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_changes_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedLogEntries>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_changes_get_with_http_info(issue_id, repo_slug, workspace, opts)

```ruby
begin
  # List changes on an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_changes_get_with_http_info(issue_id, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedLogEntries>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_changes_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** |  Query string to narrow down the response. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for details. | [optional] |
| **sort** | **String** |  Name of a response property to sort results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#sorting-query-results) for details.  | [optional] |

### Return type

[**PaginatedLogEntries**](PaginatedLogEntries.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_changes_post

> <IssueChange> repositories_workspace_repo_slug_issues_issue_id_changes_post(issue_id, repo_slug, workspace, request_body)

Modify the state of an issue

Makes a change to the specified issue.  For example, to change an issue's state and assignee, create a new change object that modifies these fields:  ``` curl https://api.bitbucket.org/2.0/site/master/issues/1234/changes \\   -s -u evzijst -X POST -H \"Content-Type: application/json\" \\   -d '{     \"changes\": {       \"assignee_account_id\": {         \"new\": \"557058:c0b72ad0-1cb5-4018-9cdc-0cde8492c443\"       },       \"state\": {         \"new\": 'resolved\"       }     }     \"message\": {       \"raw\": \"This is now resolved.\"     }   }' ```  The above example also includes a custom comment to go alongside the change. This comment will also be visible on the issue page in the UI.  The fields of the `changes` object are strings, not objects. This allows for immutable change log records, even after user accounts, milestones, or other objects recorded in a change entry, get renamed or deleted.  The `assignee_account_id` field stores the account id. When POSTing a new change and changing the assignee, the client should therefore use the user's account_id in the `changes.assignee_account_id.new` field.  This call requires authentication. Private repositories or private issue trackers require the caller to authenticate with an account that has appropriate authorization.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
request_body = { key: 3.56} # Hash<String, Object> | The new issue state change. The only required elements are `changes.[].new`. All other elements can be omitted from the body.

begin
  # Modify the state of an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_changes_post(issue_id, repo_slug, workspace, request_body)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_changes_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_changes_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueChange>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_changes_post_with_http_info(issue_id, repo_slug, workspace, request_body)

```ruby
begin
  # Modify the state of an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_changes_post_with_http_info(issue_id, repo_slug, workspace, request_body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueChange>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_changes_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **request_body** | [**Hash&lt;String, Object&gt;**](Object.md) | The new issue state change. The only required elements are &#x60;changes.[].new&#x60;. All other elements can be omitted from the body. |  |

### Return type

[**IssueChange**](IssueChange.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete

> repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete(comment_id, issue_id, repo_slug, workspace)

Delete a comment on an issue

Deletes the specified comment.

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

api_instance = Bitbucket::IssueTrackerApi.new
comment_id = 56 # Integer | The id of the comment.
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a comment on an issue
  api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete(comment_id, issue_id, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete_with_http_info(comment_id, issue_id, repo_slug, workspace)

```ruby
begin
  # Delete a comment on an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete_with_http_info(comment_id, issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **Integer** | The id of the comment. |  |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get

> <IssueComment> repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get(comment_id, issue_id, repo_slug, workspace)

Get a comment on an issue

Returns the specified issue comment object.

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

api_instance = Bitbucket::IssueTrackerApi.new
comment_id = 56 # Integer | The id of the comment.
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a comment on an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get(comment_id, issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueComment>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get_with_http_info(comment_id, issue_id, repo_slug, workspace)

```ruby
begin
  # Get a comment on an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get_with_http_info(comment_id, issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueComment>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **Integer** | The id of the comment. |  |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**IssueComment**](IssueComment.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put

> <IssueComment> repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put(comment_id, issue_id, repo_slug, workspace, issue_comment)

Update a comment on an issue

Updates the content of the specified issue comment. Note that only the `content.raw` field can be modified.  ``` $ curl https://api.bitbucket.org/2.0/repositories/atlassian/prlinks/issues/42/comments/5728901 \\   -X PUT -u evzijst \\   -H 'Content-Type: application/json' \\   -d '{\"content\": {\"raw\": \"Lorem ipsum.\"}' ```

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

api_instance = Bitbucket::IssueTrackerApi.new
comment_id = 56 # Integer | The id of the comment.
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
issue_comment = Bitbucket::IssueComment.new # IssueComment | The updated comment.

begin
  # Update a comment on an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put(comment_id, issue_id, repo_slug, workspace, issue_comment)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IssueComment>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put_with_http_info(comment_id, issue_id, repo_slug, workspace, issue_comment)

```ruby
begin
  # Update a comment on an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put_with_http_info(comment_id, issue_id, repo_slug, workspace, issue_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IssueComment>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_comment_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **Integer** | The id of the comment. |  |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **issue_comment** | [**IssueComment**](IssueComment.md) | The updated comment. |  |

### Return type

[**IssueComment**](IssueComment.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_comments_get

> <PaginatedIssueComments> repositories_workspace_repo_slug_issues_issue_id_comments_get(issue_id, repo_slug, workspace, opts)

List comments on an issue

Returns a paginated list of all comments that were made on the specified issue.  The default sorting is oldest to newest and can be overridden with the `sort` query parameter.  This endpoint also supports filtering and sorting of the results. See [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering) for more details.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example' # String |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).
}

begin
  # List comments on an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_get(issue_id, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_comments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedIssueComments>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_comments_get_with_http_info(issue_id, repo_slug, workspace, opts)

```ruby
begin
  # List comments on an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_get_with_http_info(issue_id, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedIssueComments>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** |  Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). | [optional] |

### Return type

[**PaginatedIssueComments**](PaginatedIssueComments.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_comments_post

> repositories_workspace_repo_slug_issues_issue_id_comments_post(issue_id, repo_slug, workspace, issue_comment)

Create a comment on an issue

Creates a new issue comment.  ``` $ curl https://api.bitbucket.org/2.0/repositories/atlassian/prlinks/issues/42/comments/ \\   -X POST -u evzijst \\   -H 'Content-Type: application/json' \\   -d '{\"content\": {\"raw\": \"Lorem ipsum.\"}}' ```

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
issue_comment = Bitbucket::IssueComment.new # IssueComment | The new issue comment object.

begin
  # Create a comment on an issue
  api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_post(issue_id, repo_slug, workspace, issue_comment)
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_comments_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_comments_post_with_http_info(issue_id, repo_slug, workspace, issue_comment)

```ruby
begin
  # Create a comment on an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_comments_post_with_http_info(issue_id, repo_slug, workspace, issue_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_comments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **issue_comment** | [**IssueComment**](IssueComment.md) | The new issue comment object. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_delete

> <Issue> repositories_workspace_repo_slug_issues_issue_id_delete(issue_id, repo_slug, workspace)

Delete an issue

Deletes the specified issue. This requires write access to the repository.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_delete(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Issue>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_delete_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Delete an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_delete_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Issue>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Issue**](Issue.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_get

> <Issue> repositories_workspace_repo_slug_issues_issue_id_get(issue_id, repo_slug, workspace)

Get an issue

Returns the specified issue.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_get(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Issue>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_get_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Get an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_get_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Issue>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Issue**](Issue.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_put

> <Issue> repositories_workspace_repo_slug_issues_issue_id_put(issue_id, repo_slug, workspace)

Update an issue

Modifies the issue.  ``` $ curl https://api.bitbucket.org/2.0/repostories/evzijst/dogslow/issues/123 \\   -u evzijst -s -X PUT -H 'Content-Type: application/json' \\   -d '{   \"title\": \"Updated title\",   \"assignee\": {     \"account_id\": \"5d5355e8c6b9320d9ea5b28d\"   },   \"priority\": \"minor\",   \"version\": {     \"name\": \"1.0\"   },   \"component\": null }' ```  This example changes the `title`, `assignee`, `priority` and the `version`. It also removes the value of the `component` from the issue by setting the field to `null`. Any field not present keeps its existing value.  Each time an issue is edited in the UI or through the API, an immutable change record is created under the `/issues/123/changes` endpoint. It also has a comment associated with the change.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Update an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_put(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Issue>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_put_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Update an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_put_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Issue>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Issue**](Issue.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_vote_delete

> <Error> repositories_workspace_repo_slug_issues_issue_id_vote_delete(issue_id, repo_slug, workspace)

Remove vote for an issue

Retract your vote.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Remove vote for an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_vote_delete(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_vote_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_vote_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_vote_delete_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Remove vote for an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_vote_delete_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_vote_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Error**](Error.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_vote_get

> <Error> repositories_workspace_repo_slug_issues_issue_id_vote_get(issue_id, repo_slug, workspace)

Check if current user voted for an issue

Check whether the authenticated user has voted for this issue. A 204 status code indicates that the user has voted, while a 404 implies they haven't.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Check if current user voted for an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_vote_get(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_vote_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_vote_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_vote_get_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Check if current user voted for an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_vote_get_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_vote_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Error**](Error.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_vote_put

> <Error> repositories_workspace_repo_slug_issues_issue_id_vote_put(issue_id, repo_slug, workspace)

Vote for an issue

Vote for this issue.  To cast your vote, do an empty PUT. The 204 status code indicates that the operation was successful.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Vote for an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_vote_put(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_vote_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_vote_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_vote_put_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Vote for an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_vote_put_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_vote_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Error**](Error.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_watch_delete

> <Error> repositories_workspace_repo_slug_issues_issue_id_watch_delete(issue_id, repo_slug, workspace)

Stop watching an issue

Stop watching this issue.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Stop watching an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_watch_delete(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_watch_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_watch_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_watch_delete_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Stop watching an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_watch_delete_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_watch_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Error**](Error.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_watch_get

> <Error> repositories_workspace_repo_slug_issues_issue_id_watch_get(issue_id, repo_slug, workspace)

Check if current user is watching a issue

Indicated whether or not the authenticated user is watching this issue.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Check if current user is watching a issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_watch_get(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_watch_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_watch_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_watch_get_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Check if current user is watching a issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_watch_get_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_watch_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Error**](Error.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_issue_id_watch_put

> <Error> repositories_workspace_repo_slug_issues_issue_id_watch_put(issue_id, repo_slug, workspace)

Watch an issue

Start watching this issue.  To start watching this issue, do an empty PUT. The 204 status code indicates that the operation was successful.

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

api_instance = Bitbucket::IssueTrackerApi.new
issue_id = 'issue_id_example' # String | The issue id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Watch an issue
  result = api_instance.repositories_workspace_repo_slug_issues_issue_id_watch_put(issue_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_watch_put: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_issue_id_watch_put_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Error>, Integer, Hash)> repositories_workspace_repo_slug_issues_issue_id_watch_put_with_http_info(issue_id, repo_slug, workspace)

```ruby
begin
  # Watch an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_issue_id_watch_put_with_http_info(issue_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Error>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_issue_id_watch_put_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **issue_id** | **String** | The issue id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Error**](Error.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_issues_post

> <Issue> repositories_workspace_repo_slug_issues_post(repo_slug, workspace, issue)

Create an issue

Creates a new issue.  This call requires authentication. Private repositories or private issue trackers require the caller to authenticate with an account that has appropriate authorization.  The authenticated user is used for the issue's `reporter` field.

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
issue = Bitbucket::Issue.new # Issue | The new issue. The only required element is `title`. All other elements can be omitted from the body.

begin
  # Create an issue
  result = api_instance.repositories_workspace_repo_slug_issues_post(repo_slug, workspace, issue)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_issues_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Issue>, Integer, Hash)> repositories_workspace_repo_slug_issues_post_with_http_info(repo_slug, workspace, issue)

```ruby
begin
  # Create an issue
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_issues_post_with_http_info(repo_slug, workspace, issue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Issue>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_issues_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **issue** | [**Issue**](Issue.md) | The new issue. The only required element is &#x60;title&#x60;. All other elements can be omitted from the body. |  |

### Return type

[**Issue**](Issue.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repositories_workspace_repo_slug_milestones_get

> <PaginatedMilestones> repositories_workspace_repo_slug_milestones_get(repo_slug, workspace)

List milestones

Returns the milestones that have been defined in the issue tracker.  This resource is only available on repositories that have the issue tracker enabled.

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List milestones
  result = api_instance.repositories_workspace_repo_slug_milestones_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_milestones_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_milestones_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedMilestones>, Integer, Hash)> repositories_workspace_repo_slug_milestones_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List milestones
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_milestones_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedMilestones>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_milestones_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedMilestones**](PaginatedMilestones.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_milestones_milestone_id_get

> <Milestone> repositories_workspace_repo_slug_milestones_milestone_id_get(milestone_id, repo_slug, workspace)

Get a milestone

Returns the specified issue tracker milestone object.

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

api_instance = Bitbucket::IssueTrackerApi.new
milestone_id = 56 # Integer | The milestone's id
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a milestone
  result = api_instance.repositories_workspace_repo_slug_milestones_milestone_id_get(milestone_id, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_milestones_milestone_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_milestones_milestone_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Milestone>, Integer, Hash)> repositories_workspace_repo_slug_milestones_milestone_id_get_with_http_info(milestone_id, repo_slug, workspace)

```ruby
begin
  # Get a milestone
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_milestones_milestone_id_get_with_http_info(milestone_id, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Milestone>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_milestones_milestone_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **milestone_id** | **Integer** | The milestone&#39;s id |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Milestone**](Milestone.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_versions_get

> <PaginatedVersions> repositories_workspace_repo_slug_versions_get(repo_slug, workspace)

List defined versions for issues

Returns the versions that have been defined in the issue tracker.  This resource is only available on repositories that have the issue tracker enabled.

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List defined versions for issues
  result = api_instance.repositories_workspace_repo_slug_versions_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_versions_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_versions_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedVersions>, Integer, Hash)> repositories_workspace_repo_slug_versions_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List defined versions for issues
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_versions_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedVersions>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_versions_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedVersions**](PaginatedVersions.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_versions_version_id_get

> <Version> repositories_workspace_repo_slug_versions_version_id_get(repo_slug, version_id, workspace)

Get a defined version for issues

Returns the specified issue tracker version object.

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

api_instance = Bitbucket::IssueTrackerApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
version_id = 56 # Integer | The version's id
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a defined version for issues
  result = api_instance.repositories_workspace_repo_slug_versions_version_id_get(repo_slug, version_id, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_versions_version_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_versions_version_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Version>, Integer, Hash)> repositories_workspace_repo_slug_versions_version_id_get_with_http_info(repo_slug, version_id, workspace)

```ruby
begin
  # Get a defined version for issues
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_versions_version_id_get_with_http_info(repo_slug, version_id, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Version>
rescue Bitbucket::ApiError => e
  puts "Error when calling IssueTrackerApi->repositories_workspace_repo_slug_versions_version_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **version_id** | **Integer** | The version&#39;s id |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Version**](Version.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

