# Bitbucket::ReportsApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**bulk_create_or_update_annotations**](ReportsApi.md#bulk_create_or_update_annotations) | **POST** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations | Bulk create or update annotations |
| [**create_or_update_annotation**](ReportsApi.md#create_or_update_annotation) | **PUT** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations/{annotationId} | Create or update an annotation |
| [**create_or_update_report**](ReportsApi.md#create_or_update_report) | **PUT** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId} | Create or update a report |
| [**delete_annotation**](ReportsApi.md#delete_annotation) | **DELETE** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations/{annotationId} | Delete an annotation |
| [**delete_report**](ReportsApi.md#delete_report) | **DELETE** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId} | Delete a report |
| [**get_annotation**](ReportsApi.md#get_annotation) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations/{annotationId} | Get an annotation |
| [**get_annotations_for_report**](ReportsApi.md#get_annotations_for_report) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId}/annotations | List annotations |
| [**get_report**](ReportsApi.md#get_report) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports/{reportId} | Get a report |
| [**get_reports_for_commit**](ReportsApi.md#get_reports_for_commit) | **GET** /repositories/{workspace}/{repo_slug}/commit/{commit}/reports | List reports |


## bulk_create_or_update_annotations

> <Array<ReportAnnotation>> bulk_create_or_update_annotations(workspace, repo_slug, commit, report_id, report_annotation)

Bulk create or update annotations

Bulk upload of annotations. Annotations are individual findings that have been identified as part of a report, for example, a line of code that represents a vulnerability. These annotations can be attached to a specific file and even a specific line in that file, however, that is optional. Annotations are not mandatory and a report can contain up to 1000 annotations.  Add the annotations you want to upload as objects in a JSON array and make sure each annotation has the external_id field set to a unique value. If you want to use an existing id from your own system, we recommend prefixing it with your system's name to avoid collisions, for example, mySystem-annotation001. The external id can later be used to identify the report as an alternative to the generated [UUID](https://developer.atlassian.com/bitbucket/api/2/reference/meta/uri-uuid#uuid). You can upload up to 100 annotations per POST request.  ### Sample cURL request: ``` curl --location 'https://api.bitbucket.org/2.0/repositories/<username>/<reposity-name>/commit/<commit-hash>/reports/mysystem-001/annotations' \\ --header 'Content-Type: application/json' \\ --data-raw '[   {         \"external_id\": \"mysystem-annotation001\",         \"title\": \"Security scan report\",         \"annotation_type\": \"VULNERABILITY\",         \"summary\": \"This line represents a security threat.\",         \"severity\": \"HIGH\",       \"path\": \"my-service/src/main/java/com/myCompany/mysystem/logic/Main.java\",         \"line\": 42   },   {         \"external_id\": \"mySystem-annotation002\",         \"title\": \"Bug report\",         \"annotation_type\": \"BUG\",         \"result\": \"FAILED\",         \"summary\": \"This line might introduce a bug.\",         \"severity\": \"MEDIUM\",       \"path\": \"my-service/src/main/java/com/myCompany/mysystem/logic/Helper.java\",         \"line\": 13   } ]' ```  ### Possible field values: annotation_type: VULNERABILITY, CODE_SMELL, BUG result: PASSED, FAILED, IGNORED, SKIPPED severity: HIGH, MEDIUM, LOW, CRITICAL  Please refer to the [Code Insights documentation](https://confluence.atlassian.com/bitbucket/code-insights-994316785.html) for more information. 

### Examples

```ruby
require 'time'
require 'bitbucket'

api_instance = Bitbucket::ReportsApi.new
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
  puts "Error when calling ReportsApi->bulk_create_or_update_annotations: #{e}"
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
  puts "Error when calling ReportsApi->bulk_create_or_update_annotations_with_http_info: #{e}"
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

api_instance = Bitbucket::ReportsApi.new
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
  puts "Error when calling ReportsApi->create_or_update_annotation: #{e}"
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
  puts "Error when calling ReportsApi->create_or_update_annotation_with_http_info: #{e}"
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

api_instance = Bitbucket::ReportsApi.new
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
  puts "Error when calling ReportsApi->create_or_update_report: #{e}"
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
  puts "Error when calling ReportsApi->create_or_update_report_with_http_info: #{e}"
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

api_instance = Bitbucket::ReportsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the annotation belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the annotation.
annotation_id = 'annotation_id_example' # String | Either the uuid or external-id of the annotation.

begin
  # Delete an annotation
  api_instance.delete_annotation(workspace, repo_slug, commit, report_id, annotation_id)
rescue Bitbucket::ApiError => e
  puts "Error when calling ReportsApi->delete_annotation: #{e}"
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
  puts "Error when calling ReportsApi->delete_annotation_with_http_info: #{e}"
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

api_instance = Bitbucket::ReportsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the report belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the report.

begin
  # Delete a report
  api_instance.delete_report(workspace, repo_slug, commit, report_id)
rescue Bitbucket::ApiError => e
  puts "Error when calling ReportsApi->delete_report: #{e}"
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
  puts "Error when calling ReportsApi->delete_report_with_http_info: #{e}"
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

api_instance = Bitbucket::ReportsApi.new
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
  puts "Error when calling ReportsApi->get_annotation: #{e}"
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
  puts "Error when calling ReportsApi->get_annotation_with_http_info: #{e}"
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

api_instance = Bitbucket::ReportsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit for which to retrieve reports.
report_id = 'report_id_example' # String | Uuid or external-if of the report for which to get annotations for.

begin
  # List annotations
  result = api_instance.get_annotations_for_report(workspace, repo_slug, commit, report_id)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling ReportsApi->get_annotations_for_report: #{e}"
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
  puts "Error when calling ReportsApi->get_annotations_for_report_with_http_info: #{e}"
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

api_instance = Bitbucket::ReportsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit the report belongs to.
report_id = 'report_id_example' # String | Either the uuid or external-id of the report.

begin
  # Get a report
  result = api_instance.get_report(workspace, repo_slug, commit, report_id)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling ReportsApi->get_report: #{e}"
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
  puts "Error when calling ReportsApi->get_report_with_http_info: #{e}"
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

api_instance = Bitbucket::ReportsApi.new
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example `{workspace UUID}`.
repo_slug = 'repo_slug_example' # String | The repository.
commit = 'commit_example' # String | The commit for which to retrieve reports.

begin
  # List reports
  result = api_instance.get_reports_for_commit(workspace, repo_slug, commit)
  p result
rescue Bitbucket::ApiError => e
  puts "Error when calling ReportsApi->get_reports_for_commit: #{e}"
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
  puts "Error when calling ReportsApi->get_reports_for_commit_with_http_info: #{e}"
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

