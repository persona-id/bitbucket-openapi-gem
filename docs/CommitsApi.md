# Bitbucket::CommitsApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_create_or_update_annotations**](CommitsApi.md#bulk_create_or_update_annotations) | **POST** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations | Bulk create or update annotations |
| [**create_or_update_annotation**](CommitsApi.md#create_or_update_annotation) | **PUT** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations/{annotationId} | Create or update an annotation |
| [**create_or_update_report**](CommitsApi.md#create_or_update_report) | **PUT** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId} | Create or update a report |
| [**delete_annotation**](CommitsApi.md#delete_annotation) | **DELETE** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations/{annotationId} | Delete an annotation |
| [**delete_report**](CommitsApi.md#delete_report) | **DELETE** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId} | Delete a report |
| [**get_annotation**](CommitsApi.md#get_annotation) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations/{annotationId} | Get an annotation |
| [**get_annotations_for_report**](CommitsApi.md#get_annotations_for_report) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations | List annotations |
| [**get_report**](CommitsApi.md#get_report) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId} | Get a report |
| [**get_reports_for_commit**](CommitsApi.md#get_reports_for_commit) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports | List reports |
| [**repositories_workspace_repo_slug_commit_commit_approve_delete**](CommitsApi.md#repositories_workspace_repo_slug_commit_commit_approve_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/commit/{commit}/approve | Unapprove a commit |
| [**repositories_workspace_repo_slug_commit_commit_approve_post**](CommitsApi.md#repositories_workspace_repo_slug_commit_commit_approve_post) | **POST** /repositories/{workspace}/{repo_slug}/commit/{commit}/approve | Approve a commit |
| [**repositories_workspace_repo_slug_commit_commit_comments_comment_id_get**](CommitsApi.md#repositories_workspace_repo_slug_commit_commit_comments_comment_id_get) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/comments/{comment_id} | Get a commit comment |
| [**repositories_workspace_repo_slug_commit_commit_comments_get**](CommitsApi.md#repositories_workspace_repo_slug_commit_commit_comments_get) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/comments | List a commit&#39;s comments |
| [**repositories_workspace_repo_slug_commit_commit_comments_post**](CommitsApi.md#repositories_workspace_repo_slug_commit_commit_comments_post) | **POST** /repositories/{workspace}/{repo_slug}/commit/{commit}/comments | Create comment for a commit |
| [**repositories_workspace_repo_slug_commit_commit_get**](CommitsApi.md#repositories_workspace_repo_slug_commit_commit_get) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit} | Get a commit |
| [**repositories_workspace_repo_slug_commits_get**](CommitsApi.md#repositories_workspace_repo_slug_commits_get) | **GET** /repositories/{workspace}/{repo_slug}/commits | List commits |
| [**repositories_workspace_repo_slug_commits_post**](CommitsApi.md#repositories_workspace_repo_slug_commits_post) | **POST** /repositories/{workspace}/{repo_slug}/commits | List commits with include/exclude |
| [**repositories_workspace_repo_slug_commits_revision_get**](CommitsApi.md#repositories_workspace_repo_slug_commits_revision_get) | **GET** /repositories/{workspace}/{repo_slug}/commits/{revision} | List commits for revision |
| [**repositories_workspace_repo_slug_commits_revision_post**](CommitsApi.md#repositories_workspace_repo_slug_commits_revision_post) | **POST** /repositories/{workspace}/{repo_slug}/commits/{revision} | List commits for revision using include/exclude |
| [**repositories_workspace_repo_slug_diff_spec_get**](CommitsApi.md#repositories_workspace_repo_slug_diff_spec_get) | **GET** /repositories/{workspace}/{repo_slug}/diff/{spec} | Compare two commits |
| [**repositories_workspace_repo_slug_diffstat_spec_get**](CommitsApi.md#repositories_workspace_repo_slug_diffstat_spec_get) | **GET** /repositories/{workspace}/{repo_slug}/diffstat/{spec} | Compare two commit diff stats |
| [**repositories_workspace_repo_slug_merge_base_revspec_get**](CommitsApi.md#repositories_workspace_repo_slug_merge_base_revspec_get) | **GET** /repositories/{workspace}/{repo_slug}/merge-base/{revspec} | Get the common ancestor between two commits |
| [**repositories_workspace_repo_slug_patch_spec_get**](CommitsApi.md#repositories_workspace_repo_slug_patch_spec_get) | **GET** /repositories/{workspace}/{repo_slug}/patch/{spec} | Get a patch for two commits |


## bulk_create_or_update_annotations

> <Array<ReportAnnotation>> bulk_create_or_update_annotations(workspace, repo_slug, commit, report_id, report_annotation)

Bulk create or update annotations

Bulk upload of annotations. Annotations are individual findings that have been identified as part of a report, for example, a line of code that represents a vulnerability. These annotations can be attached to a specific file and even a specific line in that file, however, that is optional. Annotations are not mandatory and a report can contain up to 1000 annotations.  Add the annotations you want to upload as objects in a JSON array and make sure each annotation has the external_id field set to a unique value. If you want to use an existing id from your own system, we recommend prefixing it with your system's name to avoid collisions, for example, mySystem-annotation001. The external id can later be used to identify the report as an alternative to the generated [UUID](https://developer.atlassian.com/bitbucket/api/2/reference/meta/uri-uuid#uuid). You can upload up to 100 annotations per POST request.  ### Sample cURL request: ``` curl --location 'https://api.bitbucket.org/2.0/repositories/<username>/<reposity-name>/commit/<commit-hash>/reports/mysystem-001/annotations' \\ --header 'Content-Type: application/json' \\ --data-raw '[   {         \"external_id\": \"mysystem-annotation001\",         \"title\": \"Security scan report\",         \"annotation_type\": \"VULNERABILITY\",         \"summary\": \"This line represents a security threat.\",         \"severity\": \"HIGH\",       \"path\": \"my-service/src/main/java/com/myCompany/mysystem/logic/Main.java\",         \"line\": 42   },   {         \"external_id\": \"mySystem-annotation002\",         \"title\": \"Bug report\",         \"annotation_type\": \"BUG\",         \"result\": \"FAILED\",         \"summary\": \"This line might introduce a bug.\",         \"severity\": \"MEDIUM\",       \"path\": \"my-service/src/main/java/com/myCompany/mysystem/logic/Helper.java\",         \"line\": 13   } ]' ```  ### Possible field values: annotation_type: VULNERABILITY, CODE_SMELL, BUG result: PASSED, FAILED, IGNORED, SKIPPED severity: HIGH, MEDIUM, LOW, CRITICAL  Please refer to the [Code Insights documentation](https://confluence.atlassian.com/bitbucket/code-insights-994316785.html) for more information. 

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit for which to retrieve reports.
report_id = 'report_id_example' # String | Uuid or external-if of the report for which to get annotations for.
report_annotation = [Bitbucket::ReportAnnotation.new] # Array<ReportAnnotation> | The annotations to create or update

begin
  # Bulk create or update annotations
  result = api_instance.bulk_create_or_update_annotations(workspace, repo_slug, commit, report_id, report_annotation)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->bulk_create_or_update_annotations: #{e}"
end
```

#### Using the bulk_create_or_update_annotations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ReportAnnotation>>, Integer, Hash)> bulk_create_or_update_annotations_with_http_info(workspace, repo_slug, commit, report_id, report_annotation)

```ruby
begin
  # Bulk create or update annotations
  data, status_code, headers = api_instance.bulk_create_or_update_annotations_with_http_info(workspace, repo_slug, commit, report_id, report_annotation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ReportAnnotation>>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->bulk_create_or_update_annotations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit for which to retrieve reports. |  |
| **report_id** | **String** | Uuid or external-if of the report for which to get annotations for. |  |
| **report_annotation** | [**Array&lt;ReportAnnotation&gt;**](ReportAnnotation.md) | The annotations to create or update |  |

### Return type

[**Array&lt;ReportAnnotation&gt;**](ReportAnnotation.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_or_update_annotation

> <ReportAnnotation> create_or_update_annotation(workspace, repo_slug, commit, report_id, annotation_id, report_annotation)

Create or update an annotation

Creates or updates an individual annotation for the specified report. Annotations are individual findings that have been identified as part of a report, for example, a line of code that represents a vulnerability. These annotations can be attached to a specific file and even a specific line in that file, however, that is optional. Annotations are not mandatory and a report can contain up to 1000 annotations.  Just as reports, annotation needs to be uploaded with a unique ID that can later be used to identify the report as an alternative to the generated [UUID](https://developer.atlassian.com/bitbucket/api/2/reference/meta/uri-uuid#uuid). If you want to use an existing id from your own system, we recommend prefixing it with your system's name to avoid collisions, for example, mySystem-annotation001.  ### Sample cURL request: ``` curl --request PUT 'https://api.bitbucket.org/2.0/repositories/<username>/<reposity-name>/commit/<commit-hash>/reports/mySystem-001/annotations/mysystem-annotation001' \\ --header 'Content-Type: application/json' \\ --data-raw '{     \"title\": \"Security scan report\",     \"annotation_type\": \"VULNERABILITY\",     \"summary\": \"This line represents a security thread.\",     \"severity\": \"HIGH\",     \"path\": \"my-service/src/main/java/com/myCompany/mysystem/logic/Main.java\",     \"line\": 42 }' ```  ### Possible field values: annotation_type: VULNERABILITY, CODE_SMELL, BUG result: PASSED, FAILED, IGNORED, SKIPPED severity: HIGH, MEDIUM, LOW, CRITICAL  Please refer to the [Code Insights documentation](https://confluence.atlassian.com/bitbucket/code-insights-994316785.html) for more information. 

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the report belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the report.
annotation_id = 'annotation_id_example' # String | Either the uuid or external-id of the annotation.
report_annotation = Bitbucket::ReportAnnotation.new # ReportAnnotation | The annotation to create or update

begin
  # Create or update an annotation
  result = api_instance.create_or_update_annotation(workspace, repo_slug, commit, report_id, annotation_id, report_annotation)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->create_or_update_annotation: #{e}"
end
```

#### Using the create_or_update_annotation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportAnnotation>, Integer, Hash)> create_or_update_annotation_with_http_info(workspace, repo_slug, commit, report_id, annotation_id, report_annotation)

```ruby
begin
  # Create or update an annotation
  data, status_code, headers = api_instance.create_or_update_annotation_with_http_info(workspace, repo_slug, commit, report_id, annotation_id, report_annotation)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportAnnotation>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->create_or_update_annotation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit the report belongs to. |  |
| **report_id** | **String** | Either the uuid or external-id of the report. |  |
| **annotation_id** | **String** | Either the uuid or external-id of the annotation. |  |
| **report_annotation** | [**ReportAnnotation**](ReportAnnotation.md) | The annotation to create or update |  |

### Return type

[**ReportAnnotation**](ReportAnnotation.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_or_update_report

> <Report> create_or_update_report(workspace, repo_slug, commit, report_id, report)

Create or update a report

Creates or updates a report for the specified commit. To upload a report, make sure to generate an ID that is unique across all reports for that commit. If you want to use an existing id from your own system, we recommend prefixing it with your system's name to avoid collisions, for example, mySystem-001.  ### Sample cURL request: ``` curl --request PUT 'https://api.bitbucket.org/2.0/repositories/<username>/<reposity-name>/commit/<commit-hash>/reports/mysystem-001' \\ --header 'Content-Type: application/json' \\ --data-raw '{     \"title\": \"Security scan report\",     \"details\": \"This pull request introduces 10 new dependency vulnerabilities.\",     \"report_type\": \"SECURITY\",     \"reporter\": \"mySystem\",     \"link\": \"http://www.mysystem.com/reports/001\",     \"result\": \"FAILED\",     \"data\": [         {             \"title\": \"Duration (seconds)\",             \"type\": \"DURATION\",             \"value\": 14         },         {             \"title\": \"Safe to merge?\",             \"type\": \"BOOLEAN\",             \"value\": false         }     ] }' ```  ### Possible field values: report_type: SECURITY, COVERAGE, TEST, BUG result: PASSED, FAILED, PENDING data.type: BOOLEAN, DATE, DURATION, LINK, NUMBER, PERCENTAGE, TEXT  #### Data field formats | Type  Field   | Value Field Type  | Value Field Display | |:--------------|:------------------|:--------------------| | None/ Omitted | Number, String or Boolean (not an array or object) | Plain text | | BOOLEAN | Boolean | The value will be read as a JSON boolean and displayed as 'Yes' or 'No'. | | DATE  | Number | The value will be read as a JSON number in the form of a Unix timestamp (milliseconds) and will be displayed as a relative date if the date is less than one week ago, otherwise  it will be displayed as an absolute date. | | DURATION | Number | The value will be read as a JSON number in milliseconds and will be displayed in a human readable duration format. | | LINK | Object: `{\"text\": \"Link text here\", \"href\": \"https://link.to.annotation/in/external/tool\"}` | The value will be read as a JSON object containing the fields \"text\" and \"href\" and will be displayed as a clickable link on the report. | | NUMBER | Number | The value will be read as a JSON number and large numbers will be  displayed in a human readable format (e.g. 14.3k). | | PERCENTAGE | Number (between 0 and 100) | The value will be read as a JSON number between 0 and 100 and will be displayed with a percentage sign. | | TEXT | String | The value will be read as a JSON string and will be displayed as-is |  Please refer to the [Code Insights documentation](https://confluence.atlassian.com/bitbucket/code-insights-994316785.html) for more information. 

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the report belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the report.
report = Bitbucket::Report.new({type: 'type_example'}) # Report | The report to create or update

begin
  # Create or update a report
  result = api_instance.create_or_update_report(workspace, repo_slug, commit, report_id, report)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->create_or_update_report: #{e}"
end
```

#### Using the create_or_update_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Report>, Integer, Hash)> create_or_update_report_with_http_info(workspace, repo_slug, commit, report_id, report)

```ruby
begin
  # Create or update a report
  data, status_code, headers = api_instance.create_or_update_report_with_http_info(workspace, repo_slug, commit, report_id, report)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Report>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->create_or_update_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit the report belongs to. |  |
| **report_id** | **String** | Either the uuid or external-id of the report. |  |
| **report** | [**Report**](Report.md) | The report to create or update |  |

### Return type

[**Report**](Report.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_annotation

> delete_annotation(workspace, repo_slug, commit, report_id, annotation_id)

Delete an annotation

Deletes a single Annotation matching the provided ID.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the annotation belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the annotation.
annotation_id = 'annotation_id_example' # String | Either the uuid or external-id of the annotation.

begin
  # Delete an annotation
  api_instance.delete_annotation(workspace, repo_slug, commit, report_id, annotation_id)
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->delete_annotation: #{e}"
end
```

#### Using the delete_annotation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_annotation_with_http_info(workspace, repo_slug, commit, report_id, annotation_id)

```ruby
begin
  # Delete an annotation
  data, status_code, headers = api_instance.delete_annotation_with_http_info(workspace, repo_slug, commit, report_id, annotation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->delete_annotation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit the annotation belongs to. |  |
| **report_id** | **String** | Either the uuid or external-id of the annotation. |  |
| **annotation_id** | **String** | Either the uuid or external-id of the annotation. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_report

> delete_report(workspace, repo_slug, commit, report_id)

Delete a report

Deletes a single Report matching the provided ID.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the report belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the report.

begin
  # Delete a report
  api_instance.delete_report(workspace, repo_slug, commit, report_id)
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->delete_report: #{e}"
end
```

#### Using the delete_report_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_report_with_http_info(workspace, repo_slug, commit, report_id)

```ruby
begin
  # Delete a report
  data, status_code, headers = api_instance.delete_report_with_http_info(workspace, repo_slug, commit, report_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->delete_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit the report belongs to. |  |
| **report_id** | **String** | Either the uuid or external-id of the report. |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_annotation

> <ReportAnnotation> get_annotation(workspace, repo_slug, commit, report_id, annotation_id)

Get an annotation

Returns a single Annotation matching the provided ID.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the report belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the report.
annotation_id = 'annotation_id_example' # String | Either the uuid or external-id of the annotation.

begin
  # Get an annotation
  result = api_instance.get_annotation(workspace, repo_slug, commit, report_id, annotation_id)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->get_annotation: #{e}"
end
```

#### Using the get_annotation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReportAnnotation>, Integer, Hash)> get_annotation_with_http_info(workspace, repo_slug, commit, report_id, annotation_id)

```ruby
begin
  # Get an annotation
  data, status_code, headers = api_instance.get_annotation_with_http_info(workspace, repo_slug, commit, report_id, annotation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReportAnnotation>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->get_annotation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit the report belongs to. |  |
| **report_id** | **String** | Either the uuid or external-id of the report. |  |
| **annotation_id** | **String** | Either the uuid or external-id of the annotation. |  |

### Return type

[**ReportAnnotation**](ReportAnnotation.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_annotations_for_report

> <PaginatedAnnotations> get_annotations_for_report(workspace, repo_slug, commit, report_id)

List annotations

Returns a paginated list of Annotations for a specified report.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit for which to retrieve reports.
report_id = 'report_id_example' # String | Uuid or external-if of the report for which to get annotations for.

begin
  # List annotations
  result = api_instance.get_annotations_for_report(workspace, repo_slug, commit, report_id)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->get_annotations_for_report: #{e}"
end
```

#### Using the get_annotations_for_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAnnotations>, Integer, Hash)> get_annotations_for_report_with_http_info(workspace, repo_slug, commit, report_id)

```ruby
begin
  # List annotations
  data, status_code, headers = api_instance.get_annotations_for_report_with_http_info(workspace, repo_slug, commit, report_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAnnotations>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->get_annotations_for_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit for which to retrieve reports. |  |
| **report_id** | **String** | Uuid or external-if of the report for which to get annotations for. |  |

### Return type

[**PaginatedAnnotations**](PaginatedAnnotations.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_report

> <Report> get_report(workspace, repo_slug, commit, report_id)

Get a report

Returns a single Report matching the provided ID.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the report belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the report.

begin
  # Get a report
  result = api_instance.get_report(workspace, repo_slug, commit, report_id)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->get_report: #{e}"
end
```

#### Using the get_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Report>, Integer, Hash)> get_report_with_http_info(workspace, repo_slug, commit, report_id)

```ruby
begin
  # Get a report
  data, status_code, headers = api_instance.get_report_with_http_info(workspace, repo_slug, commit, report_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Report>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->get_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit the report belongs to. |  |
| **report_id** | **String** | Either the uuid or external-id of the report. |  |

### Return type

[**Report**](Report.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reports_for_commit

> <PaginatedReports> get_reports_for_commit(workspace, repo_slug, commit)

List reports

Returns a paginated list of Reports linked to this commit.

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::CommitsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit for which to retrieve reports.

begin
  # List reports
  result = api_instance.get_reports_for_commit(workspace, repo_slug, commit)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->get_reports_for_commit: #{e}"
end
```

#### Using the get_reports_for_commit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedReports>, Integer, Hash)> get_reports_for_commit_with_http_info(workspace, repo_slug, commit)

```ruby
begin
  # List reports
  data, status_code, headers = api_instance.get_reports_for_commit_with_http_info(workspace, repo_slug, commit)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedReports>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->get_reports_for_commit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example &#x60;{workspace UUID}&#x60;. |  |
| **repo_slug** | **String** | The repository. |  |
| **commit** | **String** | The commit for which to retrieve reports. |  |

### Return type

[**PaginatedReports**](PaginatedReports.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commit_commit_approve_delete

> repositories_workspace_repo_slug_commit_commit_approve_delete(commit, repo_slug, workspace)

Unapprove a commit

Redact the authenticated user's approval of the specified commit.  This operation is only available to users that have explicit access to the repository. In contrast, just the fact that a repository is publicly accessible to users does not give them the ability to approve commits.

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

api_instance = Bitbucket::CommitsApi.new
commit = 'commit_example' # String | The commit's SHA1.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Unapprove a commit
  api_instance.repositories_workspace_repo_slug_commit_commit_approve_delete(commit, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_approve_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_approve_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_approve_delete_with_http_info(commit, repo_slug, workspace)

```ruby
begin
  # Unapprove a commit
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_approve_delete_with_http_info(commit, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_approve_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commit_commit_approve_post

> <Participant> repositories_workspace_repo_slug_commit_commit_approve_post(commit, repo_slug, workspace)

Approve a commit

Approve the specified commit as the authenticated user.  This operation is only available to users that have explicit access to the repository. In contrast, just the fact that a repository is publicly accessible to users does not give them the ability to approve commits.

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

api_instance = Bitbucket::CommitsApi.new
commit = 'commit_example' # String | The commit's SHA1.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Approve a commit
  result = api_instance.repositories_workspace_repo_slug_commit_commit_approve_post(commit, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_approve_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_approve_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Participant>, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_approve_post_with_http_info(commit, repo_slug, workspace)

```ruby
begin
  # Approve a commit
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_approve_post_with_http_info(commit, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Participant>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_approve_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Participant**](Participant.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commit_commit_comments_comment_id_get

> <CommitComment> repositories_workspace_repo_slug_commit_commit_comments_comment_id_get(comment_id, commit, repo_slug, workspace)

Get a commit comment

Returns the specified commit comment.

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

api_instance = Bitbucket::CommitsApi.new
comment_id = 56 # Integer | The id of the comment.
commit = 'commit_example' # String | The commit's SHA1.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a commit comment
  result = api_instance.repositories_workspace_repo_slug_commit_commit_comments_comment_id_get(comment_id, commit, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_comments_comment_id_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_comments_comment_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CommitComment>, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_comments_comment_id_get_with_http_info(comment_id, commit, repo_slug, workspace)

```ruby
begin
  # Get a commit comment
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_comments_comment_id_get_with_http_info(comment_id, commit, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CommitComment>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_comments_comment_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **comment_id** | **Integer** | The id of the comment. |  |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**CommitComment**](CommitComment.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commit_commit_comments_get

> <PaginatedCommitComments> repositories_workspace_repo_slug_commit_commit_comments_get(commit, repo_slug, workspace, opts)

List a commit's comments

Returns the commit's comments.  This includes both global and inline comments.  The default sorting is oldest to newest and can be overridden with the `sort` query parameter.

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

api_instance = Bitbucket::CommitsApi.new
commit = 'commit_example' # String | The commit's SHA1.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  q: 'q_example', # String | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
  sort: 'sort_example' # String | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering). 
}

begin
  # List a commit's comments
  result = api_instance.repositories_workspace_repo_slug_commit_commit_comments_get(commit, repo_slug, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_comments_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_comments_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCommitComments>, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_comments_get_with_http_info(commit, repo_slug, workspace, opts)

```ruby
begin
  # List a commit's comments
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_comments_get_with_http_info(commit, repo_slug, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCommitComments>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_comments_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **q** | **String** | Query string to narrow down the response as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).  | [optional] |
| **sort** | **String** | Field by which the results should be sorted as per [filtering and sorting](/cloud/bitbucket/rest/intro/#filtering).  | [optional] |

### Return type

[**PaginatedCommitComments**](PaginatedCommitComments.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commit_commit_comments_post

> repositories_workspace_repo_slug_commit_commit_comments_post(commit, repo_slug, workspace, commit_comment)

Create comment for a commit

Creates new comment on the specified commit.  To post a reply to an existing comment, include the `parent.id` field:  ``` $ curl https://api.bitbucket.org/2.0/repositories/atlassian/prlinks/commit/db9ba1e031d07a02603eae0e559a7adc010257fc/comments/ \\   -X POST -u evzijst \\   -H 'Content-Type: application/json' \\   -d '{\"content\": {\"raw\": \"One more thing!\"},        \"parent\": {\"id\": 5728901}}' ```

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

api_instance = Bitbucket::CommitsApi.new
commit = 'commit_example' # String | The commit's SHA1.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
commit_comment = Bitbucket::CommitComment.new # CommitComment | The specified comment.

begin
  # Create comment for a commit
  api_instance.repositories_workspace_repo_slug_commit_commit_comments_post(commit, repo_slug, workspace, commit_comment)
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_comments_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_comments_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_comments_post_with_http_info(commit, repo_slug, workspace, commit_comment)

```ruby
begin
  # Create comment for a commit
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_comments_post_with_http_info(commit, repo_slug, workspace, commit_comment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_comments_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **commit_comment** | [**CommitComment**](CommitComment.md) | The specified comment. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## repositories_workspace_repo_slug_commit_commit_get

> <Commit> repositories_workspace_repo_slug_commit_commit_get(commit, repo_slug, workspace)

Get a commit

Returns the specified commit.  Example:  ``` $ curl https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/commit/f7591a1 {     \"rendered\": {         \"message\": {         \"raw\": \"Add a GEORDI_OUTPUT_DIR setting\",         \"markup\": \"markdown\",         \"html\": \"<p>Add a GEORDI_OUTPUT_DIR setting</p>\",         \"type\": \"rendered\"         }     },     \"hash\": \"f7591a13eda445d9a9167f98eb870319f4b6c2d8\",     \"repository\": {         \"name\": \"geordi\",         \"type\": \"repository\",         \"full_name\": \"bitbucket/geordi\",         \"links\": {             \"self\": {                 \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi\"             },             \"html\": {                 \"href\": \"https://bitbucket.org/bitbucket/geordi\"             },             \"avatar\": {                 \"href\": \"https://bytebucket.org/ravatar/%7B85d08b4e-571d-44e9-a507-fa476535aa98%7D?ts=1730260\"             }         },         \"uuid\": \"{85d08b4e-571d-44e9-a507-fa476535aa98}\"     },     \"links\": {         \"self\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/commit/f7591a13eda445d9a9167f98eb870319f4b6c2d8\"         },         \"comments\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/commit/f7591a13eda445d9a9167f98eb870319f4b6c2d8/comments\"         },         \"patch\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/patch/f7591a13eda445d9a9167f98eb870319f4b6c2d8\"         },         \"html\": {             \"href\": \"https://bitbucket.org/bitbucket/geordi/commits/f7591a13eda445d9a9167f98eb870319f4b6c2d8\"         },         \"diff\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/diff/f7591a13eda445d9a9167f98eb870319f4b6c2d8\"         },         \"approve\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/commit/f7591a13eda445d9a9167f98eb870319f4b6c2d8/approve\"         },         \"statuses\": {             \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/commit/f7591a13eda445d9a9167f98eb870319f4b6c2d8/statuses\"         }     },     \"author\": {         \"raw\": \"Brodie Rao <a@b.c>\",         \"type\": \"author\",         \"user\": {             \"display_name\": \"Brodie Rao\",             \"uuid\": \"{9484702e-c663-4afd-aefb-c93a8cd31c28}\",             \"links\": {                 \"self\": {                     \"href\": \"https://api.bitbucket.org/2.0/users/%7B9484702e-c663-4afd-aefb-c93a8cd31c28%7D\"                 },                 \"html\": {                     \"href\": \"https://bitbucket.org/%7B9484702e-c663-4afd-aefb-c93a8cd31c28%7D/\"                 },                 \"avatar\": {                     \"href\": \"https://avatar-management--avatars.us-west-2.prod.public.atl-paas.net/557058:3aae1e05-702a-41e5-81c8-f36f29afb6ca/613070db-28b0-421f-8dba-ae8a87e2a5c7/128\"                 }             },             \"type\": \"user\",             \"nickname\": \"brodie\",             \"account_id\": \"557058:3aae1e05-702a-41e5-81c8-f36f29afb6ca\"         }     },     \"summary\": {         \"raw\": \"Add a GEORDI_OUTPUT_DIR setting\",         \"markup\": \"markdown\",         \"html\": \"<p>Add a GEORDI_OUTPUT_DIR setting</p>\",         \"type\": \"rendered\"     },     \"participants\": [],     \"parents\": [         {             \"type\": \"commit\",             \"hash\": \"f06941fec4ef6bcb0c2456927a0cf258fa4f899b\",             \"links\": {                 \"self\": {                     \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/commit/f06941fec4ef6bcb0c2456927a0cf258fa4f899b\"                 },                 \"html\": {                     \"href\": \"https://bitbucket.org/bitbucket/geordi/commits/f06941fec4ef6bcb0c2456927a0cf258fa4f899b\"                 }             }         }     ],     \"date\": \"2012-07-16T19:37:54+00:00\",     \"message\": \"Add a GEORDI_OUTPUT_DIR setting\",     \"type\": \"commit\" } ```

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

api_instance = Bitbucket::CommitsApi.new
commit = 'commit_example' # String | The commit's SHA1.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a commit
  result = api_instance.repositories_workspace_repo_slug_commit_commit_get(commit, repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commit_commit_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Commit>, Integer, Hash)> repositories_workspace_repo_slug_commit_commit_get_with_http_info(commit, repo_slug, workspace)

```ruby
begin
  # Get a commit
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commit_commit_get_with_http_info(commit, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Commit>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commit_commit_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commit** | **String** | The commit&#39;s SHA1. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Commit**](Commit.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commits_get

> <PaginatedChangeset> repositories_workspace_repo_slug_commits_get(repo_slug, workspace)

List commits

These are the repository's commits. They are paginated and returned in reverse chronological order, similar to the output of `git log`. Like these tools, the DAG can be filtered.  #### GET /repositories/{workspace}/{repo_slug}/commits/  Returns all commits in the repo in topological order (newest commit first). All branches and tags are included (similar to `git log --all`).  #### GET /repositories/{workspace}/{repo_slug}/commits/?exclude=master  Returns all commits in the repo that are not on master (similar to `git log --all ^master`).  #### GET /repositories/{workspace}/{repo_slug}/commits/?include=foo&include=bar&exclude=fu&exclude=fubar  Returns all commits that are on refs `foo` or `bar`, but not on `fu` or `fubar` (similar to `git log foo bar ^fu ^fubar`).  An optional `path` parameter can be specified that will limit the results to commits that affect that path. `path` can either be a file or a directory. If a directory is specified, commits are returned that have modified any file in the directory tree rooted by `path`. It is important to note that if the `path` parameter is specified, the commits returned by this endpoint may no longer be a DAG, parent commits that do not modify the path will be omitted from the response.  #### GET /repositories/{workspace}/{repo_slug}/commits/?path=README.md&include=foo&include=bar&exclude=master  Returns all commits that are on refs `foo` or `bar`, but not on `master` that changed the file README.md.  #### GET /repositories/{workspace}/{repo_slug}/commits/?path=src/&include=foo&include=bar&exclude=master  Returns all commits that are on refs `foo` or `bar`, but not on `master` that changed to a file in any file in the directory src or its children.  Because the response could include a very large number of commits, it is paginated. Follow the 'next' link in the response to navigate to the next page of commits. As with other paginated resources, do not construct your own links.  When the include and exclude parameters are more than can fit in a query string, clients can use a `x-www-form-urlencoded` POST instead.

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

api_instance = Bitbucket::CommitsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List commits
  result = api_instance.repositories_workspace_repo_slug_commits_get(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commits_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commits_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedChangeset>, Integer, Hash)> repositories_workspace_repo_slug_commits_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List commits
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commits_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedChangeset>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commits_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedChangeset**](PaginatedChangeset.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commits_post

> <PaginatedChangeset> repositories_workspace_repo_slug_commits_post(repo_slug, workspace)

List commits with include/exclude

Identical to `GET /repositories/{workspace}/{repo_slug}/commits`, except that POST allows clients to place the include and exclude parameters in the request body to avoid URL length issues.  **Note that this resource does NOT support new commit creation.**

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

api_instance = Bitbucket::CommitsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List commits with include/exclude
  result = api_instance.repositories_workspace_repo_slug_commits_post(repo_slug, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commits_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commits_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedChangeset>, Integer, Hash)> repositories_workspace_repo_slug_commits_post_with_http_info(repo_slug, workspace)

```ruby
begin
  # List commits with include/exclude
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commits_post_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedChangeset>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commits_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedChangeset**](PaginatedChangeset.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commits_revision_get

> <PaginatedChangeset> repositories_workspace_repo_slug_commits_revision_get(repo_slug, revision, workspace)

List commits for revision

These are the repository's commits. They are paginated and returned in reverse chronological order, similar to the output of `git log`. Like these tools, the DAG can be filtered.  #### GET /repositories/{workspace}/{repo_slug}/commits/master  Returns all commits on rev `master` (similar to `git log master`).  #### GET /repositories/{workspace}/{repo_slug}/commits/dev?include=foo&exclude=master  Returns all commits on ref `dev` or `foo`, except those that are reachable on `master` (similar to `git log dev foo ^master`).  An optional `path` parameter can be specified that will limit the results to commits that affect that path. `path` can either be a file or a directory. If a directory is specified, commits are returned that have modified any file in the directory tree rooted by `path`. It is important to note that if the `path` parameter is specified, the commits returned by this endpoint may no longer be a DAG, parent commits that do not modify the path will be omitted from the response.  #### GET /repositories/{workspace}/{repo_slug}/commits/dev?path=README.md&include=foo&include=bar&exclude=master  Returns all commits that are on refs `dev` or `foo` or `bar`, but not on `master` that changed the file README.md.  #### GET /repositories/{workspace}/{repo_slug}/commits/dev?path=src/&include=foo&exclude=master  Returns all commits that are on refs `dev` or `foo`, but not on `master` that changed to a file in any file in the directory src or its children.  Because the response could include a very large number of commits, it is paginated. Follow the 'next' link in the response to navigate to the next page of commits. As with other paginated resources, do not construct your own links.  When the include and exclude parameters are more than can fit in a query string, clients can use a `x-www-form-urlencoded` POST instead.

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

api_instance = Bitbucket::CommitsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
revision = 'revision_example' # String | The commit's SHA1.
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List commits for revision
  result = api_instance.repositories_workspace_repo_slug_commits_revision_get(repo_slug, revision, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commits_revision_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commits_revision_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedChangeset>, Integer, Hash)> repositories_workspace_repo_slug_commits_revision_get_with_http_info(repo_slug, revision, workspace)

```ruby
begin
  # List commits for revision
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commits_revision_get_with_http_info(repo_slug, revision, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedChangeset>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commits_revision_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **revision** | **String** | The commit&#39;s SHA1. |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedChangeset**](PaginatedChangeset.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_commits_revision_post

> <PaginatedChangeset> repositories_workspace_repo_slug_commits_revision_post(repo_slug, revision, workspace)

List commits for revision using include/exclude

Identical to `GET /repositories/{workspace}/{repo_slug}/commits/{revision}`, except that POST allows clients to place the include and exclude parameters in the request body to avoid URL length issues.  **Note that this resource does NOT support new commit creation.**

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

api_instance = Bitbucket::CommitsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
revision = 'revision_example' # String | The commit's SHA1.
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List commits for revision using include/exclude
  result = api_instance.repositories_workspace_repo_slug_commits_revision_post(repo_slug, revision, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commits_revision_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_commits_revision_post_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedChangeset>, Integer, Hash)> repositories_workspace_repo_slug_commits_revision_post_with_http_info(repo_slug, revision, workspace)

```ruby
begin
  # List commits for revision using include/exclude
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_commits_revision_post_with_http_info(repo_slug, revision, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedChangeset>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_commits_revision_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **revision** | **String** | The commit&#39;s SHA1. |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**PaginatedChangeset**](PaginatedChangeset.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_diff_spec_get

> repositories_workspace_repo_slug_diff_spec_get(repo_slug, spec, workspace, opts)

Compare two commits

Produces a raw git-style diff.  #### Single commit spec  If the `spec` argument to this API is a single commit, the diff is produced against the first parent of the specified commit.  #### Two commit spec  Two commits separated by `..` may be provided as the `spec`, e.g., `3a8b42..9ff173`. When two commits are provided and the `topic` query parameter is true or absent, this API produces a 2-way three dot diff. This is the diff between source commit and the merge base of the source commit and the destination commit. When the `topic` query param is false, a simple git-style diff is produced.  The two commits are interpreted as follows:  * First commit: the commit containing the changes we wish to preview * Second commit: the commit representing the state to which we want to   compare the first commit * **Note**: This is the opposite of the order used in `git diff`.  #### Comparison to patches  While similar to patches, diffs:  * Don't have a commit header (username, commit message, etc) * Support the optional `path=foo/bar.py` query param to filter   the diff to just that one file diff  #### Response  The raw diff is returned as-is, in whatever encoding the files in the repository use. It is not decoded into unicode. As such, the content-type is `text/plain`.

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

api_instance = Bitbucket::CommitsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
spec = 'spec_example' # String | A commit SHA (e.g. `3a8b42`) or a commit range using double dot notation (e.g. `3a8b42..9ff173`). 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  context: 56, # Integer | Generate diffs with <n> lines of context instead of the usual three.
  path: 'path_example', # String | Limit the diff to a particular file (this parameter can be repeated for multiple paths).
  ignore_whitespace: true, # Boolean | Generate diffs that ignore whitespace.
  binary: true, # Boolean | Generate diffs that include binary files, true if omitted.
  renames: true, # Boolean | Whether to perform rename detection, true if omitted.
  merge: true, # Boolean | This parameter is deprecated and will be removed at the end of 2022. The 'topic' parameter should be used instead. The 'merge' and 'topic' parameters cannot be both used at the same time.  If true, the source commit is merged into the destination commit, and then a diff from the destination to the merge result is returned. If false, a simple 'two dot' diff between the source and destination is returned. True if omitted.
  topic: true # Boolean | If true, returns 2-way 'three-dot' diff. This is a diff between the source commit and the merge base of the source commit and the destination commit. If false, a simple 'two dot' diff between the source and destination is returned.
}

begin
  # Compare two commits
  api_instance.repositories_workspace_repo_slug_diff_spec_get(repo_slug, spec, workspace, opts)
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_diff_spec_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_diff_spec_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_diff_spec_get_with_http_info(repo_slug, spec, workspace, opts)

```ruby
begin
  # Compare two commits
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_diff_spec_get_with_http_info(repo_slug, spec, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_diff_spec_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **spec** | **String** | A commit SHA (e.g. &#x60;3a8b42&#x60;) or a commit range using double dot notation (e.g. &#x60;3a8b42..9ff173&#x60;).  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **context** | **Integer** | Generate diffs with &lt;n&gt; lines of context instead of the usual three. | [optional] |
| **path** | **String** | Limit the diff to a particular file (this parameter can be repeated for multiple paths). | [optional] |
| **ignore_whitespace** | **Boolean** | Generate diffs that ignore whitespace. | [optional] |
| **binary** | **Boolean** | Generate diffs that include binary files, true if omitted. | [optional] |
| **renames** | **Boolean** | Whether to perform rename detection, true if omitted. | [optional] |
| **merge** | **Boolean** | This parameter is deprecated and will be removed at the end of 2022. The &#39;topic&#39; parameter should be used instead. The &#39;merge&#39; and &#39;topic&#39; parameters cannot be both used at the same time.  If true, the source commit is merged into the destination commit, and then a diff from the destination to the merge result is returned. If false, a simple &#39;two dot&#39; diff between the source and destination is returned. True if omitted. | [optional] |
| **topic** | **Boolean** | If true, returns 2-way &#39;three-dot&#39; diff. This is a diff between the source commit and the merge base of the source commit and the destination commit. If false, a simple &#39;two dot&#39; diff between the source and destination is returned. | [optional] |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_diffstat_spec_get

> <PaginatedDiffstats> repositories_workspace_repo_slug_diffstat_spec_get(repo_slug, spec, workspace, opts)

Compare two commit diff stats

Produces a response in JSON format with a record for every path modified, including information on the type of the change and the number of lines added and removed.  #### Single commit spec  If the `spec` argument to this API is a single commit, the diff is produced against the first parent of the specified commit.  #### Two commit spec  Two commits separated by `..` may be provided as the `spec`, e.g., `3a8b42..9ff173`. When two commits are provided and the `topic` query parameter is true or absent, this API produces a 2-way three dot diff. This is the diff between source commit and the merge base of the source commit and the destination commit. When the `topic` query param is false, a simple git-style diff is produced.  The two commits are interpreted as follows:  * First commit: the commit containing the changes we wish to preview * Second commit: the commit representing the state to which we want to   compare the first commit * **Note**: This is the opposite of the order used in `git diff`.  #### Sample output ``` curl https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/diffstat/d222fa2..e174964 {     \"pagelen\": 500,     \"values\": [         {             \"type\": \"diffstat\",             \"status\": \"modified\",             \"lines_removed\": 1,             \"lines_added\": 2,             \"old\": {                 \"path\": \"setup.py\",                 \"escaped_path\": \"setup.py\",                 \"type\": \"commit_file\",                 \"links\": {                     \"self\": {                         \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/src/e1749643d655d7c7014001a6c0f58abaf42ad850/setup.py\"                     }                 }             },             \"new\": {                 \"path\": \"setup.py\",                 \"escaped_path\": \"setup.py\",                 \"type\": \"commit_file\",                 \"links\": {                     \"self\": {                         \"href\": \"https://api.bitbucket.org/2.0/repositories/bitbucket/geordi/src/d222fa235229c55dad20b190b0b571adf737d5a6/setup.py\"                     }                 }             }         }     ],     \"page\": 1,     \"size\": 1 } ```

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

api_instance = Bitbucket::CommitsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
spec = 'spec_example' # String | A commit SHA (e.g. `3a8b42`) or a commit range using double dot notation (e.g. `3a8b42..9ff173`). 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 
opts = {
  ignore_whitespace: true, # Boolean | Generate diffs that ignore whitespace
  merge: true, # Boolean | This parameter is deprecated and will be removed at the end of 2022. The 'topic' parameter should be used instead. The 'merge' and 'topic' parameters cannot be both used at the same time.  If true, the source commit is merged into the destination commit, and then a diffstat from the destination to the merge result is returned. If false, a simple 'two dot' diffstat between the source and destination is returned. True if omitted.
  path: 'path_example', # String | Limit the diffstat to a particular file (this parameter can be repeated for multiple paths).
  renames: true, # Boolean | Whether to perform rename detection, true if omitted.
  topic: true # Boolean | If true, returns 2-way 'three-dot' diff. This is a diff between the source commit and the merge base of the source commit and the destination commit. If false, a simple 'two dot' diff between the source and destination is returned.
}

begin
  # Compare two commit diff stats
  result = api_instance.repositories_workspace_repo_slug_diffstat_spec_get(repo_slug, spec, workspace, opts)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_diffstat_spec_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_diffstat_spec_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDiffstats>, Integer, Hash)> repositories_workspace_repo_slug_diffstat_spec_get_with_http_info(repo_slug, spec, workspace, opts)

```ruby
begin
  # Compare two commit diff stats
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_diffstat_spec_get_with_http_info(repo_slug, spec, workspace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDiffstats>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_diffstat_spec_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **spec** | **String** | A commit SHA (e.g. &#x60;3a8b42&#x60;) or a commit range using double dot notation (e.g. &#x60;3a8b42..9ff173&#x60;).  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |
| **ignore_whitespace** | **Boolean** | Generate diffs that ignore whitespace | [optional] |
| **merge** | **Boolean** | This parameter is deprecated and will be removed at the end of 2022. The &#39;topic&#39; parameter should be used instead. The &#39;merge&#39; and &#39;topic&#39; parameters cannot be both used at the same time.  If true, the source commit is merged into the destination commit, and then a diffstat from the destination to the merge result is returned. If false, a simple &#39;two dot&#39; diffstat between the source and destination is returned. True if omitted. | [optional] |
| **path** | **String** | Limit the diffstat to a particular file (this parameter can be repeated for multiple paths). | [optional] |
| **renames** | **Boolean** | Whether to perform rename detection, true if omitted. | [optional] |
| **topic** | **Boolean** | If true, returns 2-way &#39;three-dot&#39; diff. This is a diff between the source commit and the merge base of the source commit and the destination commit. If false, a simple &#39;two dot&#39; diff between the source and destination is returned. | [optional] |

### Return type

[**PaginatedDiffstats**](PaginatedDiffstats.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_merge_base_revspec_get

> <Commit> repositories_workspace_repo_slug_merge_base_revspec_get(repo_slug, revspec, workspace)

Get the common ancestor between two commits

Returns the best common ancestor between two commits, specified in a revspec of 2 commits (e.g. 3a8b42..9ff173).  If more than one best common ancestor exists, only one will be returned. It is unspecified which will be returned.

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

api_instance = Bitbucket::CommitsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
revspec = 'revspec_example' # String | A commit range using double dot notation (e.g. `3a8b42..9ff173`). 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get the common ancestor between two commits
  result = api_instance.repositories_workspace_repo_slug_merge_base_revspec_get(repo_slug, revspec, workspace)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_merge_base_revspec_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_merge_base_revspec_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Commit>, Integer, Hash)> repositories_workspace_repo_slug_merge_base_revspec_get_with_http_info(repo_slug, revspec, workspace)

```ruby
begin
  # Get the common ancestor between two commits
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_merge_base_revspec_get_with_http_info(repo_slug, revspec, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Commit>
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_merge_base_revspec_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **revspec** | **String** | A commit range using double dot notation (e.g. &#x60;3a8b42..9ff173&#x60;).  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

[**Commit**](Commit.md)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_patch_spec_get

> repositories_workspace_repo_slug_patch_spec_get(repo_slug, spec, workspace)

Get a patch for two commits

Produces a raw patch for a single commit (diffed against its first parent), or a patch-series for a revspec of 2 commits (e.g. `3a8b42..9ff173` where the first commit represents the source and the second commit the destination).  In case of the latter (diffing a revspec), a patch series is returned for the commits on the source branch (`3a8b42` and its ancestors in our example).  While similar to diffs, patches:  * Have a commit header (username, commit message, etc) * Do not support the `path=foo/bar.py` query parameter  The raw patch is returned as-is, in whatever encoding the files in the repository use. It is not decoded into unicode. As such, the content-type is `text/plain`.

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

api_instance = Bitbucket::CommitsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
spec = 'spec_example' # String | A commit SHA (e.g. `3a8b42`) or a commit range using double dot notation (e.g. `3a8b42..9ff173`). 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a patch for two commits
  api_instance.repositories_workspace_repo_slug_patch_spec_get(repo_slug, spec, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_patch_spec_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_patch_spec_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_patch_spec_get_with_http_info(repo_slug, spec, workspace)

```ruby
begin
  # Get a patch for two commits
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_patch_spec_get_with_http_info(repo_slug, spec, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling CommitsApi->repositories_workspace_repo_slug_patch_spec_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **spec** | **String** | A commit SHA (e.g. &#x60;3a8b42&#x60;) or a commit range using double dot notation (e.g. &#x60;3a8b42..9ff173&#x60;).  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

