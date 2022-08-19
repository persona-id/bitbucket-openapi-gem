# Bitbucket::DownloadsApi

All URIs are relative to *https://api.bitbucket.org/2.0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**repositories_workspace_repo_slug_downloads_filename_delete**](DownloadsApi.md#repositories_workspace_repo_slug_downloads_filename_delete) | **DELETE** /repositories/{workspace}/{repo_slug}/downloads/{filename} | Delete a download artifact |
| [**repositories_workspace_repo_slug_downloads_filename_get**](DownloadsApi.md#repositories_workspace_repo_slug_downloads_filename_get) | **GET** /repositories/{workspace}/{repo_slug}/downloads/{filename} | Get a download artifact link |
| [**repositories_workspace_repo_slug_downloads_get**](DownloadsApi.md#repositories_workspace_repo_slug_downloads_get) | **GET** /repositories/{workspace}/{repo_slug}/downloads | List download artifacts |
| [**repositories_workspace_repo_slug_downloads_post**](DownloadsApi.md#repositories_workspace_repo_slug_downloads_post) | **POST** /repositories/{workspace}/{repo_slug}/downloads | Upload a download artifact |


## repositories_workspace_repo_slug_downloads_filename_delete

> repositories_workspace_repo_slug_downloads_filename_delete(filename, repo_slug, workspace)

Delete a download artifact

Deletes the specified download artifact from the repository.

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

api_instance = Bitbucket::DownloadsApi.new
filename = 'filename_example' # String | Name of the file.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Delete a download artifact
  api_instance.repositories_workspace_repo_slug_downloads_filename_delete(filename, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling DownloadsApi->repositories_workspace_repo_slug_downloads_filename_delete: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_downloads_filename_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_downloads_filename_delete_with_http_info(filename, repo_slug, workspace)

```ruby
begin
  # Delete a download artifact
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_downloads_filename_delete_with_http_info(filename, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling DownloadsApi->repositories_workspace_repo_slug_downloads_filename_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** | Name of the file. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_downloads_filename_get

> repositories_workspace_repo_slug_downloads_filename_get(filename, repo_slug, workspace)

Get a download artifact link

Return a redirect to the contents of a download artifact.  This endpoint returns the actual file contents and not the artifact's metadata.      $ curl -s -L https://api.bitbucket.org/2.0/repositories/evzijst/git-tests/downloads/hello.txt     Hello World

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

api_instance = Bitbucket::DownloadsApi.new
filename = 'filename_example' # String | Name of the file.
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Get a download artifact link
  api_instance.repositories_workspace_repo_slug_downloads_filename_get(filename, repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling DownloadsApi->repositories_workspace_repo_slug_downloads_filename_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_downloads_filename_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_downloads_filename_get_with_http_info(filename, repo_slug, workspace)

```ruby
begin
  # Get a download artifact link
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_downloads_filename_get_with_http_info(filename, repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling DownloadsApi->repositories_workspace_repo_slug_downloads_filename_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** | Name of the file. |  |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_downloads_get

> repositories_workspace_repo_slug_downloads_get(repo_slug, workspace)

List download artifacts

Returns a list of download links associated with the repository.

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

api_instance = Bitbucket::DownloadsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # List download artifacts
  api_instance.repositories_workspace_repo_slug_downloads_get(repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling DownloadsApi->repositories_workspace_repo_slug_downloads_get: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_downloads_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_downloads_get_with_http_info(repo_slug, workspace)

```ruby
begin
  # List download artifacts
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_downloads_get_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling DownloadsApi->repositories_workspace_repo_slug_downloads_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## repositories_workspace_repo_slug_downloads_post

> repositories_workspace_repo_slug_downloads_post(repo_slug, workspace)

Upload a download artifact

Upload new download artifacts.  To upload files, perform a `multipart/form-data` POST containing one or more `files` fields:      $ echo Hello World > hello.txt     $ curl -s -u evzijst -X POST https://api.bitbucket.org/2.0/repositories/evzijst/git-tests/downloads -F files=@hello.txt  When a file is uploaded with the same name as an existing artifact, then the existing file will be replaced.

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

api_instance = Bitbucket::DownloadsApi.new
repo_slug = 'repo_slug_example' # String | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: `{repository UUID}`. 
workspace = 'workspace_example' # String | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: `{workspace UUID}`. 

begin
  # Upload a download artifact
  api_instance.repositories_workspace_repo_slug_downloads_post(repo_slug, workspace)
rescue Bitbucket::ApiError => e
  puts "Error when calling DownloadsApi->repositories_workspace_repo_slug_downloads_post: #{e}"
end
```

#### Using the repositories_workspace_repo_slug_downloads_post_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> repositories_workspace_repo_slug_downloads_post_with_http_info(repo_slug, workspace)

```ruby
begin
  # Upload a download artifact
  data, status_code, headers = api_instance.repositories_workspace_repo_slug_downloads_post_with_http_info(repo_slug, workspace)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Bitbucket::ApiError => e
  puts "Error when calling DownloadsApi->repositories_workspace_repo_slug_downloads_post_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repo_slug** | **String** | This can either be the repository slug or the UUID of the repository, surrounded by curly-braces, for example: &#x60;{repository UUID}&#x60;.  |  |
| **workspace** | **String** | This can either be the workspace ID (slug) or the workspace UUID surrounded by curly-braces, for example: &#x60;{workspace UUID}&#x60;.  |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key), [basic](../README.md#basic), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

